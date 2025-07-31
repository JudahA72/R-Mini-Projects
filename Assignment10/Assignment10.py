# Name: Assignment9.R
# Description: This script answers basic R syntax and operations from Assignment 9.
# All work is completed by Judah Alter.

# 1a. Bootstrap estimate of sample 25th percentile and standard error (200 replicates)
import numpy as np
import pandas as pd
from scipy.stats import scoreatpercentile

soil = pd.read_csv('Datasets:UseCase/soil.txt', header=None, names=["pH"])
soil_array = np.array(soil["pH"]).reshape(-1, 1)
np.random.seed(123)
B = 200
n = len(soil_array)
boot_q25 = []
for _ in range(B):
    sample_idx = np.random.choice(n, n, replace=True)
    boot_sample = soil_array[sample_idx, 0]
    boot_q25.append(np.percentile(boot_sample, 25))
q25_est = np.mean(boot_q25)
se_q25 = np.std(boot_q25, ddof=1)
print("Bootstrap estimate of 25th percentile:", q25_est)
print("Bootstrap SE:", se_q25)

# 1b. 95% Basic and Percentile bootstrap confidence intervals
q25_orig = np.percentile(soil_array, 25)
ci_percentile = np.percentile(boot_q25, [2.5, 97.5])
ci_basic = 2*q25_orig - ci_percentile[::-1]
print("95% Percentile CI:", ci_percentile)
print("95% Basic CI:", ci_basic)

# 2a. Bootstrap estimate of correlation between age and cost, and standard error (200 replicates)
props = pd.read_csv('Datasets:UseCase/properties.txt', sep='\s+', header=None)
props.columns = ['RentalRate', 'Age', 'TaxRate', 'VacancyRate', 'Cost']
np.random.seed(123)
B = 200
n = len(props)
boot_corr = []
for _ in range(B):
    idx = np.random.choice(n, n, replace=True)
    boot_sample = props.iloc[idx]
    boot_corr.append(np.corrcoef(boot_sample['Age'], boot_sample['Cost'])[0,1])
corr_est = np.mean(boot_corr)
se_corr = np.std(boot_corr, ddof=1)
print("Bootstrap estimate of correlation (Age, Cost):", corr_est)
print("Bootstrap SE:", se_corr)

# 2b. 95% Basic and Percentile bootstrap confidence intervals
corr_orig = np.corrcoef(props['Age'], props['Cost'])[0,1]
ci_percentile = np.percentile(boot_corr, [2.5, 97.5])
ci_basic = 2*corr_orig - ci_percentile[::-1]
print("95% Percentile CI:", ci_percentile)
print("95% Basic CI:", ci_basic)