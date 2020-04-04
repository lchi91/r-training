head(InsectSprays)
a <- InsectSprays 

count <- a[,1]
spray <- a[,2]

boxplot(split(count,spray))

boxplot(count ~ spray)


library(dplyr)
install.packages("UsingR")
data(nym.2002, package ="UsingR")

head(nym.2002)
names(nym.2002)

gender <- nym.2002[,2]
time <- nym.2002[,5]



data1 <- filter(nym.2002,gender == "Female") %>% select(time) %>% unlist
data2 <- filter(nym.2002,gender == "Male") %>% select(time) %>% unlist

par(mfrow = c(1,3))
boxplot(time ~ gender)
hist(data1, main = "Female")
hist(data2, main = "Male")
mean(data1[,1])
mean(data2[,1])


mypar(1,3)
males <- filter(nym.2002, gender=="Male") %>% select(time) %>% unlist
females <- filter(nym.2002, gender=="Female") %>% select(time) %>% unlist
boxplot(females, males)
hist(females,xlim=c(range( nym.2002$time)))
hist(males,xlim=c(range( nym.2002$time)))
