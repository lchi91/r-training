load("skew.RData")
dim(dat)
View(dat)
par(mfrow = c(3,3))
for (i in 1:9) {
  qqnorm(dat[,i], main = i)
}

 
# col 4 and 9: skew
hist(dat[,4]) # positive skew
hist(dat[,9])  # negative skew
