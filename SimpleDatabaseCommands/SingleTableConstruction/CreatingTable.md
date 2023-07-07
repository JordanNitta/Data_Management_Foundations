<p>Rules and Data Types</p>
<ol>
    <li>The table and columns names must start with a letter</li>
    <li>The table and column names can only contain letters, numbers and underscored</li>
    <li>The table and column names should not contain spaces</li>
    <li>The table and column names have a limited length of characters that can be used</li>
</ol>

<p>Data Types<p>
<ul>
    <li>Boolean: Stores true, false, or null (no value).</li>
    <li>CHAR(n): A fixed-length character of length n with space added. If a string is added to the column that is shorter than the fixed length, PostgreSQL pads extra spaces up to the length (n) of the column. If we try to insert a value that is longer than the length of the column, an error will be generated.</li>
    <li>VARCHAR(n): A variable-length character string that can store up to n characters. Note that with VARCHAR, unlike CHAR, PostgreSQL does not pad the spaces when the stored string is shorter than the length of the column.</li>
    <li>TEXT: A variable-length character string that has unlimited length.</li>
    <li>SMALLINT: A small integer is a 2-byte signed integer that has a range between -32,768 to 32,767.</li>
    <li>INT: An integer is a 4-byte integer that has a range between -2,147,483,648 to 2,147,483,647.</li>
    <li>SERIAL: The serial is the same as an integer but PostgreSQL will automatically generate and populate the values into this column. We’ll cover this in an upcoming tutorial.</li>
    <li>Float(n): This is a floating-point number that specifies precision that can be up to 8 bytes.</li>
    <li>Real: A 4-byte floating-point number.</li>
    <li>Numeric(p,s): A real number that has p digits, with s number of digits that are displayed after the decimal point.</li>
    <li>date (does not include time)</li>
    <li>Time: Stores the time of day values.</li>
    <li>Timestamp: Stores both the date and time values.</li>
</ul>
<p>Common Constraints for a column included</p>
<ul>
    <li>PRIMARY KEY: column, or group of columns, uniquely identify a row</li>
    <li>REFERENCES (Foreign Key): value in column must match the primary key in another table</li>
    <li>NOT NULL: column must have a value, it cannot be empty (null)</li>
    <li>UNIQUE: data in this column must be unique among all rows in the table</li>
</ul>
<p>Using Create Table Command</p>

```SQL
CREATE TABLE people ( 
    first_name VARCHAR(50), 
    last_name VARCHAR(50),  
    … );
```

<h6>Primary key constraint. The PRIMARY KEY constraint uniquely identifies a row in a table.</h6>
<h6>It gives us a NOT NULL constraint which ensures of a value has to exist for this column</h6>

```SQL
CREATE TABLE contact( 
    id serial PRIMARY KEY, -- Primary Key serial auto increments
    username VARCHAR(50), 
    password VARCHAR(50) 
    );
```
<h6>Primary Key and Auto-Increment</h6>

```SQL
-- REFERENCES creates a FK constraint
CREATE TABLE musicians (
  id serial PRIMARY KEY,
  name varchar NOT NULL,
  quote text,
  band_id integer NOT NULL REFERENCES bands (id)
);
```

<p>CHECK to Validate Data</p>
<h6>Check is a unique constraint that verifies that the values being added to a column meet a specific requirement</h6>
<h6>If the check is valid the database will then insert or update those values to the column</h6>
<h6>If not valid it will throw an error</h6>

```SQL
CREATE TABLE member (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR (50),
	last_name VARCHAR (50),
	birth_date DATE CHECK (birth_date > '1900-01-01'),
	joined_date DATE CHECK (joined_date > birth_date),
	opt_in CHAR(1) CHECK (opt_in IN ('Y','N')),
	membership_fee numeric CHECK(membership_fee > 0)
);
```

<p>UNIQUE to Validate Data</p>
<h6>The keyword unique allows us to make sure the value entered into are database is one of a kind and not the same</h6>

```SQL
CREATE TABLE contact(
    contact_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE, --Username won't allow same values
    password VARCHAR(50)
);
```

<p>Alter Table to Change Columns: Add/Drop</p>
<h6>There our three options ADD, MODIFY, DROP</h6>
<h6>Any Changes we make to our table we will need to use ALTER TABLE</h6>

```SQL
ALTER TABLE contact
ADD username VARCHAR(50);
```

<h6>Dropping Column<h6>

```SQL
ALTER TABLE contact
DROP username
DROP email;
```

<p>ALTER TABLE to change Columns: Data Type</p>
<h6>Changin Columns Syntax:</h6>
ALTER TABLE <tablename>
ALTER COLUMN <columnname>
TYPE <newdatatype>;

```SQL
CREATE TABLE contact( 
    id serial PRIMARY KEY, 
    username VARCHAR(50), 
    password VARCHAR(50), 
    opt_in int 
);  

ALTER TABLE contact
ALTER COLUMN opt_in
TYPE CHAR(1);

-- You can have nested ALTER
ALTER TABLE registration
ALTER COLUMN first_name
TYPE VARCHAR(50),
ALTER COLUMN email
TYPE VARCHAR(100);
```
