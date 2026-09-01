Telco Customer Churn Analysis — SQL Server

📌 Project Overview

This project analyzes customer churn for a telecommunications company using SQL Server.

The goal is to identify customer segments and service-related factors associated with higher churn rates and generate actionable business insights that can support customer retention strategies.

🛠️ Tools & Technologies

* SQL Server
* T-SQL
* SQL Server Management Studio (SSMS)

📊 Dataset

The dataset contains 7,043 customer records and 21 features covering customer demographics, subscribed services, account information, billing details, and churn status.

Target variable: Churn

* Yes → Customer churned
* No → Customer retained

🔗 Dataset: Telco Customer Churn — Kaggle

🔍 Analysis Performed

The project includes SQL queries analyzing:

* Overall customer count
* Churned vs. retained customers
* Overall churn rate
* Churn rate by gender
* Churn rate by contract type
* Churn rate by internet service
* Churn rate by payment method
* Churn rate by tenure group
* Churn rate by monthly charges
* Churn rate by senior citizen status
* Churn rate by technical support
* Churn rate by online security
* Churn rate by paperless billing
* Average monthly charges by churn status

📈 Key Findings

* Overall churn rate: 26.54%
* Month-to-month customers showed a substantially higher churn rate than customers on longer-term contracts.
* Customers without Tech Support had a much higher churn rate than customers with Tech Support.
* Customers without Online Security also showed a substantially higher churn rate.
* Customers with Paperless Billing had a higher churn rate than customers without it.
* Customers who churned had a higher average monthly charge ($74.44) compared with retained customers ($61.27).

📁 Project Structure

SQL-Telco-Customer-Churn-Analysis/
│
├── SQL/
│   └── Telco_Customer_Churn_Analysis.sql
│
└── README.md

🎯 Business Objective

The analysis aims to identify customer groups with higher churn risk and provide data-driven insights that can help telecommunications companies improve customer retention and reduce customer loss.

👩‍💻 Author

Saba Nikara

Data Science | Data Analytics
