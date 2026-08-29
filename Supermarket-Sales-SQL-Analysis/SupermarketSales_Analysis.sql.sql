--supermarket sales analysis
--SQL Server Project
-----------------------------------
--dataset: supermarket sales
--objective: analysis sales, customers, branches, and product line using SQL
-----------------------------------
--A. overall sales analysis
-----------------------------------
--1. number of transactions
select count (Invoice_ID) from Sales
--2.total sales
select sum (sales) from Sales
--3.average sales
select AVG (sales) from Sales
-----------------------------------
--B. branch analysis
-----------------------------------
--4. total sales by branch
select BRANCH, SUM (sales)
from Sales
GROUP BY Branch
--5. average sales by branch
select Branch, AVG (sales)
from sales
group by branch
--6.number of transactions by branch
select branch, count (Invoice_Id)
from sales
group by branch
--7. total sales by customer type
select customer_type, sum (sales)
from sales
group by Customer_type
--8. number of transactions by customer type
select customer_type, count (Invoice_ID)
FROM SALES
group by Customer_type
--9. average sales by customer type
select customer_type, avg (sales)
from sales
group by Customer_type
--10. total sales by gender
select gender,sum (sales)
from sales
group by gender
--11. number of transactions by gender
select gender, count (Invoice_Id)
from sales
group by gender
--12.average sales by gender
select gender, avg(Sales)
from sales
group by gender
--13.total sales by product line
select product_line, sum (sales)
from sales
group by product_line
--14.number of transactions by product line
select product_line, count(invoice_id)
from sales
group by product_line
--15.average sales by product line
select product_line, avg (sales)
from sales
group by product_line
--16. product lines ranked by total sales
select product_line, sum (sales)
from sales
group by Product_line
order by sum (sales) desc
--17. top 3 product line by total sales
select top 3 product_line, sum (sales) as total_sales
from sales
group by Product_line
order by sum (sales) desc
--18. sales transactions for member customers
select*
from sales
where Customer_type= 'member'
--19.member and female customers
select*
from sales
where Customer_type='member'
And gender= 'female'
--20. member or female customers
select*
from sales
where Customer_type='member'
or gender='female'
--21.oroduct lines with total sales above 55000
select product_line, sum(sales) as total_sale
from sales
group by Product_line
having sum(sales)>55000
--22. highest single transactions
select max(sales) as highest_sales
from sales
--23. lowest single transaction
select min(sales) as lowest_sales
from sales
--24. overall sales summary
select count(invoice_id)as total_transactions,
       sum(sales) as total_sales,
	   avg(sales) as average_sales
from sales