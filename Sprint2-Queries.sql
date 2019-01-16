-- Table - Artist
-- Add 15 new Artists to the Artist table. (ArtistId, Name)
INSERT INTO Artist (Name) VALUES ("The Beatles");
INSERT INTO Artist (Name) VALUES ("The Doors");
INSERT INTO Artist (Name) VALUES ("The Strokes");
INSERT INTO Artist (Name) VALUES ("Black Sabbath");
INSERT INTO Artist (Name) VALUES ("Nirvana");
INSERT INTO Artist (Name) VALUES ("Metalica");
INSERT INTO Artist (Name) VALUES ("Pearl Jam");
INSERT INTO Artist (Name) VALUES ("Pink Floyd");
INSERT INTO Artist (Name) VALUES ("Ramones");
INSERT INTO Artist (Name) VALUES ("Sex Pistols");
INSERT INTO Artist (Name) VALUES ("Kanye West");
INSERT INTO Artist (Name) VALUES ("The Smiths");
INSERT INTO Artist (Name) VALUES ("Joy Divicion");
INSERT INTO Artist (Name) VALUES ("The Velvet Underground");
INSERT INTO Artist (Name) VALUES ("Queen");

-- Select 10 artists in reverse alphabetical order.
SELECT * FROM Artist ORDER BY Name Desc LIMIT 10;

-- Select 5 artists in alphabetical order.
SELECT * FROM Artist ORDER BY Name ASC LIMIT 5;

-- Select all artists that start with the word "Black".
SELECT * FROM Artist WHERE Name LIKE 'Black%';

-- Select all artists that contain the word "Black".
SELECT * FROM Artist WHERE Name LIKE '%Black%';



-- Table - Employee
-- List all Employee first and last names only that live in Calgary.
SELECT FirstName, LastName FROM Employee WHERE City = "Calgary";

-- Find the first and last name and birthdate for the youngest employee.
SELECT FirstName, LastName, Max(BirthDate) FROM Employee;

-- Find the first and last name and birthdate for the oldest employee.
SELECT FirstName, LastName, Min(BirthDate) FROM Employee;

-- Find everyone that reports to Nancy Edwards (Use the ReportsTo column).
SELECT * FROM Employee WHERE ReportsTo = 2;


You will need to query the employee table to find the Id for Nancy Edwards

-- Count how many people live in Lethbridge.
SELECT COUNT(*) FROM Employee WHERE City = "Lethbridge";



-- Table - Invoice
-- Count how many orders were made from the USA.
SELECT Count(*) FROM Invoice WHERE BillingCountry = 'USA';

-- Find the largest order total amount.
SELECT Max(total) FROM Invoice;

-- Find the smallest order total amount.
SELECT Min(total) FROM Invoice;

-- Find all orders bigger than $5.
SELECT * FROM Invoice WHERE Total > 5;

-- Count how many orders were smaller than $5.
SELECT COUNT(*) FROM Invoice WHERE Total < 5;

-- Count how many orders were in CA, TX, or AZ (use IN).
SELECT Count(*) FROM Invoice WHERE BillingState in ('CA', 'TX', 'AZ');

-- Get the average total of the orders.
SELECT AVG(Total) FROM Invoice;

-- Get the total sum of the orders.
SELECT SUM(Total) FROM Invoice;
