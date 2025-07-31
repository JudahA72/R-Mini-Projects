# Name: Assignment11.R
# Description: This script answers basic R syntax and operations from Assignment 10.
# All work is completed by Judah Alter.


# 1a. Scatterplot of hwy vs cty using ggplot2 and mpg dataset
library(ggplot2)
data(mpg)
ggplot(mpg, aes(x=hwy, y=cty)) +
  geom_point()
