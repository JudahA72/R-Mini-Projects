# Assignment 9

This folder contains solutions for Assignment 9 in both R and Python. Each question is answered with concise code and comments, matching assignment requirements.

## Contents
- `Assignment9.R`: R solutions for all questions
- `Assignment9.py`: Python solutions for all questions

## Questions & Solutions

### 1a. Simulation for Normal Distribution
- Repeat process 100 times for Normal(0, 2^2) distribution.
- Calculate proportion of times true variance is within interval.
- R: Uses `rnorm()`, `var()`, `qchisq()`
- Python: Uses `np.random.normal()`, `np.var()`, `chi2.ppf()`

### 1b. Simulation for Exponential Distribution
- Repeat process 100 times for Exponential distribution.
- R: Uses `rexp()`, `var()`, `qchisq()`
- Python: Uses `np.random.exponential()`, `np.var()`, `chi2.ppf()`

### 2. Empirical Power Curve for t-test
- Simulate t-tests for a range of means, plot empirical power curve.
- R: Uses `t.test()`, `plot()`
- Python: Uses `ttest_1samp()`, `plt.plot()`

### 3. Quartiles of Sampling Distribution of Skewness Statistic
- Simulate sampling distribution of skewness, print quartiles.
- R: Uses `skewness()` from `moments` package, `quantile()`
- Python: Uses `skew()` from `scipy.stats`, `np.percentile()`

## How to Run

### R
1. Open `Assignment9.R` in RStudio or VS Code.
2. Run each code block as needed.

### Python
1. Install required packages:
   - `pip install numpy scipy matplotlib`
2. Open `Assignment9.py` in VS Code or any Python IDE.
3. Run each code block as needed.

---

Created by Judah Alter, July 2025.
