# EFRanking6 (Ensemble Feature Ranking)
The EFRanking6 Rpackage implements EEFR Feature Selection algorithm.

After package installation, by including library(EFRanking6) instruction on a data mining application, EFRR can be used as feature selection pre-process. EFRanking documentation is accessible by help(package="EFRanking6"). The R package includes a demo example, executable by example("ensemble.features.ranking"). The example uses an artificial dataset included in R package.

The feature selection is executable by ensemble.feature.ranking(dataset). As input, it receives a dataset in data.frame format with numeric attributes and binary class. A list of optional parameters is available as specified on the documentation. As output, it returns a list with the name of the characteristics sorted in inverse order of relevance. The returned list can include all rated characteristics or a subset of the best ones.

