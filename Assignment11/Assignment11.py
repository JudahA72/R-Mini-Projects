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

# 1b. Scatterplot of hwy vs cty colored by manufacturer
sns.scatterplot(x='hwy', y='cty', hue='manufacturer', data=mpg)
plt.xlabel('hwy')
plt.ylabel('cty')
plt.show()

# 1c. Faceted scatterplot of hwy vs cty by manufacturer
g = sns.FacetGrid(mpg, col='manufacturer', col_wrap=4)
g.map_dataframe(sns.scatterplot, x='hwy', y='cty')
g.set_axis_labels('hwy', 'cty')
plt.show()
