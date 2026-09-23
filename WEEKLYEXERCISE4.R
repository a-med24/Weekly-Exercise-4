4
git_default_branch()
# [1] "main"

?usethis
# Got curious if there is a code way to do it, found out how to make a branch
# Source: https://usethis.r-lib.org/reference/pull-requests.html

usethis::pr_init(branch = "DEV")
usethis::pr_push()

library(readr)
library(tidyverse)
library(ggplot2)

olympics <- read_csv("Olympics.csv")

# 6a
total.medals <- olympics$gold + olympics$silver + olympics$bronze
olympics$total.medals <- total.medals

# 6b
olympics %>% group_by(country) %>% summarize(total_gold = sum(gold, na.rm = TRUE))

# 6c
olympics %>% group_by(year) %>% summarize(total_medals = sum(total.medals, na.rm = TRUE))