# Name: Assignment7.R
# Description: This script answers basic R syntax and operations from Assignment 7.
# All work is completed by Judah Alter.

# 1. Plot log(x) (red) and sqrt(x) (green) on [1,5]
x = seq(1, 5, length.out=100)
plot(x, log(x), type="l", col="red", ylab="f1", xlab="x")
lines(x, sqrt(x), col="green")

