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
propCorrect = correct / 100
print("Proportion correct (Normal):", propCorrect)

# 1b. Repeat process 100 times for Exponential distribution
np.random.seed(123)
correctExp = 0

for _ in range(100):
    x = np.random.exponential(scale=0.5**-1, size=n)
    s2 = np.var(x, ddof=1)
    lower = 0
    upper = (n-1)*s2 / chi2.ppf(0.95, n-1)
    if sigma2 >= lower and sigma2 <= upper:
        correctExp += 1
propCorrectExp = correctExp / 100
print("Proportion correct (Exponential):", propCorrectExp)

import numpy as np
from scipy.stats import ttest_1samp, skew
import matplotlib.pyplot as plt

# 2. Empirical power curve for t-test
np.random.seed(123)
n = 20
sd = 100
alpha = 0.05
muvals = np.arange(450, 651, 10)
power = []

for mu in muvals:
    reject = 0
    for _ in range(200):
        x = np.random.normal(mu, sd, n)
        pval = ttest_1samp(x, 500).pvalue
        if pval < alpha:
            reject += 1
    power.append(reject / 200)

plt.plot(muvals, power, marker='o')
plt.xlabel("mu")
plt.ylabel("Empirical Power")
plt.title("Empirical Power Curve")
plt.show()

# 3. Quartiles of sampling distribution of skewness statistic
np.random.seed(123)
n = 50
skewVals = []
for _ in range(500):
    x = np.random.normal(0, 1, n)
    skewVals.append(skew(x))
quartiles = np.percentile(skewVals, [25, 50, 75])
print("Quartiles of skewness statistic:", quartiles)