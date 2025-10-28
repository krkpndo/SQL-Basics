USE db_name;
-- switching database

CREATE DATABASE db_name;
-- creating new database

DROP DATABASE fb_name;
-- deleting a database

CREATE TABLE table_name (
    column_name constraints
);
-- creating a table

DROP TABLE table_name;
-- deleting a table

ALTER TABLE table_name ADD COLUMN column_name;
-- adding a column

ALTER TABLE table_name CHANGE old_column_name new_column_name constraints;
-- renaming a column

ALTER TABLE table_name MODIFY COLUMN column_name new_constraints;
-- changing data type/constraints

ALTER TABLE table_name ADD UNIQUE (id);
-- adding UNIQUE constraint

PRIMARY KEY constraint
-- is used to uniquely identify each record in a table.

FOREIGN KEY constraint 
-- is used to prevent actions that would destroy links between tables.

CHECK constraint
-- is used to limit the value range that can be placed in a column.

DEFAULT constraint
-- is used to set a default value for a column.

SELECT column1, column2, ... FROM table_name;
-- is used to select data from a database.


-- Create a database named music_db
    -- Write your query here

    CREATE DATABASE music_db;

-- Create a table named songs with columns song_name, artist, composer, singer, genre, duration, album set song_id as the primary key and set the duration data type to int (Kaw na bahala kung alin ang nullable and hindi)
    -- Write your query here

    USE music_db;

    CREATE TABLE songs (
        song_id INT AUTO_INCREMENT,
        song_name VARCHAR(50) NOT NULL,
        artist VARCHAR(50) NOT NULL,
        composer VARCHAR(50) NOT NULL,
        singer VARCHAR(50),
        genre VARCHAR(30) NOT NULL,
        duration INT NOT NULL,
        album VARCHAR(50),
        PRIMARY KEY (song_id)
    );

-- Add the release_year column to the songs table
    -- Write your query here

    ALTER TABLE songs 
    ADD COLUMN release_year YEAR;

-- Change the song_name column into title column
    -- Write your query here

    ALTER TABLE songs 
    CHANGE song_name title VARCHAR(50) NOT NULL;

-- Change duration data type into TIME
    -- Write your query here
    
    ALTER TABLE songs 
    MODIFY COLUMN duration TIME NOT NULL;

-- Set 'Others' as a DEFAULT constraint for the column genre
    -- Write your query here
    
    ALTER TABLE songs 
    ALTER genre SET DEFAULT 'Others';

