-- Creating the student table
CREATE TABLE student (
    id INTEGER NOT NULL,                -- Unique identifier for each student, cannot be NULL
    first_name VARCHAR(10) NOT NULL,    -- Student's first name, cannot be NULL, maximum 10 characters
    last_name VARCHAR(10) NOT NULL,     -- Student's last name, cannot be NULL, maximum 10 characters
    age INT                             -- Student's age, can be NULL initially
);

-- Altering the age column to be NOT NULL
ALTER TABLE student
MODIFY age INT NOT NULL;                -- Ensure that the age column cannot contain NULL values

-- Creating the person table
CREATE TABLE person (
    id INTEGER NOT NULL,                -- Unique identifier for each person, cannot be NULL
    f_name VARCHAR(20) NOT NULL,        -- Person's first name, cannot be NULL, maximum 20 characters
    l_name VARCHAR(20) NOT NULL,        -- Person's last name, cannot be NULL, maximum 20 characters
    age INTEGER,                        -- Person's age, can be NULL initially
    UNIQUE (id)                         -- Unique constraint on the id column
);

-- Inserting data into the person table
INSERT INTO person (id, f_name, l_name) VALUES (1, 'sharry', 'mannan');    -- Insert first person
INSERT INTO person (id, f_name, l_name) VALUES (2, 'sharry1', 'mannan1');  -- Insert second person

-- Adding a unique constraint to the f_name column
ALTER TABLE person
ADD CONSTRAINT unique_f_name UNIQUE (f_name);   -- Adding a unique constraint to the f_name column

-- Adding a unique constraint to the combination of age and f_name columns
ALTER TABLE person
ADD CONSTRAINT uc_age UNIQUE (age, f_name);     -- Adding a unique constraint to the combination of age and f_name

-- Selecting all data from the person table
SELECT * FROM person;                  -- Retrieve and display all rows from the person table

-- Adding a composite primary key to the student table
ALTER TABLE student
ADD CONSTRAINT pk_table PRIMARY KEY (id, age);  -- Adding a primary key constraint on the combination of id and age

-- Describing the student table structure
DESC student;                          -- Show the structure of the student table

-- Attempting to drop a primary key constraint from the person table (This will throw an error because there is no such primary key in person table)
-- Correcting this by dropping the primary key from student table instead
ALTER TABLE student
DROP PRIMARY KEY;                      -- Dropping the primary key constraint from the student table

-- Describing the person table structure
DESC person;                           -- Show the structure of the person table

DESC student;                          -- Show the structure of the student table
