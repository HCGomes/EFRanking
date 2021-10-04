# EFRanking6 (Ensemble Feature Ranking)
The EFRanking6 Rpackage implements EEFR Feature Selection algorithm.
On a data mining process, EEFR can be used as feature selection pre-process, before classification.

## Package installation from GitHub:
library("devtools")
install_github('https://github.com/HCGomes/EFRanking.git', INSTALL_opts=c("--no-multiarch"))


## EFRanking usage:
library(EFRanking6) 
features <- ensemble.feature.ranking(dataset)
dataset <- dataset[,c(features, 'class')]


The feature selection is executable by ensemble.feature.ranking(dataset, ...). 
A list of optional parameters is available, as specified on the documentation. 
As output, it returns a list with the name of the characteristics sorted in inverse order of relevance. 
The returned list can include all the sorted characteristics or a subset of the first ones.

EFRanking documentation is accessible by: help(package="EFRanking6"). 
The R package includes a demo example, executable by: example("ensemble.features.ranking"). 
The example uses an artificial dataset included in R package.


