<h1>INSERT INTO to add row</h1>
INSERT INTO <tablename> (<column1>, <column2>, …)
VALUES (<value1>, <value2>, …);

```SQL
INSERT INTO artist (artist_id, name)
VALUES (1000,'Bob Dylan');

INSERT INTO contact (first_name, last_name, phone)
SELECT first_name, last_name, phone
FROM customer
WHERE country = 'USA';
```

<h1>Update</h1>

```SQL
UPDATE referral
SET email = 'r.faustino@email.com'
WHERE first_name = 'Randall';

UPDATE customer
SET address = '555 International Parkway', city = 'Orlando',state = 'FL', postal_code = '33133-1111'
WHERE customer_id = 16;

-- This return will allows us to see the data after we run it
UPDATE referral
SET email = 'r.faustino@email.com'
WHERE referral_id = 2
RETURNING *;

UPDATE track
SET unit_price = unit_price * .8;

UPDATE track
SET unit_price = unit_price * .8
WHERE album_id = 3
RETURNING *;
```

<h1>DELETE FROM to Remove Row</h1>
<h6>Delete</h6>

```SQL
DELETE FROM invoice_line
WHERE invoice_id BETWEEN 1 AND 10;

DELETE FROM invoice
WHERE invoice_id BETWEEN 1 AND 10;

DELETE FROM invoice_line
WHERE invoice_id > 50;

DELETE FROM invoice
WHERE invoice_id > 50;
```
