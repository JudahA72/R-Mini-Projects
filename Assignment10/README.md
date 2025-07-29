# Assignment 10

This folder contains solutions for Assignment 10 in both R and Python. Each question is answered with concise code and comments, matching assignment requirements.

## Contents
- `Assignment10.R`: R solutions for all questions
- `Assignment10.py`: Python solutions for all questions
- `Datasets/UseCase/soil.txt`: Dataset for pH measurements
- `Datasets/UseCase/properties.txt`: Dataset for property statistics

## Questions & Solutions

### 1. Bootstrap Analysis of Soil pH
- **a.** Compute and print the bootstrap estimate of the sample 25th percentile of pH and the bootstrap estimate of standard error (200 replicates).
- **b.** Construct 95% Basic and Percentile bootstrap confidence intervals for the statistic in part a.
- R: Uses `sample()`, `quantile()`, and manual bootstrap loop.
- Python: Uses `numpy`, `pandas`, and manual bootstrap loop.

### 2. Bootstrap Analysis of Property Data
- **a.** Compute and print the bootstrap estimate of the correlation between age and cost, and the bootstrap estimate of standard error (200 replicates).
- **b.** Construct 95% Basic and Percentile bootstrap confidence intervals for the statistic in part a.
- R: Uses `cor()`, `sample()`, and manual bootstrap loop.
- Python: Uses `numpy`, `pandas`, and manual bootstrap loop.

## How to Run

### R
1. Open `Assignment10.R` in RStudio or VS Code.
2. Ensure `soil.txt` and `properties.txt` are in `Datasets/UseCase/`.
3. Run each code block as needed.

### Python
1. Install required packages:
   - `pip install numpy pandas`
2. Open `Assignment10.py` in VS Code or any Python IDE.
3. Ensure `soil.txt` and `properties.txt` are in `Datasets/UseCase/`.
4. Run each code block as needed.

---

Created by Judah Alter, July 2025.
