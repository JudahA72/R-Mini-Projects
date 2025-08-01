# Name: Assignment12.py
# Description: This script answers basic python syntax and operations from Assignment 12.
# All work is completed by Judah Alter.

# 1. Fit the model
import pandas as pd
import statsmodels.formula.api as smf
plants = pd.read_csv('Datasets:UseCase/plants.txt', delim_whitespace=True)
model = smf.ols('Yield ~ Condition', data=plants).fit()
print(model.summary())

# 2. Display the ANOVA table
import statsmodels.api as sm
anova_table = sm.stats.anova_lm(model, typ=2)
print(anova_table)