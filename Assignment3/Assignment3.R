# Name: Assignment3.R
# Description: This script answers basic R syntax and operations from Assignment 3.
# All work is completed by Judah Alter.

# 1
# Import the presidents2.xlsx data set as a data frame 
library(readxl)
presidents2 = read_excel("presidents2.xlsx")
print(presidents2)

# 1B
# Calculate HW average
HWavg = rowMeans(presidents2[, c("HW1", "HW2", "HW3", "HW4")])

# Exam1 or Exam2 score of 0 with Final exam score
Exam1 = presidents2$Exam1
Exam2 = presidents2$Exam2
Exam1[Exam1 == 0] = presidents2$Final[Exam1 == 0]
Exam2[Exam2 == 0] = presidents2$Final[Exam2 == 0]

# Calculate weighted grade
grade = 0.20 * HWavg +
        0.25 * Exam1 +
        0.25 * Exam2 +
        0.30 * presidents2$Final

print(grade)


# 2a
interest = function(amount, rate, x) {
  # Check if amount is positive
  if (amount <= 0) {
    print("Initial Amount Must Be Positive.")
    return()
  }
#2b
  # Set rate to 0.05 if not between 0 and 1
  if (rate <= 0 || rate >= 1) {
    rate = 0.05
  }
  # Set x to 2 if less than 1.5
  if (x < 1.5) {
    x = 2
  }
  years = 0
  value = amount
  while (value < amount * x) {
    value = value * (1 + rate)
    years = years + 1
  }
  cat("Years:", years, "\n")
  return(years)
}

# 2c
interest(1000, 0.03, 3)
interest(1000, 1.6, 3)
interest(-100, 0.03, 3)
interest(1000, 0.03, 1.2)

# 3a
# Function to process a matrix as described in the problem
matrixAttempt = function(mat) {
  # (at least 2 rows and 2 columns)
  # 3b Find dimensions
  dims = dim(mat)
  cat("Dimensions (rows, cols):", dims, "\n")
  # 3c column with largest average and column with smallest std dev
  means = colMeans(mat)
  sds = apply(mat, 2, sd)
  maxmean = which.max(means)
  minsd = which.min(sds)
  result = c(mat[1, maxmean], mat[1, minsd])
  cat("First element of column with largest mean:", mat[1, maxmean], "\n")
  cat("First element of column with smallest sd:", mat[1, minsd], "\n")
  return(result)
}

# 3d function with the given matrix A
A = matrix(c(3,4,8,6,6,5,-1,7,10), nrow=3, byrow=FALSE)
print(A)
matrixAttempt(A)

