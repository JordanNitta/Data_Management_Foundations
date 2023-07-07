``` SQL
SELECT AVG(total)
FROM invoice;

SELECT COUNT(customer_id)
FROM customer
WHERE country = 'USA';

SELECT MAX(total)
FROM invoice
WHERE invoice_date between '2009-01-01' AND '2010-01-01';

SELECT MIN(total)
FROM invoice
WHERE invoice_date < '2011-01-01';

SELECT SUM(quantity)
FROM invoice_line;
```

<h1>Limit Clause</h1>
<h6>Optional Clause added at the end of a SELECT query</h6>
<h6>It allows to explore data in smallers set and returns the data faster<h6>

```SQL
SELECT <columns>
FROM <tablename>
LIMIT <rowcount>;

SELECT *
FROM invoice
ORDER BY total DESC
LIMIT 5;

SELECT *
FROM invoice
WHERE billing_country = 'Belgium'
ORDER BY total DESC
LIMIT 10;
```

<h1>Offset Clause</h1>
<h6>If you want to skip a number of rows we can use the OFFSET clause </h6>

```SQL
SELECT <columns>
FROM <tablename>
LIMIT <rowcount>
OFFSET <rowstoskip>;
```

```SQL
-- Max total
SELECT MAX(total) AS max_total
FROM invoice
WHERE billing_country = 'Canada';
```

<h1>COUNT TO Count Records</h1>
<h6></h6>

```SQL
SELECT COUNT(*) 
FROM customer;

SELECT COUNT(company) 
FROM customer;

SELECT company 
FROM customer
WHERE company IS NOT null;

SELECT COUNT(state) 
FROM customer;
```

<h1>Counting Distinct Values</h1>
<h6>Distinct Allows us to search table without reapeating rows</h6>

```SQL
SELECT COUNT (DISTINCT state) 
FROM customer;

SELECT COUNT(DISTINCT support_rep_id) 
FROM customer;

select COUNT(track)
FROM track
WHERE genre_id != 1;

SELECT * sum(total)
FROM invoice
WHERE invoice_date BETWEEN '2010-01-01'
AND '2011-01-01';

SELECT AVG(milliseconds)
FROM track
WHERE genre_id = 1;
```

<h1>ROUND to Round Numbers</h1>
<h6>Using the ROUND Function</h6>
<h6>ROUND to nearest int or decimal place</h6>

```SQL
UPDATE track SET unit_price = .49 WHERE track_id = 1;
UPDATE track SET unit_price = .51 WHERE track_id = 2;
UPDATE track SET unit_price = .55 WHERE track_id = 3;
UPDATE track SET unit_price = .01 WHERE track_id = 4;
UPDATE track SET unit_price = .91 WHERE track_id = 5;
UPDATE track SET unit_price = .95 WHERE track_id = 6;

SELECT track_id, unit_price, 
ROUND(unit_price), 
ROUND(unit_price,1),
ROUND(unit_price,2),
ROUND(unit_price,3) 
FROM track
ORDER BY track_id
LIMIT 6;
```

<h6>Using the SELECT statement, query the invoice table to find the average total cost for all orders purchased by the customer_id equal to 1, rounded to the nearest cent.</h6>

```SQL
SELECT ROUND(AVG(total),2) 
FROM invoice
WHERE customer_id = 1;
```

<h1>GROUP BY to Combine Data</h1>
<h6>The GROUP BY clause in the SELECT statement can help to divide the rows that are being returned from the SELECT statement into specific groups. We can then apply an aggregate function to each group.</h6>

<h6>Using the GROUP BY clause and the count aggregate function, filter the customer table to group the customers based on country. 
How many customers are in the USA?</h6>

```SQL
SELECT country, COUNT(*)
FROM customer
GROUP BY country;
```

<h1>HAVING to Filter On Aggregates</h1>
<h6> It is used with the GROUP BY clause that divides rows into groups.<h6>
<h6></h6>

```SQL
SELECT album_id, COUNT(*)
FROM track
GROUP BY album_id
HAVING COUNT(album_id) > 34;

SELECT billing_country, COUNT(total) 
FROM invoice
GROUP BY billing_country
HAVING SUM(total) > 50
ORDER BY SUM(total);

SELECT invoice_id, SUM(unit_price * quantity)
FROM invoice_line
GROUP BY invoice_id
HAVING SUM(unit_price * quantity) > 1
ORDER BY invoice_id;
```