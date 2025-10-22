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

-- Create a table named songs with columns song_name, artist, composer, singer, genre, duration, album set song_id as the primary key and set the duration data type to int (Kaw na bahala kung alin ang nullable and hindi)
    -- Write your query here

-- Add the release_year column to the songs table
    -- Write your query here

-- Change the song_name column into title column
    -- Write your query here

-- Change duration data type into TIME
    -- Write your query here

-- Set 'Others' as a DEFAULT constraint for the column genre
    -- Write your query here

-- Insert 20 data to the the songs table
    -- Write your query here

-- Select all the data from the songs table
    -- Write your query here

-- Select the id, title, and album columns from the songs table
    -- Write your query here

-- Select all the distinct genre from the song table
    -- Write your query here

-- Count all the distinct songs based from its genre
    -- Write your query here

-- Change duration data type into TIME
    -- Write your query here

-- Using SELECT statement, perform a query that uses the WHERE clause. (Kaw na po bahala sa conditions, gawa ka mga 3 queries for this).
    -- Write your query here

-- Select all the data from the songs table and sort it in ascending order based on the song title
    -- Write your query here

-- Select all the data from the songs table and sort it in descending order based on the release year
    -- Write your query here