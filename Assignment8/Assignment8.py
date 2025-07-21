# Name: Assignment8.py
# Description: This script answers basic python syntax and operations from Assignment 8.
# All work is completed by Judah Alter.

# Name: Assignment8.py
# Description: This script answers basic python syntax and operations from Assignment 8.
# All work is completed by Judah Alter.

import pandas as pd
import statsmodels.api as sm
from statsmodels.stats.outliers_influence import summary_table

# 1. Read data and fit multiple linear regression
df = pd.read_csv('../Datasets:UseCase/properties.txt', sep='\s+', header=None)
df.columns = ['RentalRate', 'Age', 'TaxRate', 'VacancyRate', 'Cost']
X = df[['Age', 'TaxRate', 'VacancyRate', 'Cost']]
y = df['RentalRate']
X = sm.add_constant(X)
q = sm.OLS(y, X).fit()

# 2. Print summary of q
print(q.summary())

# 3. Print 99% confidence intervals for regression parameters
print(q.conf_int(alpha=0.01))

# 4. Print coefficient estimates
print(q.params)

# 5. Point prediction for mean rental rate
new_X = pd.DataFrame({'const': 1, 'Age': [5], 'TaxRate': [4.1], 'VacancyRate': [0.16], 'Cost': [100000]})
point_pred = q.predict(new_X)
print("Point prediction:", point_pred[0])

# 6. 95% confidence interval for mean rental rate prediction
pred = q.get_prediction(new_X)
conf_int = pred.conf_int(alpha=0.05)
print("95% CI for mean prediction:", conf_int[0])