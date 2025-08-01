# Name: Assignment12.R
# Description: This script answers basic R syntax and operations from Assignment 12.
# All work is completed by Judah Alter.

# 1. Fit the model
plants <- read.table("Datasets:UseCase/plants.txt", header=TRUE)
model <- lm(Yield ~ Condition, data=plants)
summary(model)

# 2. Display the ANOVA table
anova_table <- anova(model)
print(anova_table)