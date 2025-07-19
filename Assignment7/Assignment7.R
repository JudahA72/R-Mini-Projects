# Name: Assignment7.R
# Description: This script answers basic R syntax and operations from Assignment 7.
# All work is completed by Judah Alter.

# Color functions are really cool and weirldy useful lol.

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

# 3a. Relative frequency histogram of Life Expectancy 
df = as.data.frame(state.x77)
hist(df$"Life Exp", probability=TRUE, col="grey", xlab="Life Expectancy", main="Histogram of Life Expectancy")


# 3b. Boxplot of Life Expectancy
df = as.data.frame(state.x77)
boxplot(df$"Life Exp", col="grey", main="Boxplot of Life Expectancy", ylab="Life Expectancy")

# 3c. Kernel density estimate of Life Expectancy
df = as.data.frame(state.x77)
plot(density(df$"Life Exp"), main="Kernel Density Estimate of Life Expectancy", xlab="Life Expectancy")

# 4a. Side-by-side boxplots of dopamine level by status
library(readxl)
schizo = read_excel("Datasets:UseCase/schizo.xlsx")
boxplot(Dopamine ~ Status, data=schizo, col="grey", main="Non-psychotic vs Psychotic", xlab="Status", ylab="Dopamine")

# 4b. Side-by-side relative frequency histograms of dopamine level by status
par(mfrow=c(1,2))
hist(schizo$Dopamine[schizo$Status == "N"], probability=TRUE, col="cyan", main="N", xlab="Dopamine", ylab="Percent of Total")
hist(schizo$Dopamine[schizo$Status == "P"], probability=TRUE, col="cyan", main="P", xlab="Dopamine", ylab="Percent of Total")
par(mfrow=c(1,1))