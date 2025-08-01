# Name: Assignment11.py
# Description: This script answers basic python syntax and operations from Assignment 11.
# All work is completed by Judah Alter.

import seaborn as sns
import matplotlib.pyplot as plt

mpg = sns.load_dataset('mpg')

# 1a. Scatterplot of horsepower vs mpg
sns.scatterplot(x='horsepower', y='mpg', data=mpg)
plt.xlabel('horsepower')
plt.ylabel('mpg')
plt.title('Scatterplot of horsepower vs mpg')
plt.show()

# 1b. Scatterplot colored by origin (similar to manufacturer)
sns.scatterplot(x='horsepower', y='mpg', hue='origin', data=mpg)
plt.xlabel('horsepower')
plt.ylabel('mpg')
plt.title('Scatterplot of horsepower vs mpg colored by origin')
plt.show()

# 1c. Faceted scatterplot by origin
g = sns.FacetGrid(mpg, col='origin', col_wrap=3)
g.map_dataframe(sns.scatterplot, x='horsepower', y='mpg')
g.set_axis_labels('horsepower', 'mpg')
g.fig.suptitle('Faceted scatterplot of horsepower vs mpg by origin', y=1.03)
plt.show()