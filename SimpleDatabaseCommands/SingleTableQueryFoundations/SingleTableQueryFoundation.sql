-- Which SQL clause identifies one or more tables as the source for a query?
-- Answer FROM

-- Which of these SELECT statements would successfully display exactly three columns of data from the customer table?
SELECT first_name, last_name, customer_id FROM customer 

-- Using the ORDER BY clause, sort the employee table in the database by the last name of the employee in descending order. Identify the 6th last name in the list.
SELECT * FROM employee
ORDER BY last_name DESC

-- Using the WHERE clause, filter the customer table to include individuals that live in the state CA. Identify the last name of the 2nd individual listed.
SELECT last_name FROM customer
WHERE state = 'CA'
LIMIT 2;

-- Using the BETWEEN operator, filter the invoice table to find the invoices dated between 2010-01-13 and 2010-03-21. 
SELECT * FROM invoice
WHERE invoice_date 
BETWEEN '2010-01-13'
AND '2010-03-21';