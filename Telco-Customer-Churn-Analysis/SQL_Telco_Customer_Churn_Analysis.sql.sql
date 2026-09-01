--Project: Telco Customer Chrn Analysis
--Database: TelcoChurn
----------------------------------------
--1. Data Overview
----------------------------------------
--Q1. Total Number of Customers
select count (*) as total_customers
from telco
--Q2. Customer Churn Distribution
select churn,
       count (*) as Customer_Count
from telco
group by churn
--Q3. Customer Churn Distribution- Sorted
select churn,
       count (*) as Customer_Count
from telco
group by churn
order by count (*) desc
--Q4. Churn Rate
select
    count (case when churn='yes' then 1 end) as churned_customers,
	count (*) as total_customers,
	cast(
	     count (case when churn= 'yes' then 1 end) * 100.0
		 / count (*)
		 as decimal (5,2)
	) as chrned_rate_percent
from telco
--Q5. Churn Rate by Gender
select gender,
       count (*) as total_customer,
	   count (case when churn = 'yes' then 1 end) as churned_customers,
	   cast (
	         count (case when churn = 'yes' then 1 end) * 100.0
			 / count (*)
			 as decimal (5,2)
       ) as churned_rate_percent
from telco
group by gender;
--Q6. Churn Rate by Contract Type
select Contract,
       count (*) as total_customers,
	   count (case when churn = 'yes' then 1 end) as churned_customers,
	   cast(
	        count( case when churn = 'yes' then 1 end) * 100.0
			/ count(*)
			as decimal (5,2)
	   ) as churned_rate_percent
from telco
group by Contract
order by churned_rate_percent desc;
--Q7. Churn Rate by Internet Service
select internetservice,
       count (*) as total_customers,
	   count( case when churn = 'yes' then 1 end) as churned_customers,
	   cast(
	        count (case when churn = 'yes' then 1 end) * 100.0
			/ count (*)
			as decimal (5,2)
	        ) as churned_rate_percent
from telco
group by internetservice
order by churned_rate_percent desc;
--Q8. Churn Rate by payment method
select PaymentMethod,
       count (*) as total_customers,
	   count( case when churn = 'yes' then 1 end) as churned_customers,
	   cast(
	        count (case when churn = 'yes' then 1 end) * 100.0
			/ count (*)
			as decimal (5,2)
	        ) as churned_rate_percent
from telco
group by PaymentMethod
order by churned_rate_percent desc;
--Q9. Churn Rate by Tenure Group
SELECT
    CASE
        WHEN CAST(tenure AS INT) <= 12 THEN '0-12 Months'
        WHEN CAST(tenure AS INT) <= 24 THEN '13-24 Months'
        WHEN CAST(tenure AS INT) <= 48 THEN '25-48 Months'
        WHEN CAST(tenure AS INT) <= 60 THEN '49-60 Months'
        ELSE '61+ Months'
    END AS Tenure_Group,
    COUNT(*) AS Total_Customers,
    COUNT(CASE
          WHEN Churn = 'Yes' THEN 1
       END) AS Churned_Customers,
-- Q10: Churn Rate by Monthly Charges
SELECT
      CASE
         WHEN MonthlyCharges < 30 THEN 'Under $30'
         WHEN MonthlyCharges < 60 THEN '$30-$59'
		 WHEN MonthlyCharges < 90 THEN '$60-$89'
		 ELSE '$90+'
      END AS Monthly_Charges_Group,
      COUNT(*) AS Total_Customers,
      COUNT(CASE
            WHEN Churn = 'Yes' THEN 1
         END) AS Churned_Customers,
         CAST(
             COUNT(CASE
                   WHEN Churn = 'Yes' THEN 1
             END) * 100.0 / COUNT(*)
             AS DECIMAL(5,2)
             ) AS Churned_Rate_Percent
FROM telco
GROUP BY
      CASE
          WHEN MonthlyCharges < 30 THEN 'Under $30'
          WHEN MonthlyCharges < 60 THEN '$30-$59'
          WHEN MonthlyCharges < 90 THEN '$60-$89'
          ELSE '$90+'
      END
ORDER BY Churned_Rate_Percent DESC;
--Q11. Churn Rate by Senior Citizen
SELECT SeniorCitizen,
       COUNT(*) AS Total_Customers,
       COUNT(CASE
           WHEN Churn = 'Yes' THEN 1
       END) AS Churned_Customers,
       CAST(
           COUNT(CASE
               WHEN Churn = 'Yes' THEN 1
           END) * 100.0 / COUNT(*)
           AS DECIMAL(5,2)
            ) AS Churned_Rate_Percent
FROM telco
GROUP BY SeniorCitizen
ORDER BY Churned_Rate_Percent DESC;
--Q12. Churn Rate by Tech Support
SELECT TechSupport,
       COUNT(*) AS Total_Customers,
       COUNT(CASE
           WHEN Churn = 'Yes' THEN 1
       END) AS Churned_Customers,
       CAST(
           COUNT(CASE
               WHEN Churn = 'Yes' THEN 1
           END) * 100.0 / COUNT(*)
           AS DECIMAL(5,2)
            ) AS Churned_Rate_Percent
FROM telco
GROUP BY TechSupport
ORDER BY Churned_Rate_Percent DESC;
--Q13. Churn Rate by Online Security
SELECT OnlineSecurity,
       COUNT(*) AS Total_Customers,
       COUNT(CASE
           WHEN Churn = 'Yes' THEN 1
       END) AS Churned_Customers,
       CAST(
           COUNT(CASE
               WHEN Churn = 'Yes' THEN 1
           END) * 100.0 / COUNT(*)
           AS DECIMAL(5,2)
            ) AS Churned_Rate_Percent
FROM telco
GROUP BY OnlineSecurity
ORDER BY Churned_Rate_Percent DESC;
--Q14. Churn Rate by Paperless Billing
SELECT PaperlessBilling,
       COUNT(*) AS Total_Customers,
       COUNT(CASE
           WHEN Churn = 'Yes' THEN 1
       END) AS Churned_Customers,
       CAST(
           COUNT(CASE
               WHEN Churn = 'Yes' THEN 1
           END) * 100.0 / COUNT(*)
           AS DECIMAL(5,2)
            ) AS Churned_Rate_Percent
FROM telco
GROUP BY PaperlessBilling
ORDER BY Churned_Rate_Percent DESC;
--Q15. Average Monthly Charges by Churn Status
SELECT Churn,
       COUNT(*) AS Total_Customers,
       CAST(
           AVG(MonthlyCharges)
           AS DECIMAL(5,2)
            ) AS Average_Monthly_Charges
FROM telco
GROUP BY Churn
ORDER BY Average_Monthly_Charges DESC;
--Q16. Overall Churn Summary
Select
     COUNT(*) AS Total_Customers,
     COUNT(CASE
           WHEN Churn = 'yes' THEN 1
     END) AS Churned_Customers,
	 COUNT(CASE
           WHEN Churn = 'NO' THEN 1
     END) AS Retained_Customers,
	 CAST(
	      COUNT(CASE
		        WHEN Churn = 'yes' THEN 1
		  END) * 100.0 / COUNT(*)
           AS DECIMAL(5,2)
            ) AS Churn_Rate_Percent
FROM telco

