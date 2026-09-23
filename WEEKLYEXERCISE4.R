# 4
library(usethis)
git_default_branch()
# [1] "main"

# 7 
library(readr)
library(tidyverse)
library(ggplot2)

read.csv("Olympics.csv")

# 7a
olympics %>% filter(year == 1992) %>% select(country,athletes) %>% arrange(desc(athletes))

# 7b
olympics %>%
  filter(country %in% c("United States", "France", "Germany", "Russia", "China")) %>%
  ggplot(aes(x = year, y = gold, color = country)) + geom_line() + geom_point()
