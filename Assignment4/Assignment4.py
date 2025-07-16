# Name: Assignment4.py
# Description: This script answers basic Python syntax and operations from Assignment 4.
# All work is completed by Judah Alter.

# 1a
#  print a vector called "a" containing the values 1, 2, 3, and 4.
a = [1, 2, 3, 4]
print("a:", a)

# 1b
# print a vector called "b" containing the values 5, 6, 7, and 8.
b = [5, 6, 7, 8]
print("b:", b)


# 1c
# Add vectors a and b then print.
sumVec = [a[i] + b[i] for i in range(len(a))]
print("a + b:", sumVec)

# 1d
# vector called "ab" that consists of the values of a then the values of b.
ab = a + b
print("ab:", ab)

# 1e
# Print all the values of ab except for the 2nd and 7th. Meaning the values 1 and 6 since starts at index 0
PrintAB = [ab[i] for i in range(len(ab)) if i != 1 and i != 6]
print("ab except 2nd and 7th values:", PrintAB)

# 2a
# print a matrix called "A"
A = [
    [1, 3, 5],
    [7, 9, 11],
    [13, 15, 17]
]
print("A:")
for row in A:
    print(row)

# 2b
# print a matrix "B" that is the transpose of A
B = [list(row) for row in zip(*A)]
print("B (transpose of A):")
for row in B:
    print(row)

# 2c
# Element by element multiplication of A and B
C = [[A[i][j] * B[i][j] for j in range(len(A[0]))] for i in range(len(A))]
print("Element-wise multiplication of A and B:")
for row in C:
    print(row)

# 2d
# Dot product multiplication of A and B
Dot = [[sum(A[i][k] * B[k][j] for k in range(len(A))) for j in range(len(B[0]))] for i in range(len(A))]
print("Dot product of A and B:")
for row in Dot:
    print(row)

# 3a
#  a vector called "s" that contains all the odd integers 1-199.
s = list(range(1, 200, 2))
print("s:", s)

# 3b
#  a vector of length 20, called "r" that contains all zeros.
r = [0] * 20
print("r:", r)

# 4
# Invest $5000 in a fund that pays 3% interest every year.
# Loop to find out investment double time.
amount = 5000
final = amount * 2
year = 0
while amount < final:
    amount *= 1.03
    year += 1
print("Final year:", year)
print("Final amount:", round(amount, 2))

# 5
# Function called interest that inputs initial amount, interest rate, and x

def interest(amount, rate, x):
    # 5b: Check for valid input and adjust as needed
    if amount <= 0:
        print("Initial Amount Must Be Positive.")
        return None
    if rate <= 0 or rate >= 1:
        rate = 0.05
    if x < 1.5:
        x = 2
    years = 0
    value = amount
    while value < amount * x:
        value *= (1 + rate)
        years += 1
    return years

# Example usage:
print("Years to double $5000 at 3%:", interest(5000, 0.03, 2))
print("Years to triple $1000 at 2%:", interest(1000, 0.02, 3))
print("Test invalid amount:", interest(-100, 0.03, 2))

# 6
# Function to process a matrix 

def matrixProcess(mat):
    # Find column with largest average
    col_means = [sum(col)/len(col) for col in zip(*mat)]
    col_sds = []
    for col in zip(*mat):
        mean = sum(col)/len(col)
        sd = (sum((x - mean) ** 2 for x in col) / len(col)) ** 0.5
        col_sds.append(sd)
    maxmean = col_means.index(max(col_means))
    minsd = col_sds.index(min(col_sds))
    return [mat[0][maxmean], mat[0][minsd]]

# 6c: Evaluate with the given matrix
MatrixAnalysis = [
    [3, 6, -1],
    [4, 6, 7],
    [8, 5, 10]
]
print("Result for problem 6:", matrixProcess(MatrixAnalysis))


