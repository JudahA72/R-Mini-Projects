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

# 2a. Proportion barplot of clarity
library(ggplot2)
data(diamonds)
diamonds_clarity <- as.data.frame(table(diamonds$clarity))
diamonds_clarity$prop <- diamonds_clarity$Freq / sum(diamonds_clarity$Freq)
ggplot(diamonds_clarity, aes(x=Var1, y=prop)) +
  geom_bar(stat="identity", fill="grey40") +
  labs(x="clarity", y="prop", title="Proportion of diamonds by clarity")

# 2b. Count barplot of clarity colored by clarity
ggplot(diamonds, aes(x=clarity, fill=clarity)) +
  geom_bar() +
  labs(x="clarity", y="count", title="Count of diamonds by clarity")

# 2c. Stacked barplot of clarity by cut
ggplot(diamonds, aes(x=clarity, fill=cut)) +
  geom_bar() +
  labs(x="clarity", y="count", title="Stacked barplot of clarity by cut")

# 2d. Proportional stacked barplot of clarity by cut
ggplot(diamonds, aes(x=clarity, fill=cut)) +
  geom_bar(position="fill") +
  labs(x="clarity", y="count", title="Proportional stacked barplot of clarity by cut")

# 2e. Boxplot of price by clarity
ggplot(diamonds, aes(x=clarity, y=price)) +
  geom_boxplot() +
  labs(x="clarity", y="price", title="Boxplot of price by clarity")


