# Assignment 8

## Overview

This assignment demonstrates multiple linear regression analysis in both **R** and **Python** using a commercial real estate dataset. The dataset (`properties.txt`) contains information on rental rates, property age, tax rates, vacancy rates, and property costs for commercial properties in a metropolitan area.

Both R and Python scripts answer the following:

1. **Fit a multiple linear regression model** using rental rate as the response and the other variables as predictors.
2. **Print the model summary.**
3. **Print 99% confidence intervals** for the regression parameters.
4. **Print the coefficient estimates.**
5. **Predict the mean rental rate** for a property with specified characteristics.
6. **Print a 95% confidence interval** for the mean rental rate prediction.
7. **Print a 95% prediction interval** for a single property.
8. **Calculate the mean of the residuals.**
9. **Plot predicted values vs. residuals** (with a horizontal line at 0).
10. **Create a histogram of the residuals.**

---

## Files

- `Assignment8.r` — R script with all analysis steps.
- `Assignment8.py` — Python script with all analysis steps.
- `properties.txt` — Space-delimited data file (no headers) in `Datasets:UseCase/`.

---

## How to Run

### R

1. Open `Assignment8.r` in RStudio or your preferred R environment.
2. Ensure the working directory is set so that `Datasets:UseCase/properties.txt` is accessible.
3. Run the script. All results and plots will be printed/displayed.

### Python

1. Install required packages if needed:
    ```bash
    pip install pandas statsmodels matplotlib
    ```
2. Run `Assignment8.py` in your terminal or IDE.
    ```bash
    python Assignment8.py
    ```
3. Ensure the data file path is correct.

---

## Notes

- The dataset must be present at `Datasets:UseCase/properties.txt` relative to the script locations.
- Both scripts are fully commented for clarity.


---
