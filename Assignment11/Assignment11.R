# Name: Assignment11.R
# Description: This script answers basic R syntax and operations from Assignment 11.
# All work is completed by Judah Alter.

library(ggplot2)
data(mpg) # Load the mpg dataset

# 1a. Scatterplot of hwy vs cty
ggplot(mpg, aes(x=hwy, y=cty)) +
  geom_point() +
  labs(title="Scatterplot of hwy vs cty")

# 1b. Scatterplot colored by manufacturer
ggplot(mpg, aes(x=hwy, y=cty, color=manufacturer)) +
  geom_point() +
  labs(title="Scatterplot of hwy vs cty colored by manufacturer")

# 1c. Faceted scatterplot by manufacturer
ggplot(mpg, aes(x=hwy, y=cty)) +
  geom_point() +
  facet_wrap(~ manufacturer) +
  labs(title="Faceted scatterplot of hwy vs cty by manufacturer")

# 1e. Scatterplot colored by manufacturer with a smooth regression line
print(
  ggplot(mpg, aes(x=hwy, y=cty, color=manufacturer)) +
    geom_point() +
    geom_smooth(method="lm", se=TRUE, color="blue", inherit.aes=FALSE, aes(x=hwy, y=cty)) +
    labs(title="Scatterplot of hwy vs cty with regression line by manufacturer")
)
