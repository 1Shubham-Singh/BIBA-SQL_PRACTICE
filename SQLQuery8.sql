CREATE DATABASE Emp;
USE Emp;

CREATE TABLE Emp1(
id INT PRIMARY KEY,
name VARCHAR(50),
dept VARCHAR(40),
salary INT,
year_of_experience INT
);

CREATE PROCEDURE us_customers AS
SELECT customer_id, first_name
FROM Customers
WHERE Country = 'USA';

CREATE PROCEDURE us_customers ()
LANGUAGE SQL
AS $$
SELECT customer_id, first_name
FROM Customers
WHERE Country = 'USA';
$$;



INSERT INTO Emp1 VALUES(1,'Aakash Singh','Development',72000,2),
                       (2,'Abhishek Pawar','Production',45000,1),
					   (3,'Pranav Deshmukh','HR',59900,3),
					   (4,'Shubham Mahale','Accounts',57000,2),
					   (5,'Sunil Kulkarni','Development',87000,3),
					   (6,'Bhushan Wagh','R&D',75000,2),
					   (7,'Paras Jaiswal','Marketing',32000,1);
SELECT * FROM Emp1;

--/Exists/
SELECT name , salary , year_of_experience
FROM Emp1 e
WHERE EXISTS (
SELECT dept FROM Emp1 e1 
WHERE e.salary > 60000 AND e.year_of_experience > 1
);

--/ANY It selects employees whose salary is higher than at least one salary within the specified range/
SELECT name , salary
FROM Emp1 e
WHERE salary > ANY (
SELECT salary FROM Emp1 e1 
WHERE e1.salary BETWEEN 30000 AND 60000
);

--/ALL It selects employees whose salary is higher than the salaries within the specified range/
SELECT name, salary
FROM Emp1 e
WHERE salary > ALL (
    SELECT salary
    FROM Emp1 e1
    WHERE e1.salary BETWEEN 30000 AND 60000
);

