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