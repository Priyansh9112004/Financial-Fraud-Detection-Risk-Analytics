create database fraud_detection;
use fraud_detection;

-- TOTAL TRANSACTION
SELECT COUNT(*)
FROM financial_fraud_dataset_50000;

-- Fraud Count
SELECT COUNT(*) AS Fraud_Count
FROM financial_fraud_dataset_50000
WHERE Fraud_Label = 1;

-- Top Fraud Cities
SELECT Location,
COUNT(*) AS Fraud_Count
FROM financial_fraud_dataset_50000
WHERE Fraud_Label='Fraud'
GROUP BY Location
ORDER BY Fraud_Count DESC;

-- Fraud by Payment Method
SELECT Payment_Method,
COUNT(*) AS Fraud_Transactions
FROM financial_fraud_dataset_50000
WHERE Fraud_Label='Fraud'
GROUP BY Payment_Method
ORDER BY Fraud_Transactions DESC;

-- Average Fraud Amount
SELECT AVG(Transaction_Amount)
FROM financial_fraud_dataset_50000
WHERE Fraud_Label='Fraud';
