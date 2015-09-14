library(ggplot2)
library(dplyr) # not actually used on 2015-09-14

leeds <- read.csv("leeds_accidents.csv")

str(leeds)

table(leeds$vehicle_type)
table(leeds$casualty_sex)

## Shape of age distribution - single numerical variable defaults to histogram
qplot(casualty_age, data=leeds)

## Density plot of same
qplot(casualty_age, data=leeds, geom="density")

## 
mean(leeds$casualty_age)
median(leeds$casualty_age)
