# Name: Assignment11.py
# Description: This script answers basic python syntax and operations from Assignment 11.
# All work is completed by Judah Alter.

# 1a. Scatterplot of hwy vs cty using seaborn and the mpg dataset
import seaborn as sns
import matplotlib.pyplot as plt
mpg = sns.load_dataset('mpg')
sns.scatterplot(x='hwy', y='cty', data=mpg)
plt.xlabel('hwy')
plt.ylabel('cty')
plt.show()
