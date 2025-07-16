
# Name: Judah Alter
# Description: This script answers basic R syntax and operations from Assignment 1.
# All work is completed by Judah Alter.

# 1A
a = c(1, 2, 3, 4)
# 1B
b = c(5,6,7,8)
print(a)
# 1C
z = a+b
print(z)
# 1D
ab = c(a, b)
print(ab)
# 1E
E = ab[-c(2,7)]
print(E)

# 2A
A = matrix(c(1, 7, 13, 3, 9, 15, 5, 11, 17), nrow=3, byrow=FALSE)
print(A)

# 2B
B = t(A)
print(B)

# 2C
element_mult = A * B
print(element_mult)

# 2D
dot_product = A %*% B
print(dot_product)

# 3A
s = seq(1, 199, by=2)
print(s)

# 3B
r = rep(0, 20)
print(r)

# 4
cats = data.frame(Gender = c("Female", "Male", "Male"),
                  Birth_Year = c(2006, 2011, 2011),
                  row.names = c("Necco", "Pippin", "Squeak"))
print(cats)

# 5A
rain50 = precip[precip > 50]
print(rain50)

# 5B
rain45_25 = precip[precip > 45 | precip < 25]
print(rain45_25)
# 6A
# Method 1: Using $ operator
ozone1 = airquality$Ozone
print(ozone1)
# Method 2: Using column index
ozone2 = airquality[, 1]
print(ozone2)

# 6B
wind_temp = airquality[1:16, c("Wind", "Temp")]
print(wind_temp)
# 6A
# Method 1: Using $ operator (had to look up tutorial for this)
ozone1 = airquality$Ozone
print(ozone1)
# Method 2: Using column index(basic index syntax)
ozone2 = airquality[, 1]
print(ozone2)

# 6B
wind_temp = airquality[1:16, c("Wind", "Temp")]
print(wind_temp)




