# Assignment 8

This folder contains solutions for Assignment 8 in both R and Python. Each question is answered with concise code and comments, matching assignment requirements.

## Contents
- `Assignment8.r`: R solutions for all questions
- `Assignment8.py`: Python solutions for all questions
- `Datasets/UseCase/properties.txt`: Dataset for regression analysis

## Questions & Solutions

### 1. Multiple Linear Regression
- Read data from `properties.txt` and fit a regression model.
- R: Uses `lm()`
- Python: Uses `statsmodels.OLS`

### 2. Model Summary
- Print regression summary.
- R: `summary()`
- Python: `summary()`

### 3. Confidence Intervals
- 99% confidence intervals for parameters.
- R: `confint()`
- Python: `conf_int()`

### 4. Coefficient Estimates
- Print estimated coefficients.
- R: `coef()`
- Python: `params`

### 5. Point Prediction
- Predict mean rental rate for new property.
- R: `predict()`
- Python: `predict()`

### 6. Confidence Interval for Prediction
- 95% confidence interval for mean prediction.
- R: `predict(..., interval="confidence")`
- Python: `get_prediction().conf_int()`

### 7. Prediction Interval for One Property
- 95% prediction interval for a single property.
- R: `predict(..., interval="prediction")`
- Python: `get_prediction(..., obs=True).conf_int()`

### 8. Mean of Residuals
- Calculate and print mean of residuals.
- R: `mean(residuals())`
- Python: `resid.mean()`

### 9. Residuals vs Predicted Values
- Plot residuals against predicted values.
- R: `plot()`
- Python: `plt.scatter()`

### 10. Histogram of Residuals
- Plot histogram of residuals.
- R: `hist()`
- Python: `plt.hist()`

## How to Run

### R
1. Open `Assignment8.r` in RStudio or VS Code.
2. Ensure `properties.txt` is in `Datasets/UseCase/`.
3. Run each code block as needed.

### Python
1. Install required packages:
   - `pip install pandas statsmodels matplotlib`
2. Open `Assignment8.py` in VS Code or any Python IDE.
3. Ensure `properties.txt` is in `Datasets/UseCase/`.
4. Run each code block as needed.

---

Created by Judah Alter, July 2025.
