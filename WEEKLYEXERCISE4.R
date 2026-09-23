<<<<<<< HEAD
# 4
library(usethis)
git_default_branch()
# [1] "main"

# 7 
=======
4
git_default_branch()
# [1] "main"

?usethis
# Got curious if there is a code way to do it, found out how to make a branch
# Source: https://usethis.r-lib.org/reference/pull-requests.html

usethis::pr_init(branch = "DEV")
usethis::pr_push()

>>>>>>> DEV
library(readr)
library(tidyverse)
library(ggplot2)

<<<<<<< HEAD
read.csv("Olympics.csv")

# 7a
olympics %>% filter(year == 1992) %>% select(country,athletes) %>% arrange(desc(athletes))

# 7b
olympics %>%
  filter(country %in% c("United States", "France", "Germany", "Russia", "China")) %>%
  ggplot(aes(x = year, y = gold, color = country)) + geom_line() + geom_point()
=======
olympics <- read_csv("Olympics.csv")

# 6a
total.medals <- olympics$gold + olympics$silver + olympics$bronze
olympics$total.medals <- total.medals

# 6b
olympics %>% group_by(country) %>% summarize(total_gold = sum(gold, na.rm = TRUE))

# 6c
olympics %>% group_by(year) %>% summarize(total_medals = sum(total.medals, na.rm = TRUE))
>>>>>>> DEV
