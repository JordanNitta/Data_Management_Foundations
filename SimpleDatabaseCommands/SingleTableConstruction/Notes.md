SQL Clauses
<ul>
<li>Most command to interact with a database is the SELECT statement, utilized to query request data from the database.</li>
<li>The wild card operator which is the * which stands for ALL columns.</li>
<li>The second clause is the WHERE its used to filter records, and inly return those rows/records when they fulfil a specific condition.</li>
</ul>

SELECT * FROM   
<tablename>;

```SQL 
SELECT email
FROM customer;

Displaying Mulitple Columns

SELECT first_name, last_name, email
FROM customer;

SELECT email, last_name, first_name
FROM customer;
```

<p>Order by to sort data</p>

```SQL
SELECT * FROM invoice ORDER BY billing_country;

SELECT customer_id, first_name, last_name 
FROM customer
ORDER BY first_name;
```

<p>WHERE to Filter Data</p>
<p>If there no value that = that number then you will get a message saying Query ran successfully. 0 rows to display</p>

```SQL
SELECT * FROM customer
WHERE customer_id = 1000;
```

<p>Filtering String</p>
<p>SQL requires single quotes around text values</p>

```SQL
SELECT * FROM customer
WHERE first_name = 'Bob';
```

<p>Comparison Operators</p>
<p>= means equal to</p>
<p>< means less than</p>
<p><= means less than or equal to</p>
<p>> means greater than</p>
<p>>= means greater than or equal to</p>
<p><> means not equal to</p>

```SQL
SELECT * FROM invoice
WHERE total > 14;

SELECT * FROM invoice
WHERE total >= 14;
```

<p>LIKE to Search Data</p>
<h6>The % represents zero, or more character or numbers</h6>
<h6>The underscore _ represents a single character or numbers</h6>

<p>The % Operator</p>
<h6>If we wanted to query our table and list all names that start with the letter L we would use the % wildcard operator after the Letter L</h6>

```SQL
SELECT * FROM customer
WHERE first_name LIKE 'L%';
```
<h6>If we wanted the letter before are given value we would put the wildcard in front</h6>

```SQL
SELECT * FROM customer
WHERE email LIKE '%@gmail.com'; 
```

<p>The _ Operator</p>
<h6>This allows us to look for a specific length of character</h6>

```SQL
SELECT * FROM customer
WHERE state LIKE 'C_'; -- Looks for two character starting with letter C

SELECT * FROM customer
WHERE state LIKE 'U__' -- Looks for three character starting with letter U
```

<p>Combining Wild Cards</p>

```SQL
SELECT * FROM customer
WHERE last_name LIKE 'S__%';

SELECT * FROM customer
WHERE last_name LIKE 'S_______%r';

SELECT * FROM customer
WHERE phone LIKE '+1 (___) ___-____';

SELECT * FROM customer
WHERE email like 'm%@a%.%';
```


 



