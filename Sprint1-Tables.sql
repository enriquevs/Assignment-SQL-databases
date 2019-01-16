
CREATE DATABASE enriquevs;

USE enriquevs;

CREATE TABLE Person(
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Age INT NOT NULL,
  Height INT NOT NULL,
  City VARCHAR(50) NOT NULL,
  FavoriteColor VARCHAR(20) NOT NULL
);

INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES ("Addy Osmani", 20, 178, "California", "yellow");
INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES ("Paul Irish", 25, 191, "Austin", "orange");
INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES ("Eric Elliot", 30, 165, "Portland", "blue");
INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES ("Jack Wilshere", 18, 189, "San Francisco", "purple");
INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES ("Ayrton Senna", 32, 170, "Texas", "green");


-- List all the people in the Person table by Height from tallest to shortest.

SELECT * FROM Person ORDER BY Height DESC;

-- List all the people in the Person table by Height from shortest to tallest.

SELECT * FROM Person ORDER BY Height ASC;

-- List all the people in the Person table by Age from oldest to youngest.

SELECT * FROM Person ORDER BY Age DESC;

-- List all the people in the Person table older than age 20.

SELECT * FROM Person WHERE Age > 20;

-- List all the people in the Person table that are exactly 18.

SELECT * FROM Person WHERE Age = 18;

-- List all the people in the Person table that are less than 20 and older than 30.

SELECT * FROM Person WHERE Age BETWEEN 20 AND 30;

-- List all the people in the Person table that are not 27 (Use not equals).

SELECT * FROM Person WHERE Age IS <> 27;

-- List all the people in the Person table where their favorite color is not red.

SELECT * FROM Person WHERE NOT FavoriteColor= "red";

-- List all the people in the Person table where their favorite color is not red and is not blue.

SELECT * FROM Person WHERE NOT FavoriteColor = "red" AND NOT FavoriteColor = "blue";

-- List all the people in the Person table where their favorite color is orange or green.

SELECT * FROM Person WHERE FavoriteColor = "orange" OR FavoriteColor = "green";

-- List all the people in the Person table where their favorite color is orange, green or blue (use IN).

SELECT * FROM Person WHERE FavoriteColor IN ("orange", "green", "blue");

-- List all the people in the Person table where their favorite color is yellow or purple (use IN).

SELECT * FROM Person WHERE FavoriteColor IN ("yellow", "purple");

-- Crear nueva tabla para relacionarlas

CREATE TABLE Orders(
  Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  PersonID INT NOT NULL,
  ProductName VARCHAR(100) NOT NULL,
  ProductPrice INT NOT NULL,
  Quantity INT NOT NULL,
  FOREIGN KEY (PersonId) REFERENCES Person(Id)
);

INSERT INTO Orders(PersonID, ProductName, ProductPrice, Quantity) VALUES (1, "TV", 10000, 1);
INSERT INTO Orders(PersonID, ProductName, ProductPrice, Quantity) VALUES (3, "Radio", 850, 1);
INSERT INTO Orders(PersonID, ProductName, ProductPrice, Quantity) VALUES (1, "Sneakers", 2500, 3);
INSERT INTO Orders(PersonID, ProductName, ProductPrice, Quantity) VALUES (4, "Cellphone", 3000, 1);
INSERT INTO Orders(PersonID, ProductName, ProductPrice, Quantity) VALUES (2, "Plant", 45, 4);


-- Select all the records from the Orders table.

SELECT * FROM Orders;

-- Calculate the total number of products ordered.

SELECT SUM(Quantity) FROM Orders;

-- Calculate the total order price.

SELECT SUM(ProductPrice * Quantity) FROM Orders;

-- Calculate the total order price by a single PersonID.
