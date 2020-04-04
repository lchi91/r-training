install.packages("gapminder")

library(dplyr)
library(gapminder)
data(gapminder)
head(gapminder)

gapminder$country

x <- filter(gapminder, year == 1952) %>% 
  select(lifeExp) %>% unlist
exm <- gapminder %>% filter(year == 1952)  %>%
  select(country,lifeExp)

head(x)
hist(x)
mean(x<=40)
mean(x<=60)-mean(x<=40)

plot(ecdf(x))

prop = function(q) {
  mean(x <= q)
}
qs = seq(from = min(x), to = max(x), length(20))
props = sapply(qs, prop)

# or write in one line
props = sapply(qs, function(q) mean(x<=q))

plot(props)

