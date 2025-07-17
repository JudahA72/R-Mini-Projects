# Name: Assignment7.R
# Description: This script answers basic R syntax and operations from Assignment 7.
# All work is completed by Judah Alter.

# 1. Plot log(x) (red) and sqrt(x) (green) on [1,5]
x = seq(1, 5, length.out=100)
plot(x, log(x), type="l", col="red", ylab="f1", xlab="x")
lines(x, sqrt(x), col="green")

# 2. Scatterplot of x and y, blue mean point, red lines at y=5 and y=15
x = c(5,6,7,5,10,12,14)
y = c(4,9,2,3,4,5,20)
plot(x, y, xlab="x", ylab="y")
points(mean(x), mean(y), col="blue", pch=1)
abline(h=5, col="red")
abline(h=15, col="red")