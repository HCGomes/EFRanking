# EFRanking (Ensemble Feature Ranking)
O pacote R EFRanking, inclui o algoritmo de avaliação e seleção de características (Feature Selection) EEFR.

Apõs a instalação, o EFRanking pode ser utilizado por aplicações de mineração de dados, library(EFRanking6)
A documentação está acessivel pela instrução R, help(package="EFRanking6")
O pacote R inclui um exemplo de demostração, executável pela instrução R, example("ensemble.features.ranking"). O exemplo utiliza um dataset artificial incluido no pacote R

A função de seleção de características é executável pela instrução R, ensemble.feature.ranking(dataset), 
Como entrada, recebe um conjunto de dados (dataset) em formato data.frame com atributos numéricos e classe binária e um conjunto doutros parâmetros opcionais
Como saida, devolve uma lista com o nome das características ordenadas por ordem inversa de relevância a qual inclui um conjunto de parâmetros opcionais
A lista devolvida, pode incluir todas as caracteísticas avaliadas ou um subconjunto com as melhores. 
