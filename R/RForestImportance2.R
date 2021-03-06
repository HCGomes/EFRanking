#' @title RForestImportance2, random.forest.importance with importance.type=2
#'
#' @description FSelector::random.forest.importance default importance.type=2 mean decrease in node accuracy. This variante option is importance.type=2 mean decrease in node impurity
#' @param dataset as specified in FSelector::random.forest.importance
#' @return featurenames subset, ordered by its weights as specified in FSelector::random.forest.importance
#' @importFrom FSelector random.forest.importance
#' @export
#'

RForestImportance2 <- function(formula, dataset){
    return( random.forest.importance(formula, dataset, importance.type=2))
}