-- Insert 20 data to the the songs table
    -- Write your query here

    INSERT INTO songs (title, artist, composer, singer, genre, duration, album, release_year) 
    VALUES
    ('Love Story', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Country', '00:03:55', 'Fearless', 2008),
    ('Blank Space', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Pop', '00:03:51', '1989', 2014),
    ('Anti-Hero', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Pop', '00:03:20', 'Midnights', 2022),
    ('Shake It Off', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Pop', '00:03:39', '1989', 2014),
    ('Cardigan', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Indie', '00:03:59', 'Folklore', 2020),
    ('Willow', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Indie Pop', '00:03:34', 'Evermore', 2020),
    ('Cruel Summer', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Pop', '00:02:58', 'Lover', 2019),
    ('You Belong With Me', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Country Pop', '00:03:51', 'Fearless', 2008),
    ('Delicate', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Synth Pop', '00:03:52', 'Reputation', 2017),
    ('Style', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Pop', '00:03:51', '1989', 2014),
    ('Bad Blood', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Pop', '00:03:19', '1989', 2014),
    ('Enchanted', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Pop Rock', '00:05:52', 'Speak Now', 2010),
    ('Mean', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Country', '00:03:58', 'Speak Now', 2010),
    ('Back To December', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Pop', '00:04:53', 'Speak Now', 2010),
    ('Wildest Dreams', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Dream Pop', '00:03:40', '1989', 2014),
    ('All Too Well', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Pop Rock', '00:05:29', 'Red', 2012),
    ('22', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Pop', '00:03:52', 'Red', 2012),
    ('Bejeweled', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Synth Pop', '00:03:14', 'Midnights', 2022),
    ('Lavender Haze', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Pop', '00:03:22', 'Midnights', 2022),
    ('The Archer', 'Taylor Swift', 'Taylor Swift', 'Taylor Swift', 'Synth Pop', '00:03:31', 'Lover', 2019);

-- Select all the data from the songs table
    -- Write your query here

    SELECT * FROM songs;

-- Select the id, title, and album columns from the songs table
    -- Write your query here

    SELECT song_id, title, album FROM songs;

-- Select all the distinct genre from the song table
    -- Write your query here

    SELECT DISTINCT genre FROM songs;

-- Count all the distinct songs based from its genre
    -- Write your query here

    SELECT COUNT(DISTINCT genre) FROM songs

-- Change duration data type into TIME
    -- Write your query here

    ALTER TABLE songs 
    MODIFY COLUMN duration TIME NOT NULL;

-- Using SELECT statement, perform a query that uses the WHERE clause. 
-- (Kaw na po bahala sa conditions, gawa ka mga 3 queries for this)
    -- Write your query here

    -- 1. Select songs released after 2020

    SELECT * FROM songs 
    WHERE release_year > 2020;

    -- 2. Select songs that belong to the Pop genre

    SELECT * FROM songs 
    WHERE genre = 'Pop';

    -- 3. Select songs with duration longer than 4 minutes

    SELECT * FROM songs
    WHERE duration > '00:04:00';


-- Select all the data from the songs table and sort it in ascending order based on the song title
    -- Write your query here

    SELECT * FROM songs 
    ORDER BY title ASC;


-- Select all the data from the songs table and sort it in descending order based on the release year
    -- Write your query here

    SELECT * FROM songs
    ORDER BY release_year DESC;

    -- Columns: product_name, brand, category, shade, price, stock, description, date_added, isAvailable

    ('Superstay Matte Ink Liquid Lipstick', 'Maybelline', 'Lipstick', 'Pioneer', 349, 80)
    ('True Match Liquid Foundation', "L'Oreal Paris", 'Foundation', 'Golden Beige', 599, 40)
    ('Ultra Brow Pencil', 'Revlon', 'Brows', 'Dark Brown', 299, 60)
    ('Butter Blush', 'Physicians Formula', 'Blush', 'Natural Glow', 549, 45)
    ('Airy Matte Lipstick', 'BLK Cosmetics', 'Lipstick', 'Mocha Latte', 379, 150)
    ('Second Skin Serum Cushion Foundation', 'Happy Skin', 'Foundation', 'Soft Beige', 999, 95)
    ('Fluffmate Lipstick', 'Sunnies Face', 'Lipstick', 'Girl Crush', 495, 200)
    ('Aura Contour Powder', 'Vice Cosmetics', 'Contour', 'Confezzz', 245, 180)
    ('Glass Tint', 'Detail Cosmetics', 'Lip Tint', 'Berry Juice', 299, 130)
    ('Universal Brow Stick', 'BLK Cosmetics', 'Brows', 'Natural Brown', 329, 110)
    ('Holy Grail Mascara', 'Happy Skin', 'Mascara', 'Black', 699, 85)
    ('Face Glass Highlighter', 'Sunnies Face', 'Highlighter', 'Sunset Glow', 496, 160)
    ('Aura Blush', 'Vice Cosmetics', 'Blush', 'Title of Our Love', 245, 190)
    ('Velvet Flush Cream Tint', 'Detail Cosmetics', 'Others', 'Peach Pop', 249, 140)

-- Make any query and use AND, OR, NOT operator
    -- Write your query here

    SELECT * FROM products
    WHERE category = 'Lipstick' AND price < 400 OR NOT brand = 'Maybelline';

-- Perform an Update Query on certain product/s changing its availability
    -- Write your query here

    UPDATE products
    SET isAvailable = FALSE
    WHERE stock < 50;

-- Perform a Delete Query on certain product/s which are not available
    -- Write your query here

    DELETE FROM products
    WHERE brand = Revlon;

-- Select all the remaining products but limit the returned data to 5 and arrange its order in descending stocks
    -- Write your query here

    SELECT * FROM products
    ORDER BY stock DESC
    LIMIT 5;

-- Select the product with the least stock
    -- Write your query here

    SELECT product_name, brand, stock
    FROM products
    WHERE stock = (SELECT MIN(stock) FROM products);

-- Select the product with the most stock
    -- Write your query here

    SELECT product_name, brand, stock
    FROM products
    WHERE stock = (SELECT MAX(stock) FROM products);

-- Select the total number of product stocks of a certain brand
    -- Write your query here

    SELECT brand, SUM(stock) AS total_stock
    FROM products
    WHERE brand = 'BLK Cosmetics';

-- Perform any Update Query
    -- Write your query here

    UPDATE products
    SET price = 499
    WHERE brand = 'Detail Cosmetics';

-- Perform two queries using aggregate functions
    -- Write your query here

    SELECT COUNT(*) AS total_products FROM products;
    SELECT MAX(price) AS highest_price, MIN(price) AS lowest_price FROM products;


-- Creating table with primary key and foreign key/s
    -- Example
        CREATE TABLE playlists_songs (
	id INT NOT NULL AUTO_INCREMENT,
	playlist_id INT NOT NULL,
	song_id INT NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_playlists_songs_playlist_id
		FOREIGN KEY (playlist_id) REFERENCES playlists(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_playlists_songs_song_id
		FOREIGN KEY (song_id) REFERENCES songs(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- USE ecommerce_db database

USE ecommerce_db;

-- Create new 'employees' table with columns employee_id, first_name, last_name, department, salary, hire_data, city

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary INT NOT NULL,
    hire_date DATE NOT NULL,
    city VARCHAR(50),
    PRIMARY KEY (employee_id)
);

-- Insert the following data in the table:

INSERT INTO employees (first_name, last_name, department, salary, hire_date, city)
VALUES
('John', 'Smith', 'Sales', 45000, '2018-06-12', 'New York'),
('Sarah', 'Johnson', 'IT', 65000, '2019-09-20', 'Los Angeles'),
('Robert', 'Brown', 'HR', 52000, '2016-04-02', 'Chicago'),
('Emily', 'Davis', 'IT', 72000, '2021-01-10', 'New York'),
('Michael', 'Wilson', 'Sales', 48000, '2017-12-01', 'Boston'),
('Jessica', 'Miller', 'HR', 53000, '2015-11-15', 'Miami'),
('David', 'Martinez', 'Sales', 39000, '2020-08-19', 'Chicago'),
('Laura', 'Garcia', 'Marketing', 60000, '2019-03-25', 'Los Angeles');


| employee_id | first_name | last_name | department | salary | hire_date  | city        |
| ----------- | ---------- | --------- | ---------- | ------ | ---------- | ----------- |
| 1           | John       | Smith     | Sales      | 45000  | 2018-06-12 | New York    |
| 2           | Sarah      | Johnson   | IT         | 65000  | 2019-09-20 | Los Angeles |
| 3           | Robert     | Brown     | HR         | 52000  | 2016-04-02 | Chicago     |
| 4           | Emily      | Davis     | IT         | 72000  | 2021-01-10 | New York    |
| 5           | Michael    | Wilson    | Sales      | 48000  | 2017-12-01 | Boston      |
| 6           | Jessica    | Miller    | HR         | 53000  | 2015-11-15 | Miami       |
| 7           | David      | Martinez  | Sales      | 39000  | 2020-08-19 | Chicago     |
| 8           | Laura      | Garcia    | Marketing  | 60000  | 2019-03-25 | Los Angeles |

-- 1. Using Aggregate Functions

-- Find the total number of employees.

SELECT COUNT(*) AS total_employees
FROM employees;

-- Find the average salary of all employees.

SELECT AVG(salary) AS average_salary
FROM employees;

-- Find the highest and lowest salary in the company.
--Highest
SELECT last_name, department, salary AS highest_salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

--Lowest
SELECT last_name, department, salary AS lowest_salary
FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);

-- Find the total salary cost per department.

SELECT department, 
    SUM(salary) AS total_salary_cost
FROM employees
GROUP BY department;

-- Find the average salary of employees hired after 2018.

SELECT AVG(salary)
FROM employees
WHERE hire_date > '2018-12-31';

-- 2. Using LIKE and Wildcards

-- Find all employees whose first name starts with J.

SELECT *
FROM employees
WHERE first_name LIKE 'J%';

-- Find all employees whose last name ends with son.

SELECT *
FROM employees
WHERE last_name LIKE '%son';

-- Find all employees whose last name contains ar.

SELECT *
FROM employees
WHERE last_name LIKE '%ar%';

-- Find all employees whose first name has exactly 5 letters.
-- (Hint: use _ wildcard for single characters)

SELECT *
FROM employees
WHERE first_name LIKE '_____';


-- 3. Using IN

-- Find all employees who work in the departments Sales or HR.

SELECT *
FROM employees
WHERE department IN ('Sales', 'HR');

-- Find all employees located in either New York, Chicago, or Miami.

SELECT *
FROM employees
WHERE location IN ('New York', 'Chicago', 'Miami');

-- Find all employees whose salary is one of these: 45000, 53000, 72000.

SELECT *
FROM employees
WHERE salary IN (45000, 53000, 72000);


-- 4. Using BETWEEN

-- Find all employees with a salary between 50,000 and 70,000.

SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 70000;

-- Find employees hired between '2018-01-01' and '2020-12-31'.

SELECT *
FROM employees
WHERE hire_date BETWEEN '2018-01-01' AND '2020-12-31';


-- 5. Using Aliases

-- Display employee full name as a single column called employee_name.

-- idk po hehheeh

-- Display department names and their average salary with alias average_salary.

SELECT 
    department AS department_name,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- Display first_name, last_name, and salary labeled as Employee, Family Name, and Monthly Pay.

SELECT first_name AS Employee, 
       last_name AS Family_Name, 
       salary AS Monthly_Pay
FROM employees;

-- 6. Bonus (Mixing Concepts)

-- Find all employees in IT or Marketing whose salary is between 60,000 and 75,000.

SELECT *
FROM employees
WHERE department IN ('IT', 'Marketing') AND salary BETWEEN 60000 AND 75000;

-- Find all employees whose city contains “o” and who were hired after 2018.

SELECT *
FROM employees
WHERE city LIKE '%o%' AND hire_date > '2018-12-31';

-- Show each department’s number of employees and average salary, but only for departments whose average salary exceeds 55,000.

SELECT 
    department,
    COUNT(*) AS number_of_employees,
    AVG(salary) AS average_salary
FROM employees
WHERE salary > 55000;
GROUP BY department


--- ERD HERE ----

CREATE DATABASE insurance_db;
USE insurance_db;

--okay na
CREATE TABLE policy (
    id INT AUTO_INCREMENT PRIMARY KEY,
    policy_number INT NOT NULL,
    policy_effective_date DATE NOT NULL,
    policy_expire_date DATE NOT NULL,
    payment_option VARCHAR(25),
    total_amount INT NOT NULL,
    active BOOLEAN DEFAULT TRUE,
    additional_info VARCHAR(50),
    created_date DATE DEFAULT (CURRENT_DATE)
);

--okay na
CREATE TABLE coverage (
    id INT AUTO_INCREMENT PRIMARY KEY,
    policy_id INT NOT NULL,
    coverage_name VARCHAR(25) NOT NULL,
    coverage_group VARCHAR(25) NOT NULL,
    code INT NOT NULL,
    isPolicyCoverage BOOLEAN DEFAULT FALSE,
    isVehicleCoverage BOOLEAN DEFAULT FALSE,
    description VARCHAR(50),
    CONSTRAINT fk_coverage_policy_id FOREIGN KEY (policy_id) REFERENCES policy(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

--okay na
CREATE TABLE bill (
    id INT AUTO_INCREMENT PRIMARY KEY,
    policy_id INT NOT NULL,
    due_date DATE NOT NULL,
    amount INT NOT NULL,
    status VARCHAR(30),
    CONSTRAINT fk_bill_policy_id FOREIGN KEY (policy_id) REFERENCES policy(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

--oks na rin
CREATE TABLE policy_coverage (
    id INT AUTO_INCREMENT PRIMARY KEY,
    coverage_id INT NOT NULL,
    policy_id INT NOT NULL,
    active BOOLEAN DEFAULT TRUE,
    created_date DATE DEFAULT (CURRENT_DATE),
    CONSTRAINT fk_policy_coverage_coverage_id FOREIGN KEY (coverage_id) REFERENCES coverage(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_policy_coverage_policy_id FOREIGN KEY (policy_id) REFERENCES policy(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

--oks na
CREATE TABLE policy_edit_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    policy_id INT NOT NULL,
    edited_table_name VARCHAR(50),
    edited_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    additional_info VARCHAR(100),
    edited_by VARCHAR(50),
    CONSTRAINT fk_policy_edit_policy_id FOREIGN KEY (policy_id) REFERENCES policy(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE vehicle (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_name VARCHAR(50),
    model VARCHAR(50),
    plate_number VARCHAR(20),
    created_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

--hindi oks, kasi wala ata vehicle na table :>> idk po hehe, should i add? ano po content
CREATE TABLE vehicle_coverage (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_id INT NOT NULL,
    coverage_id INT NOT NULL,
    active BOOLEAN DEFAULT TRUE,
    created_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_vehicle_coverage_vehicle_id FOREIGN KEY (vehicle_id) REFERENCES vehicle(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_vehicle_coverage_coverage_id FOREIGN KEY (coverage_id) REFERENCES coverage(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

INSERT INTO policy (policy_number,policy_effective_date, policy_expire_date, payment_option, total_amount, active, additional_info)
VALUES
    (001, '2025-10-24', '2026-10-24', 'Bank Transfer', 3000, TRUE, 'Premium')
    (002, '2025-09-15', '2026-09-15', 'Credit Card', 4500, TRUE, 'Standard Plan'),
    (003, '2025-08-10', '2026-08-10', 'Cash', 2500, TRUE, 'Basic Coverage'),
    (004, '2025-07-01', '2026-07-01', 'Online Payment', 5200, FALSE, 'Expired Policy'),
    (005, '2025-06-05', '2026-06-05', 'Bank Transfer', 4000, TRUE, 'Renewal');




-- SQL JOIN
    -- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

    -- INNER JOIN
        -- The INNER JOIN keyword returns only rows with a match in both tables.


-- Start Here

-- 1. Create a database called Bookstore.


-- 2. Create a table called Books with the following columns:

    -- BookID (integer, primary key)

    -- Title (varchar 100, cannot be null)

    -- Author (varchar 100)

    -- Price (decimal)

    -- PublishedYear (integer)

    -- Genre (varchar 50)


-- 3. Create a table called Customers with the following columns:

    -- CustomerID (integer, primary key)

    -- Name (varchar 100, cannot be null)

    -- Email (varchar 100)

    -- Phone (varchar 20)

    -- City (varchar 50)


-- 4. Insert at least 5 rows into Books and 5 rows into Customers. Make sure to include:

    -- At least one NULL value in Email or Phone for customers.

    -- Books with different genres and years.


-- 5. Basic Select Queries

    -- Select all columns from the Books table.

    -- Select only the Title and Price from Books.

    -- Select all distinct genres from the Books table.


-- 6. Using WHERE, AND, OR, NOT

    -- Select all books where Price is greater than 500.

    -- Select all customers who live in "Manila" and have an email.

    -- Select books not published in 2020.

    -- Select customers whose city is "Cebu" or "Davao".


-- 7. ORDER BY and LIMIT

    -- Select all books ordered by Price from highest to lowest.

    -- Select the 3 cheapest books.

    -- Select customers ordered alphabetically by Name.


-- 8. Update and Delete

    -- Update the price of a book with BookID = 2 to 600.

    -- Delete a customer whose CustomerID = 5.


-- 9. Aggregate Functions

    -- Find the average price of all books.

    -- Find the maximum and minimum price of books.

    -- Count the total number of books.

    -- Count the number of customers with a NULL email.


-- 10. LIKE, Wildcards, IN, BETWEEN

    -- Select all books whose title contains "Harry".

    -- Select all authors whose name starts with "J".

    -- Select books with Price between 200 and 500.

    -- Select customers who live in either "Manila", "Cebu", or "Davao" using IN.


-- 11. Aliases

    -- Select the Title as BookTitle and Price as BookPrice.

    -- Find the average book price and show it as AvgPrice.


-- 12. Gawa ka lang tables for this ERD :)

    -- https://landing.moqups.com/img/_optimized/templates/diagrams/erd/database-diagram/database-diagram-1600-w2000.avif