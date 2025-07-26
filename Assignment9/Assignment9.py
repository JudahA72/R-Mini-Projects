# Name: Assignment9.py
# Description: This script answers basic python syntax and operations from Assignment 9.
# All work is completed by Judah Alter.

import numpy as np
from scipy.stats import chi2

# 1a. Repeat process 100 times for Normal(0, 2^2) distribution
np.random.seed(123)
n = 20
sigma2 = 4
correct = 0

for _ in range(100):
    x = np.random.normal(0, 2, n)
    s2 = np.var(x, ddof=1)
    lower = 0
    upper = (n-1)*s2 / chi2.ppf(0.95, n-1)
    if sigma2 >= lower and sigma2 <= upper:
        correct += 1
prop_correct = correct / 100
print("Proportion correct (Normal):", prop_correct)

# 1b. Repeat process 100 times for Exponential distribution
np.random.seed(123)
correct_exp = 0

for _ in range(100):
    x = np.random.exponential(scale=0.5**-1, size=n)
    s2 = np.var(x, ddof=1)
    lower = 0
    upper = (n-1)*s2 / chi2.ppf(0.95, n-1)
    if sigma2 >= lower and sigma2 <= upper:
        correct_exp += 1
prop_correct_exp = correct_exp / 100
print("Proportion correct (Exponential):", prop_correct_exp)