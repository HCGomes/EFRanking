#' @title Ensemble Features Ranking
#'
#' @description Takes a dataset and outputs a features name list sorted by relevancy
#' @param dataset dataset with numerial features and factor class
#' @param nRows number for each sample run, 10 default value
#' @param nTries number of runs, ncol(dataset) / 2, default value
#' @param cutOff k = n (selects n features); k=0 (selects all features); k=-1 (automatic selecion) default
#' @param methods list for relevancy metric calculation
#' @import FSelector
#' @export
#' @return Ranked features list sorted by relevancy
#' @examples \dontrun{
#' }
#' #' data(allDataProbe)
#' set.seed(134)
#' methods <- list(gain.ratio,chi.squared)
#' features <- ensemble.features.ranking(allDataProbe, nRows=nrow(allDataProbe)/2, nTries=20, cutOff= -1, methods=methods)
#' print(features)
#'

ensemble.features.ranking <- function(dataset, ... ){
    argList<-list(...)
    if(is.null(argList$methods) ){
        methods<-list(gain.ratio,symmetrical.uncertainty,chi.squared, random.forest.importance)
    }else{
        methods<-argList$methods
    }
    if(is.null(argList$cutOff)){
        cutOff <- -1
    }else{
        cutOff<-argList$cutOff
    }
    if(is.null(argList$nRows)){
        nRows <- nrow(dataset)/2
    }else{
        nRows<-argList$nRows
    }
    if(is.null(argList$nTries)){
        nTries <- 10
    }else{
        nTries<-argList$nTries
    }
    randomRowsN<-getNRandomsRowsSubsets(nrow(dataset),nRows,nTries)
    n<-ncol(dataset)
    weightPerGroup<-c(n:1)
    weightPerGroup<-floor(weightPerGroup*sqrt(weightPerGroup)/sqrt(n)) #Hcg, add no linearity
    weightsList<-{}
    weightsEns<- lapply(methods, function(filter){calculateWeightsSampling(dataset, randomRowsN, filter, c(1:ncol(dataset)))})

    for( i in 1:length(methods)){
        weightsList<-rbind(weightsList,as.data.frame(weightsEns[i]))
    }
    RankEns<-calculateRankSampling(dataset, weightsList,
                                   colnames(dataset[,!(colnames(dataset) %in% c('class'))]),
                                   weightPerGroup,cutOff)
    return(RankEns)
}


