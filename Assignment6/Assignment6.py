# Name: Assignment6.py
# Description: This script answers basic python syntax and operations from Assignment 6.
# All work is completed by Judah Alter.

# 1a
# perform equality of variances test (Levene's test)(Had to look this up)
import pandas as pd
from scipy.stats import levene, ttest_ind

schizo = pd.read_excel("schizo.xlsx")

# Split data by status
dop_n = schizo[schizo["Status"] == "N"]["Dopamine"]
dop_p = schizo[schizo["Status"] == "P"]["Dopamine"]

# Equality of variances test (Levene's test)(Tried using this assuming no normal distribution)
q1a = levene(dop_n, dop_p, center='mean')
print("q1a p-value:", q1a.pvalue)

# 1b
# Hypothesis test for difference in means (independent t-test)
q1b = ttest_ind(dop_p, dop_n, equal_var=True)
mean_diff = dop_p.mean() - dop_n.mean()
# 99% confidence interval for mean difference
import numpy as np
from scipy.stats import t
n1, n2 = len(dop_p), len(dop_n)
s1, s2 = dop_p.std(ddof=1), dop_n.std(ddof=1)
se = np.sqrt(s1**2/n1 + s2**2/n2)
dof = n1 + n2 - 2
t_crit = t.ppf(0.995, dof)
ci_low = mean_diff - t_crit * se
ci_high = mean_diff + t_crit * se
print("q1b p-value:", q1b.pvalue)
print("Mean difference:", mean_diff)
print("99% CI:", (ci_low, ci_high))

# F-test for equality of variances
var_n = dop_n.var(ddof=1)
var_p = dop_p.var(ddof=1)
f_stat = var_p / var_n
from scipy.stats import f
df1 = len(dop_p) - 1
df2 = len(dop_n) - 1
# Two-tailed p-value
p_value = 2 * min(f.cdf(f_stat, df1, df2), 1 - f.cdf(f_stat, df1, df2))
print("F-test p-value:", p_value)
# There is definitely a difference in variances, so we can use the t-test with unequal variances.
# There is definitely a easier way to do this, but I got lost in my complication.

# 2
# Read soil.txt (weird one column)
soil = np.loadtxt("soil.txt")
# One-sample t-test: H0: mean >= 6.5, Ha: mean < 6.5
from scipy.stats import ttest_1samp
q2 = ttest_1samp(soil, 6.5, alternative='less')
print("q2 test statistic:", q2.statistic)
print("q2 p-value:", q2.pvalue)

# 3
# PVR data histamine for 8 lambs
before = [0.095, 0.106, 0.082, 0.152, 0.090, 0.086, 0.137, 0.121]
after = [0.176, 0.142, 0.194, 0.136, 0.115, 0.084, 0.103, 0.189]
# Paired t-test: H0: mean(after - before) <= 0, Ha: mean(after - before) > 0
from scipy.stats import ttest_rel
q3 = ttest_rel(after, before, alternative='greater')
print("q3 p-value:", q3.pvalue)

# 4a
# Soap and Control data
soap = [76, 27, 16, 30, 26, 46, 6]
control = [30, 36, 66, 21, 63, 38, 35, 45]
# Equality of variances test at 10% significance level
q4a = levene(soap, control, center='mean')
print("q4a p-value:", q4a.pvalue)

# 4b
# soap dishes have lower mean bacteria levels : one-sided t-test
q4b = ttest_ind(soap, control, equal_var=True, alternative='less')
print("q4b test statistic:", q4b.statistic)
print("q4b p-value:", q4b.pvalue)





