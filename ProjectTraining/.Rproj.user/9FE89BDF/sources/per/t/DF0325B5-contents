library(downloader) 
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/mice_pheno.csv"
filename <- basename(url)
download(url, destfile=filename)
dat <- read.csv(filename) 

library(dplyr)
install.packages("rafalib")
library(rafalib)
# We will remove the lines that contain missing values:
dat <- na.omit(dat)
head(dat)
levels(dat[,1])
levels(dat[,2])
x <- dat %>% filter(Sex == "M" & Diet == "chow") %>%
          select(Bodyweight) %>% unlist
mean(x)

# popsd: tra ve do lech chuan tong the population standard deviation, 
# sd() tra ve do lech chuan, uoc luong khong chech cua phuong sai tong the va = var*(n-1)/n

popsd(x)

set.seed(1)
X <- sample(x,25)
mean(X)

y <- dat %>% filter(Sex == "M" & Diet == "hf") %>%
  select(Bodyweight) %>% unlist
mean(y)
popsd(y)

set.seed(1)
Y <- sample(y,25)
mean(Y)

abs(mean(y)-mean(x)-(mean(Y)-mean(X)))

# FEMALES
x <- dat %>% filter(Sex == "F" & Diet == "chow") %>%
  select(Bodyweight) %>% unlist

set.seed(2)
X <- sample(x,25)

y <- dat %>% filter(Sex == "F" & Diet == "hf") %>%
  select(Bodyweight) %>% unlist

set.seed(2)
Y <- sample(y,25)

abs(mean(y)-mean(x)-(mean(Y)-mean(X)))


# --------------------------------------------------------------
# Exercise 
# If a list of numbers has a distribution that is well approximated by the normal distribution,
# what proportion of these numbers are within one(/two/three) standard deviation away from the list's average?
pnorm(3)-pnorm(-3)

y <- dat %>% filter(Sex == "M" & Diet == "chow") %>%
  select(Bodyweight) %>% unlist

hist(y)
qqnorm(y);abline(0,1)
plot(density(y),add = T)
bodyweigth <- seq(min(y),max(y),0.1)
plot(bodyweigth, pnorm(bodyweigth, mean(y), popsd(y)))
p <- seq(0.01,0.99,0.01)
plot(p, qnorm(p))
length(y)




z <- ( y - mean(y) ) / popsd(y)
z
mean( abs(z) <=1 )
mean( abs(z) <=2 )
mean( abs(z) <=2 )

m <- mean(y)
s <- popsd(y)
pnorm(m+2*s,m,s)- pnorm(m-2*s,m,s)
pnorm(m+3*s,m,s)- pnorm(m-3*s,m,s)

mypar(2,2)
y <- filter(dat, Sex=="M" & Diet=="chow") %>% select(Bodyweight) %>% unlist
z <- ( y - mean(y) ) / popsd(y)
qqnorm(z);abline(0,1)
y <- filter(dat, Sex=="F" & Diet=="chow") %>% select(Bodyweight) %>% unlist
z <- ( y - mean(y) ) / popsd(y)
qqnorm(z);abline(0,1)
y <- filter(dat, Sex=="M" & Diet=="hf") %>% select(Bodyweight) %>% unlist
z <- ( y - mean(y) ) / popsd(y)
qqnorm(z);abline(0,1)
y <- filter(dat, Sex=="F" & Diet=="hf") %>% select(Bodyweight) %>% unlist
z <- ( y - mean(y) ) / popsd(y)
qqnorm(z);abline(0,1)

# ---------------------------------
y <- filter(dat, Sex=="M" & Diet=="chow") %>% select(Bodyweight) %>% unlist
set.seed(1)
avgs <- replicate(10000, mean( sample(y, 25)))
mypar(1,2)
hist(avgs)
qqnorm(avgs)
qqline(avgs)
mean(avgs)
popsd(avgs)



