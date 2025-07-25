Use SSIS to ingest customer\_churn\_data.csv. Hash CustomerID, replace missing values for TotalCharges with average, and write cleaned data to 'churn\_cleaned'.



**Importing into SSIS**

A) Prerequisites

SQL Server Data Tools (SSDT)



SQL Server Integration Services



Local/Cloud SQL instance with churn\_staging and churn\_cleaned



B) Build Package

Open SSDT → New SSIS Project



Add Flat File Source → map to customer\_churn\_data.csv



Add Derived Column transformation:



Replace nulls with defaults



Use HASHBYTES("SHA2\_256", CustomerID) in a Script Component for anonymization



Add OLE DB Destination → point to your cleaned table



Use Execute SQL Task before data flow to truncate churn\_staging



C) Schedule via SQL Agent

Create SQL Server Agent Job → add SSIS package step



Set schedule to run every hour

