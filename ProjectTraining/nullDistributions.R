a <- c(1:10)
sample(a,10, replace = FALSE)
sample(a,10, replace = TRUE)

install.packages("downloader")
library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
filename <- basename(url)
download(url, destfile=filename)
x <- unlist( read.csv(filename) )

set.seed(1)
n <- 1000
avg <- vector("numeric", n)
for (i in 1:n) {
  y <- sample(x,50)
  avg[i] <- mean(y)
}

# What proportion of these 1,000 averages are more than 1 gram away from the average of x ?

mean(abs(avg - mean(x))>1)
