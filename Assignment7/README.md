# Assignment 7

This folder contains solutions for Assignment 7 in both R and Python. Each question is answered with concise code and comments, matching the required screenshots and instructions.

## Contents
- `Assignment7.R`: R solutions for all questions
- `Assignment7.py`: Python solutions for all questions
- `Datasets/UseCase/schizo.xlsx`: Dataset for dopamine level analysis
- `Datasets/UseCase/statesx77.txt`: Dataset for state statistics

## Questions & Solutions

### 1. Plot log(x) and sqrt(x) on [1,5]
- R: Uses `plot()` and `lines()`
- Python: Uses `matplotlib` and `numpy`

### 2. Scatterplot of x and y, mean point, reference lines
- R: Uses `plot()`, `points()`, `abline()`
- Python: Uses `matplotlib`

### 3a. Relative frequency histogram of Life Expectancy
- R: Uses `hist()` with `probability=TRUE`
- Python: Uses `plt.hist()` with `density=True`

### 3b. Boxplot of Life Expectancy
- R: Uses `boxplot()`
- Python: Uses `plt.boxplot()`

### 3c. Kernel density estimate of Life Expectancy
- R: Uses `density()` and `plot()`
- Python: Uses `seaborn.kdeplot()`

### 4a. Side-by-side boxplots of dopamine level by status
- R: Uses `boxplot(Dopamine ~ Status)`
- Python: Uses `seaborn.boxplot()`

### 4b. Side-by-side relative frequency histograms of dopamine level by status
- R: Uses `hist()` with `par(mfrow=c(1,2))`
- Python: Uses `plt.hist()` in subplots

## How to Run

### R
1. Open `Assignment7.R` in RStudio or VS Code.
2. Ensure the datasets are in `Datasets/UseCase/`.
3. Run each code block as needed.

### Python
1. Install required packages:
   - `pip install pandas matplotlib seaborn openpyxl`
2. Open `Assignment7.py` in VS Code or any Python IDE.
3. Ensure the datasets are in `Datasets/UseCase/`.
4. Run each code block as needed.

## Notes
- All code matches the screenshots and instructions provided in the assignment.
- Data files must be in the correct folder for code to run without errors.
- For any issues, check file paths and package installation.

---

Created by Judah Alter, July 2025.
