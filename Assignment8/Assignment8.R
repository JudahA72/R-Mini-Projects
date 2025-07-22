# Name: Assignment8.R
# Description: This script answers basic R syntax and operations from Assignment 8.
# All work is completed by Judah Alter.

# 1. Read data and fit multiple linear regression
data <- read.table("Datasets:UseCase/properties.txt")
colnames(data) <- c("RentalRate", "Age", "TaxRate", "VacancyRate", "Cost")
q <- lm(RentalRate ~ Age + TaxRate + VacancyRate + Cost, data=data)

# 2. Print summary of q
print(summary(q))

# 3. Print 99% confidence intervals for regression parameters
print(confint(q, level=0.99))

# 4. Print coefficient estimates
print(coef(q))

# 5. Point prediction for mean rental rate
newdata <- data.frame(Age=5, TaxRate=4.1, VacancyRate=0.16, Cost=100000)
print(predict(q, newdata))

# 6. 95% confidence interval for mean rental rate prediction
print(predict(q, newdata, interval="confidence", level=0.95))

# 7. 95% prediction interval for one property
print(predict(q, newdata, interval="prediction", level=0.95))

# 8. Calculate the mean of the residuals
residuals_q <- residuals(q)
print(mean(residuals_q))

# 9. Plot predicted values vs residuals
plot(predict(q), residuals_q, xlab="Predicted Values", ylab="Residuals", main="Residuals vs Predicted Values")
abline(h=0, col="red")

# 10. Histogram of the residuals
hist(residuals_q, col="grey", main="Histogram of Residuals", xlab="Residuals")

