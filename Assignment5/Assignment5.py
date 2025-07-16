# Name: Assignment5.py
# Description: This script answers basic python syntax and operations from Assignment 5.
# All work is completed by Judah Alter.

# 1
# Data frame called cats with row and column names
import pandas as pd

cats = pd.DataFrame({
    "Gender": ["Female", "Male", "Male"],
    "Birth Year": [2006, 2011, 2011]
}, index=["Necco", "Pippin", "Squeak"])

print(cats)

# 2a
# Dataframe called body by reading in body.txt
body = pd.read_csv("body.txt", sep="\s+", header=None, names=["Triceps", "Thigh", "Midarm", "Bodyfat"])
print(body)

# 2b
# Prints the Triceps and Midarm for people with Triceps < 25, Midarm in <=25 and <30 and Bodyfat < 22
filtered = body[(body["Triceps"] < 25) & (body["Midarm"] >= 25) & (body["Midarm"] < 30) & (body["Bodyfat"] < 22)]
print(filtered[["Triceps", "Midarm"]])

# 3a
# Dataframe called presidents by reading in presidents2.xlsx
presidents = pd.read_excel("presidents2.xlsx")
print(presidents)

# 3b
# If exam 1 or 2 is 0, use the Final exam score as a replacement
presidents["Exam1"] = presidents.apply(lambda row: row["Final"] if row["Exam1"] == 0 else row["Exam1"], axis=1)
presidents["Exam2"] = presidents.apply(lambda row: row["Final"] if row["Exam2"] == 0 else row["Exam2"], axis=1)
print(presidents)

# 3c
# Vector called grade that contains the weighted average for each student
hwAVG = presidents[["HW1", "HW2", "HW3", "HW4"]].mean(axis=1)
grade = 0.20 * hwAVG + 0.25 * presidents["Exam1"] + 0.25 * presidents["Exam2"] + 0.30 * presidents["Final"]
print("grade:", grade)

# 3d
letter = ["a"] * len(grade)
print("letter:", letter)

# 3e
# Basic loop for letter grades
for i in range(len(grade)):
    if 90 <= grade[i] <= 100:
        letter[i] = "A"
    elif 80 <= grade[i] < 90:
        letter[i] = "B"
    elif 70 <= grade[i] < 80:
        letter[i] = "C"
    elif 60 <= grade[i] < 70:
        letter[i] = "D"
    else:
        letter[i] = "F"
print("letter grades:", letter)



