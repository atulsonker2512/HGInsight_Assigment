Connect Power BI to SQL churn_cleaned table. Create visuals: churn rate by gender, age group, contract type, and KPI cards for churn ratio.


Churn Rate % = 
DIVIDE(
    COUNTROWS(FILTER(churn_cleaned, churn_cleaned[Churn] = "Yes")),
    COUNTROWS(churn_cleaned)
)

Tenure Bucket = 
SWITCH(TRUE(),
  churn_cleaned[Tenure] <= 6, "0-6 Months",
  churn_cleaned[Tenure] <= 12, "7-12 Months",
  churn_cleaned[Tenure] <= 24, "13-24 Months",
  churn_cleaned[Tenure] <= 36, "25-36 Months",
  churn_cleaned[Tenure] <= 60, "37-60 Months",
  "60+ Months"
)


1. KPI Metrics:
Total Customers

Churn Rate

Avg Monthly Charges

Avg Tenure

2. Visuals
Bar Chart: Churn by Contract Type

Pie Chart: Churn by Internet Service

Line Chart: Monthly Charges vs. Tenure

Stacked Column: Gender vs. Churn

Histogram: Tenure Buckets vs. Churn

3. Slicers
Gender

Internet Service

Contract Type