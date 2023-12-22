CREATE TABLE TableA
(
ID INT,
Name VARCHAR(50),
Gender VARCHAR(10),
Department VARCHAR(50)
);

INSERT INTO TableA VALUES(1, 'Pranaya', 'Male','IT')
INSERT INTO TableA VALUES(2, 'Priyanka', 'Female','IT')
INSERT INTO TableA VALUES(3, 'Preety', 'Female','HR')
INSERT INTO TableA VALUES(3, 'Preety', 'Female','HR')
USE Emp;
SELECT * FROM TableA;
CREATE TABLE TableB
(
ID INT,
Name VARCHAR(50),
Gender VARCHAR(10),
Department VARCHAR(50)
)

CREATE TABLE TableB
(
ID INT,
Name VARCHAR(50),
Gender VARCHAR(10),
Department VARCHAR(50)
)

CREATE TABLE TableB
(
ID INT,
Name VARCHAR(50),
Gender VARCHAR(10),
Department VARCHAR(50)
);

INSERT INTO TableB VALUES(2, 'Priyanka', 'Female','IT');
INSERT INTO TableB VALUES(3, 'Preety', 'Female','HR');
INSERT INTO TableB VALUES(4, 'Anurag', 'Male','IT');

--UNION Operator:
SELECT ID, Name, Gender, Department FROM TableA
UNION
SELECT ID, Name, Gender, Department FROM TableB;

--UNION ALL Operator:

SELECT ID, Name, Gender, Department FROM TableA
UNION ALL
SELECT ID, Name, Gender, Department FROM TableB;
--INTERSECT Operator:
SELECT ID, Name, Gender, Department FROM TableA
INTERSECT
SELECT ID, Name, Gender, Department FROM TableB;
--EXCEPT Operator
SELECT ID, Name, Gender, Department FROM TableA
EXCEPT
SELECT ID, Name, Gender, Department FROM TableB;

SELECT ID, Name, Gender, Department FROM TableB
EXCEPT
SELECT ID, Name, Gender, Department FROM TableA;

SELECT * FROM TableA;
SELECT * FROM TableB;

--COUNT THE  DUPLICATES--
SELECT Name,
     COUNT(name) as count
FROM TableA
GROUP BY name
HAVING COUNT(ID) > 1;


--ADD A NEW COLUMN TO THE THAT SHOWS THE ROW_NUMBER FOR EACH NAME--

SELECT name,
     ROW_NUMBER() OVER (PARTITION BY name ORDER BY NAME) AS newROW
FROM TableA;


--DELETE THE DUPLICATES FROM THE TABLE--
WITH cte AS (SELECT name,ROW_NUMBER() OVER (PARTITION BY name ORDER BY name ASC) AS rn
FROM TableA)
DELETE FROM cte
WHERE rn > 1;




