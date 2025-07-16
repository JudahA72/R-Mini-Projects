# Name: Assignment2.R
# Description: This script answers basic R syntax and operations from Assignment 2.
# All work is completed by Judah Alter.

# 1A
# Imported the data set as a data frame called presidents
# install.packages("readxl")(used this command on r terminal for installation)

library(readxl)
presidents = read_excel("presidents.xlsx")
print(presidents)

# 1B
# 
# HW_avg = average of HW1, HW2, HW3, HW4
HWavg = rowMeans(presidents[, c("HW1", "HW2", "HW3", "HW4")])

# Calculate weighted grade
grade = 0.20 * HWavg +
        0.25 * presidents$Exam1 +
        0.25 * presidents$Exam2 +
        0.30 * presidents$Final

print(grade)

# 1C
# vector called letter same length as number of students
letter = rep(0, length(grade))
print(letter)

# 1D
# If-else nested for loop to assign letter grades
for (i in 1:length(grade)) {
  if (grade[i] >= 98 & grade[i] < 100) {
    letter[i] = "A+"
  } else if (grade[i] >= 90 & grade[i] < 98) {
    letter[i] = "A"
  } else if (grade[i] >= 88 & grade[i] < 90) {
    letter[i] = "B+"
  } else if (grade[i] >= 80 & grade[i] < 88) {
    letter[i] = "B"
  } else if (grade[i] >= 78 & grade[i] < 80) {
    letter[i] = "C+"
  } else if (grade[i] >= 70 & grade[i] < 78) {
    letter[i] = "C"
  } else if (grade[i] >= 68 & grade[i] < 70) {
    letter[i] = "D+"
  } else if (grade[i] >= 60 & grade[i] < 68) {
    letter[i] = "D"
  } else if (grade[i] >= 0 & grade[i] < 60) {
    letter[i] = "F"
  }
}

print(letter)

# 2A
# Import body.txt as a data frame called body
body = read.table("body.txt", header = FALSE)
colnames(body) = c("Triceps", "Thigh", "Midarm", "BodyFat")
print(body)

# 2B
# Display Body Part Subjects
# Triceps < 25, Midarm in [25, 30], and BodyFat < 22
filtered = body[body$Triceps < 25 & body$Midarm >= 25 & body$Midarm <= 30 & body$BodyFat < 22, c("Triceps", "Midarm")]
print(filtered)

# 3
# $5000 in a fund that pays 3% interest every year.
# Used a while loop to determine how many years it will take to double.

amount = 5000
year = 0

while (amount < 10000) {
  amount = amount * 1.03
  year = year + 1
}

cat("Year:", year, "Amount:", round(amount, 2))



