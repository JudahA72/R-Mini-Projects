# Name: Assignment7.py
# Description: This script answers basic python syntax and operations from Assignment 7.
# All work is completed by Judah Alter.

# 1. Plot log(x) (red) and sqrt(x) (green) on [1,5]
import numpy as np
import matplotlib.pyplot as plt
x = np.linspace(1, 5, 100)
plt.plot(x, np.log(x), color='red')
plt.plot(x, np.sqrt(x), color='green')
plt.xlabel('x')
plt.ylabel('f1')
plt.show()

# 2. Scatterplot of x and y, blue mean point, red lines at y=5 and y=15
x = [5,6,7,5,10,12,14]
y = [4,9,2,3,4,5,20]
plt.scatter(x, y)
plt.scatter(np.mean(x), np.mean(y), color='blue')
plt.axhline(5, color='red')
plt.axhline(15, color='red')
plt.xlabel('x')
plt.ylabel('y')
plt.show()

# 3a. Relative frequency histogram of Life Expectancy 
import pandas as pd
df = pd.read_csv('Datasets:UseCase/statesx77.txt', delim_whitespace=True)
plt.hist(df['Life_Exp'], density=True)
plt.xlabel('Life Expectancy')
plt.ylabel('Density')
plt.title('Histogram of Life Expectancy')
plt.show()

# 3b. Boxplot of Life Expectancy from statesx77.txt
import pandas as pd
df = pd.read_csv('Datasets:UseCase/statesx77.txt', sep='\s+')
plt.boxplot(df['Life_Exp'])
plt.title('Boxplot of Life Expectancy')
plt.ylabel('Life Expectancy')
plt.show()

# 3c. Kernel density estimate of Life Expectancy from 
import seaborn as sns
sns.kdeplot(df['Life_Exp'])
plt.title('Kernel Density Estimate of Life Expectancy')
plt.xlabel('Life Expectancy')
plt.ylabel('Density')
plt.show()

# 4a. Side-by-side boxplots of dopamine level by status 
import pandas as pd
import seaborn as sns
schizo = pd.read_excel('Datasets:UseCase/schizo.xlsx')
sns.boxplot(x='Status', y='Dopamine', data=schizo, color='grey')
plt.title('Non-Psychotic vs Psychotic')
plt.xlabel('Status')
plt.ylabel('Dopamine')
plt.show()

# 4b. Side-by-side relative frequency histograms of dopamine level by status
import matplotlib.pyplot as plt
import pandas as pd

schizo = pd.read_excel('Datasets:UseCase/schizo.xlsx')
fig, axes = plt.subplots(1, 2, figsize=(10, 4))
axes[0].hist(schizo[schizo['Status'] == 'N']['Dopamine'], density=True, color='cyan')
axes[0].set_title('Histogram of Non-Psychotic Patients')
axes[0].set_xlabel('Dopamine')
axes[0].set_ylabel('Density')
axes[1].hist(schizo[schizo['Status'] == 'P']['Dopamine'], density=True, color='cyan')
axes[1].set_title('Histogram of Psychotic Patients')
axes[1].set_xlabel('Dopamine')
axes[1].set_ylabel('Density')
plt.tight_layout()
plt.show()