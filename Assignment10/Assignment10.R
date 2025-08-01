# Name: Assignment10.R
# Description: This script answers basic R syntax and operations from Assignment 10.
# All work is completed by Judah Alter.

# 1a. Bootstrap estimate of sample 25th percentile and standard error (200 replicates)
soil <- read.table("Datasets:UseCase/soil.txt", col.names = "pH")
set.seed(123)
B <- 200
n <- nrow(soil)
q25 <- function(x) quantile(x, 0.25)
boot_q25 <- numeric(B)
for (i in 1:B) {
  boot_sample <- sample(soil$pH, n, replace=TRUE)
  boot_q25[i] <- q25(boot_sample)
}
q25_est <- mean(boot_q25)
se_q25 <- sd(boot_q25)
cat("Bootstrap estimate of 25th percentile:", q25_est, "\n")
cat("Bootstrap SE:", se_q25, "\n")

# 1b. 95% Basic and Percentile bootstrap confidence intervals
q25_orig <- q25(soil$pH)
# Percentile CI
ci_percentile <- quantile(boot_q25, c(0.025, 0.975))
# Basic CI
ci_basic <- 2*q25_orig - rev(ci_percentile)
cat("95% Percentile CI:", ci_percentile, "\n")
cat("95% Basic CI:", ci_basic, "\n")

# 2a. Bootstrap estimate of correlation between age and cost, and standard error (200 replicates)
props <- read.table("Datasets:UseCase/properties.txt")
colnames(props) <- c("RentalRate", "Age", "TaxRate", "VacancyRate", "Cost")
set.seed(123)
B <- 200
n <- nrow(props)
boot_corr <- numeric(B)
for (i in 1:B) {
  idx <- sample(n, n, replace=TRUE)
  boot_sample <- props[idx, ]
  boot_corr[i] <- cor(boot_sample$Age, boot_sample$Cost)
}
corr_est <- mean(boot_corr)
se_corr <- sd(boot_corr)
cat("Bootstrap estimate of correlation (Age, Cost):", corr_est, "\n")
cat("Bootstrap SE:", se_corr, "\n")

# 2b. 95% Basic and Percentile bootstrap confidence intervals
corr_orig <- cor(props$Age, props$Cost)
ci_percentile <- quantile(boot_corr, c(0.025, 0.975))
ci_basic <- 2*corr_orig - rev(ci_percentile)
cat("95% Percentile CI:", ci_percentile, "\n")
cat("95% Basic CI:", ci_basic, "\n")

