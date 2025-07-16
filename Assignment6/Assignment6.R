# Name: Assignment6.R
# Description: This script answers basic R syntax and operations from Assignment 6.
# All work is completed by Judah Alter.

# 1a: Levene's test for equality of variances (schizo.xlsx)
library(readxl)
library(car)
schizo <- read_excel("schizo.xlsx")
dop_n <- schizo$Dopamine[schizo$Status == "N"]
dop_p <- schizo$Dopamine[schizo$Status == "P"]
data_levene <- data.frame(Dopamine = c(dop_n, dop_p),
                          Status = factor(c(rep("N", length(dop_n)), rep("P", length(dop_p)))))
q1a <- leveneTest(Dopamine ~ Status, data = data_levene)
print(q1a)

# 1b: Two-sample t-test for difference in means, 99% CI
test1b <- t.test(dop_p, dop_n, var.equal=TRUE, conf.level=0.99)
q1b_pval <- test1b$p.value
q1b_ci <- test1b$conf.int
q1b_meandiff <- mean(dop_p) - mean(dop_n)
cat("q1b p-value:", q1b_pval, "\n")
cat("Mean difference:", q1b_meandiff, "\n")
cat("99% CI:", q1b_ci, "\n")

# F-test for equality of variances (classic)
q1a_f <- var.test(dop_p, dop_n)
cat("F-test p-value:", q1a_f$p.value, "\n")

# 2: One-sample t-test for soil pH
soil <- scan("soil.txt")
q2 <- t.test(soil, mu=6.5, alternative="less")
cat("q2 test statistic:", q2$statistic, "\n")
cat("q2 p-value:", q2$p.value, "\n")

# 3: Paired t-test for lambs before/after histamine
before <- c(0.095, 0.106, 0.082, 0.152, 0.090, 0.086, 0.137, 0.121)
after <- c(0.176, 0.142, 0.194, 0.136, 0.115, 0.084, 0.103, 0.189)
q3 <- t.test(after, before, paired=TRUE, alternative="greater")
cat("q3 p-value:", q3$p.value, "\n")

# 4a: Levene's test for soap vs control
soap <- c(76, 27, 16, 30, 26, 46, 6)
control <- c(30, 36, 66, 21, 63, 38, 35, 45)
q4a <- leveneTest(c(soap, control), factor(c(rep("soap", length(soap)), rep("control", length(control)))))
cat("q4a p-value:", q4a$`Pr(>F)`[1], "\n")

# 4b: One-sided t-test 
q4b <- t.test(soap, control, alternative="less", var.equal=TRUE)
cat("q4b test statistic:", q4b$statistic, "\n")
cat("q4b p-value:", q4b$p.value, "\n")
