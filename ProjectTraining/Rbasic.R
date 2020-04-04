install.packages("dslabs")
install.packages("dplyr")
library(dplyr)
library(dslabs)
data("murders")

# The name of the state with the maximum population is found by doing the following
murders$state[which.max(murders$population)]

# how to obtain the murder rate
murder_rate <- murders$total / murders$population * 100000

# ordering the states by murder rate, in decreasing order
murders$state[order(murder_rate, decreasing=TRUE)]

names(murders)
View(murders)

library(dslabs)
data(heights)
options(digits = 3)    # report 3 significant digits for all answers
View(heights)

# q1
avg <- mean(heights$height)
ind <- heights$height > avg & heights$sex == "Female"
sum(ind)

# If you use mean() on a logical (TRUE/FALSE) vector, 
# it returns the proportion of observations that are TRUE. % that are True
ind_female <- heights$sex == "Female"
mean(ind_female)

# q4
min_height <- min(heights$height)
min_height
ind_min <- match(min_height, heights$height)
heights$sex[ind_min]

#q5
max_height <- max(heights$height)
max_height

x <- 50:82
sum(!x %in% heights$height)

heights2 <- mutate(heights, ht_cm = height*2.54)
heights2$ht_cm[18]
mean(heights2$ht_cm)


females <- filter(heights2, heights2$sex == "Female", ht_cm )
class(females)
View(females)
nrow(females)
mean(females$ht_cm)


# q8
data(olive)
head(olive)


plot(olive$palmitic,olive$palmitoleic)
hist(olive$eicosenoic)
boxplot(palmitic~region, olive)


avg <- function(x, arithmetic = TRUE){
  n <- length(x)
  ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}
x <- c(1,2,3,4,5)
avg(x,arithmetic = FALSE)
prod(x)
