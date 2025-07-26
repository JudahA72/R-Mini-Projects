# Name: Assignment9.R
# Description: This script answers basic R syntax and operations from Assignment 9.
# All work is completed by Judah Alter.

# 1a. Repeat process 100 times for Normal(0, 2^2) distribution
set.seed(123)
n <- 20
sigma2 <- 4
correct <- 0

for (i in 1:100) {
  x <- rnorm(n, mean=0, sd=2)
  s2 <- var(x)
  lower <- 0
  upper <- ((n-1)*s2) / qchisq(0.95, df=n-1)
  if (sigma2 >= lower && sigma2 <= upper) {
    correct <- correct + 1
  }
}
prop_correct <- correct / 100
cat("Proportion correct (Normal):", prop_correct, "\n")

# 1b. Repeat process 100 times for Exponential distribution
set.seed(123)
lambda <- 0.5
sigma2_exp <- 4
correct_exp <- 0

for (i in 1:100) {
  x <- rexp(n, rate=lambda)
  s2 <- var(x)
  lower <- 0
  upper <- ((n-1)*s2) / qchisq(0.95, df=n-1)
  if (sigma2_exp >= lower && sigma2_exp <= upper) {
    correct_exp <- correct_exp + 1
  }
}
prop_correct_exp <- correct_exp / 100
cat("Proportion correct (Exponential):", prop_correct_exp, "\n")