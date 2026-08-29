Supermarket Sales SQL Analysis

📌 Project Overview

This project analyzes supermarket sales data using SQL Server to identify sales patterns, customer behavior, branch performance, and product line performance.

The analysis was performed using T-SQL in Microsoft SQL Server Management Studio (SSMS).

⸻

🎯 Project Objectives

The main objectives of this project are to:

* Analyze overall sales performance
* Compare sales across branches
* Analyze customer types and purchasing behavior
* Compare sales performance by gender
* Analyze product line performance
* Identify the highest and lowest sales transactions
* Extract useful business insights from sales data

⸻

📊 Dataset

The dataset contains 1,000 supermarket sales transactions.

Main Columns

Column	Description
Invoice_ID	Unique transaction identifier
Branch	Branch where the transaction occurred
City	City of the branch
Customer_type	Type of customer (Member / Normal)
Gender	Customer gender
Product_line	Product category
Unit_price	Price per unit
Quantity	Number of items purchased
Tax_5	5% tax amount
Sales	Total sales amount

⸻

🛠️ Tools & Technologies

* Microsoft SQL Server
* SQL Server Management Studio (SSMS)
* T-SQL
* GitHub

⸻

🔍 SQL Analysis

The project includes analysis using:

* SELECT
* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()
* GROUP BY
* ORDER BY
* TOP
* WHERE
* AND
* OR
* HAVING
* Column aliases using AS

⸻

📈 Key Insights

Overall Sales

* Total transactions: 1,000
* Total sales: 322,966.75
* Average sales per transaction: 322.97
* Highest single transaction: 1,042.65
* Lowest single transaction: 10.68

Customer Type

Member customers generated higher total sales than Normal customers.

* Member transactions: 565
* Normal transactions: 435
* Member average sales: 335.74
* Normal average sales: 306.37

Gender Analysis

Female customers generated higher sales and had a higher average transaction value.

* Female transactions: 571
* Male transactions: 429
* Female average sales: 340.93
* Male average sales: 299.06

Product Line Analysis

Food and beverages had the highest total sales:

56,144.84

Home and lifestyle had the highest average sales per transaction:

336.64

⸻

💡 Business Insights

The analysis suggests that:

1. Member customers contribute significantly to overall sales.
2. Member customers have a higher average transaction value than Normal customers.
3. Female customers generated more transactions and higher average sales than Male customers.
4. Food and beverages is the top-performing product line by total sales.
5. Product line performance is relatively balanced, with no single category dominating the overall sales.
6. Total sales and average transaction value can provide different perspectives on product performance.

⸻

📁 Project Structure

Supermarket-Sales-SQL-Analysis/
│
├── SupermarketSales_Analysis.sql
└── README.md

⸻

🚀 Conclusion

This project demonstrates the use of SQL for exploratory sales analysis and extracting business insights from transactional data.

It also provides practical experience with data aggregation, filtering, grouping, sorting, and business-oriented SQL analysis.

⸻

👩‍💻 Author

Saba Nikara

Data Analyst | SQL | Python | Power BI | Excel
