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
propCorrect <- correct / 100
cat("Proportion correct (Normal):", propCorrect, "\n")

# 1b. Repeat process 100 times for Exponential distribution
set.seed(123)
lambda <- 0.5
sigma2exp <- 4
correctexp <- 0

for (i in 1:100) {
  x <- rexp(n, rate=lambda)
  s2 <- var(x)
  lower <- 0
  upper <- ((n-1)*s2) / qchisq(0.95, df=n-1)
  if (sigma2exp >= lower && sigma2exp <= upper) {
    correctexp <- correctexp + 1
  }
}
propCorrectExp <- correctexp / 100
cat("Proportion correct (Exponential):", propCorrectExp, "\n")

# 2. Empirical power curve for t-test
set.seed(123)
n <- 20
sd <- 100
alpha <- 0.05
muvals <- seq(450, 650, by=10)
power <- numeric(length(muvals))

for (j in seq_along(muvals)) {
  mu <- muvals[j]
  reject <- 0
  for (i in 1:200) {
    x <- rnorm(n, mean=mu, sd=sd)
    pval <- t.test(x, mu=500)$p.value
    if (pval < alpha) reject <- reject + 1
  }
  power[j] <- reject / 200
}
plot(muvals, power, type="b", xlab="mu", ylab="Empirical Power", main="Empirical Power Curve")

# 3. Quartiles of sampling distribution of skewness statistic
if (!require(moments)) install.packages("moments")# A bit unsure if this is needed, but included it just in case
library(moments)
set.seed(123)
n <- 50
skewVals <- numeric(500)
for (i in 1:500) {
  x <- rnorm(n)
  skewVals[i] <- skewness(x)
}
quartiles <- quantile(skewVals, probs=c(0.25, 0.5, 0.75))
print(quartiles)