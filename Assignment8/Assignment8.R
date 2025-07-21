# Name: Assignment8.R
# Description: This script answers basic R syntax and operations from Assignment 8.
# All work is completed by Judah Alter.

# 1. Read data and fit multiple linear regression
data <- read.table("../Datasets:UseCase/properties.txt")
colnames(data) <- c("RentalRate", "Age", "TaxRate", "VacancyRate", "Cost")
q <- lm(RentalRate ~ Age + TaxRate + VacancyRate + Cost, data=data)

# 2. Print summary of q
summary(q)

# 3. Print 99% confidence intervals for regression parameters
confint(q, level=0.99)

# 4. Print coefficient estimates
coef(q)

# 5. Point prediction for mean rental rate
newdata <- data.frame(Age=5, TaxRate=4.1, VacancyRate=0.16, Cost=100000)
predict(q, newdata)

# 6. 95% confidence interval for mean rental rate prediction
predict(q, newdata, interval="confidence", level=0.95)