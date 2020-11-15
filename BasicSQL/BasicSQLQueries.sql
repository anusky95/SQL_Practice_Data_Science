/* LIMIT shows the first n number of rows */

SELECT *
FROM orders
LIMIT 10;


/*
ORDER AND DESC Queries for returning top 10 results

Write a query to return the lowest 20 orders in terms of smallest total_amt_usd. 
Include the id, account_id, and total_amt_usd.
*/

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd ASC
LIMIT 20;


/*Write a query to return the HIGHEST 10 orders in terms of smallest total_amt_usd. 
Include the id, account_id, and total_amt_usd.
*/

SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC
LIMIT 10;

NOTE : When there are more than 1 column, ORDER BY uses left most column

/*Pulls the first 10 rows and all columns from the orders table that have a total_amt_usd less than 500
*/

SELECT *
FROM orders
where total_amt_usd < 500
LIMIT 10;


/*Write a query that finds the percentage of revenue that comes from poster paper for each order. You will need to use only the columns that end with _usd. (Try to do this without using the total column.) Display the id and account_id fields also.
*/

SELECT id, account_id, 
poster_amt_usd/poster_qty as poster_price_revenue
FROM orders;


/* All orders whose names start with 's' */

SELECT *
FROM orders
WHERE name like 's%';


/* All orders whose names end with 's' */
SELECT *
FROM orders
WHERE name like '%s';


/* All orders whose names contain 's' */
SELECT *
FROM orders
WHERE name like '%s%';


/* All orders whose names does not contain 's' */
SELECT *
FROM orders
WHERE name not like '%s%';


/* SELECT if employee names are Tom, Joe or Harry */
SELECT *
FROM employee
WHERE names in ('Tom','Joe','Harry');


/* SELECT records where salary is greater than 1000 and less than 2000 */
SELECT *
FROM salarydetails
WHERE salary >= 1000 and 
salary <=2000;

/* using between */
SELECT *
FROM salarydetails
WHERE salary between 1000 and 2000;



/* Write a query that returns a list of orders where the standard_qty 
is zero and either the gloss_qty or poster_qty is over 1000.*/

SELECT *
FROM ORDERS
WHERE standard_qty=0
AND (gloss_qty>1000
OR poster_qty>1000);


