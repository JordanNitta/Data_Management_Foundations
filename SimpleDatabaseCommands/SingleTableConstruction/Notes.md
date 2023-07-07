SQL Clauses

Most command to interact with a database is the SELECT statement, utilized to query request data from the database.
The wild card operator which is the * which stands for ALL columns.
The second clause is the WHERE its used to filter records, and inly return those rows/records when they fulfil a specific condition.
~~~SQL 
SELECT * FROM   
<tablename>;

~~~SQL 
SELECT email
FROM customer;

Displaying Mulitple Columns
~~~SQL
SELECT first_name, last_name, email
FROM customer;

~~~SQL
SELECT email, last_name, first_name
FROM customer;



