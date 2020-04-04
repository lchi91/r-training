install.packages('rJava')
install.packages("xlsxjars")
install.packages("xlsx")

install.packages("xlsx", INSTALL_opts=c("--no-multiarch"))
library("xlsx")
data <- read.xlsx

# linear regression

x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

relation <- lm(y~x)
print(summary(relation))

a <- data.frame(x = 170)
result <-  predict(relation,a)

b <- data.frame(x = c(150,170))

c <- data.frame(x = 1:10)

result2 <- predict(relation,c)
print(result2)

png(file = "linearregression.png")
plot(y,x,col = "blue",main = "Height & Weight Regression",
     abline(lm(x~y)),cex = 1.3,pch = 16,xlab = "Weight in Kg",ylab = "Height in cm")
dev.off()
