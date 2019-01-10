DROP TABLE IF EXISTS "Persons";
CREATE TABLE Persons
(
id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
PRIMARY KEY (id)
);
