CREATE DATABASE sales_insights;
use sales_insights;

SELECT * from sales_insights;

## aggregated functions 

SELECT COUNT(*) from sales_insights;
SELECT COUNT(DISTINCT(transaction_id)),average_values
FROM sales_insights
GROUP BY average_values;


## handling null VALUES
SELECT * from sales_insights 
WHERE customer_id is NULL;


## fillter datas

SELECT customer_id ,average_values  from sales_insights
WHERE average_values >= 10
ORDER BY customer_id ,average_values DESC;


## region contains only Asia from sales_insights

CREATE DATABASE Asia_sales_insights;
use Asia_sales_insights;

SELECT * FROM Asia_sales_insights;

## Q1 find out the loyalty program based on asia 
SELECT region , Retention_Strategy
from Asia_sales_insights
WHERE Retention_Strategy = 'Loyalty Program';

## Q2 find out the count of loyality program based on Asia 

SELECT region , count(Retention_Strategy) as loyalty_programs 
from Asia_sales_insights
WHERE Retention_Strategy = 'Loyalty Program'
GROUP BY region ; 






