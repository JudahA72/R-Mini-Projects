# Name: Assignment12.R
# Description: This script answers basic R syntax and operations from Assignment 12.
# All work is completed by Judah Alter.

plants <- read.table("Datasets:UseCase/plants.txt", header=TRUE)
plants$Condition <- as.factor(plants$Condition)  # Convert to factor

# Fit the model
model <- lm(Yield ~ Condition, data=plants)
print(summary(model))

# Display the ANOVA table
print(anova(model))

# Tukey's pairwise comparisons
library(multcomp)
tukey <- glht(model, linfct = mcp(Condition = "Tukey"))
summary(tukey)