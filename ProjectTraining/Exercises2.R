dat <- read.csv("msleep_ggplot2.csv")
library(dplyr)

class(dat)

primates <- filter(dat, order == "Primates")
nrow(primates)
class(primates)

primates <- filter(dat, order == "Primates") %>% 
        select(sleep_total)
class(primates)

primates <- filter(dat, order == "Primates") %>% 
      select(sleep_total) %>% unlist
mean(primates)

primates <- filter(dat, order == "Primates")  %>%
      summarize(avg = mean(sleep_total))
print(primates)


