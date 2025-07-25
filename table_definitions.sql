-- Staging table
CREATE TABLE churn_staging (
  CustomerID INT,
  Age INT,
  Gender VARCHAR(50),
  Tenure INT,
  MonthlyCharges FLOAT,
  ContractType VARCHAR(100),
  InternetService VARCHAR(100),
  TotalCharges FLOAT,
  TechSupport VARCHAR(50),
  Churn VARCHAR(10)
);

-- Reporting/cleaned table
CREATE TABLE churn_cleaned (
  CustomerHash VARCHAR(256),
  Age INT,
  Gender VARCHAR(50),
  Tenure INT,
  MonthlyCharges FLOAT,
  ContractType VARCHAR(100),
  InternetService VARCHAR(100),
  TotalCharges FLOAT,
  TechSupport VARCHAR(50),
  Churn VARCHAR(10)
);