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

    SELECT genre, COUNT(*) AS total_songs 
    FROM songs 
    GROUP BY genre;

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
