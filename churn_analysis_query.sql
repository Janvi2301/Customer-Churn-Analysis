USE customer;
-- to know How many customers are active vs churned? 
SELECT Churn, COUNT(*) AS total_customers
FROM cleaned_churn_data
GROUP BY Churn;

-- What percentage of customers are leaving?
SELECT ROUND(AVG(Churn = 1) * 100,2) AS Churn_rate_percentage
FROM cleaned_churn_data;
			-- OR
SELECT 
ROUND(
    SUM(CASE WHEN `Churn` = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
    2
) AS churn_rate_percentage
FROM cleaned_churn_data;

-- Gender-wise Churn Analysis
SELECT gender, COUNT(customerID) AS total_user, SUM(Churn) AS churn_users    -- by executing this we can find out mae or female who has churn more.
FROM cleaned_churn_data
GROUP BY gender; 

-- identifying which contract type has highest churn
SELECT Contract, COUNT(customerID) as total_customer, SUM(Churn) AS churn_users, ROUND(SUM(Churn) *100 / COUNT(customerID), 2) AS churn_percentage
FROM cleaned_churn_data
GROUP BY Contract;

-- Which payment method customers are more likely to churn?
SELECT PaymentMethod, COUNT(customerID) AS total_customer, SUM(Churn) AS churn_users
FROM cleaned_churn_data
GROUP BY PaymentMethod;

-- Internet Service Analysis
SELECT InternetService, COUNT(customerID) AS total_customer, SUM(Churn) AS churn_users
FROM cleaned_churn_data
GROUP BY InternetService;

-- Identifying Do high-paying customers churn more?
SELECT 
	CASE 
		WHEN MonthlyCharges < 30 THEN 'Low'
		WHEN MonthlyCharges between 30 AND 70 THEN 'Medium'
		ELSE 'High'  
	END AS charges_category,
COUNT(*) AS total_customers, SUM(Churn) AS churn_users, SUM(Churn)/COUNT(*) * 100 AS churn_percentage
FROM cleaned_churn_data
group by charges_category;

-- Tenure Analysis
SELECT
    CASE
        WHEN tenure < 12 THEN 'New Customer'
        WHEN tenure BETWEEN 12 AND 24 THEN 'Mid-term Customer'
        ELSE 'Long-term Customer'
    END AS customer,
COUNT(customerID) AS total_customers, SUM(Churn) AS churn_users
FROM cleaned_churn_data
GROUP BY customer;

-- Do senior citizens churn more?
SELECT SeniorCitizen, gender, COUNT(customerID) AS total_customer, SUM(Churn) AS churn_users
FROM cleaned_churn_data
where SeniorCitizen = 1
GROUP BY gender;

/* SELECT SeniorCitizen, gender, COUNT(customerID) AS total_customers, SUM(Churn) AS churn_users,
   ROUND(SUM(Churn) * 100.0 / COUNT(*), 2) AS churn_rate
   FROM cleaned_churn_data
   GROUP BY SeniorCitizen, gender; 
*/

-- Revenue Loss Due to Churn
SELECT ROUND(SUM(MonthlyCharges),2) AS estimated_monthly_revenue_loss
FROM cleaned_churn_data
WHERE churn = 1;

-- Which customers are most likely to churn?
SELECT tenure, MonthlyCharges, TotalCharges
FROM cleaned_churn_data
WHERE Churn = 1
ORDER BY MonthlyCharges DESC
LIMIT 10;

-- Tech Support Impact on Churn
SELECT TechSupport, COUNT(customerID) AS total_customer, SUM(Churn) AS churn_users
FROM cleaned_churn_data
GROUP BY TechSupport;

