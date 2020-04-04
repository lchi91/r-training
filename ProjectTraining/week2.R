x <- unlist(read.csv("femaleControlsPopulation.csv"))
mean(x)

set.seed(5)
y <- sample(x,5)
abs(mean(x) - mean(y))


