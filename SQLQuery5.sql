Create database Day2db;

use Day2db;

create table customers(
	customerid int,
	customername varchar(255),
	contactname varchar(255),
	address varchar(255)
);
insert into customers(customerid,customername,contactname,address)values('1','Alfreds Futterkiste','Maria Anders','Obere Str. 57'),
																		('2','Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222'),
																		('3','Antonio Moreno Taquería','Antonio Moreno','Mataderos 2312');
insert into customers(customerid,customername,contactname,address)values('4','Around the Horn','Thomas Hardy','120 Hanover Sq.'),
																		('5','Berglunds snabbköp','Christina Berglund','Berguvsvägen 8');
SELECT DISTINCT customername FROM Customers;


Select * from customers;

CREATE TABLE CUSTOMERSS(
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),
   PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERSS VALUES 
('1', 'Ramesh', '32', 'Ahmedabad', '2000.00'),
('2', 'Khilan', '25', 'Delhi', '1500.00'),
('3', 'Kaushik', '23', 'Kota', '2000.00'),
('4', 'Chaitali', '25', 'Mumbai', '6500.00'),
('5', 'Hardik', '27', 'Bhopal', '8500.00'),
('6', 'Komal', '22', 'Hyderabad', '4500.00'),
('7', 'Muffy', '24', 'Indore', '10000.00');

BEGIN TRAN;
DELETE FROM CUSTOMERSS WHERE AGE = 25; 
COMMIT;

BEGIN TRAN;
DELETE FROM CUSTOMERSS WHERE AGE = 25; 
ROLLBACK;

BEGIN TRAN;
DELETE FROM CUSTOMERSS WHERE AGE = 22; 
ROLLBACK;

select @@TRANCOUNT

begin tran

DELETE FROM CUSTOMERSS WHERE AGE = 24;
UPDATE CUSTOMERSS SET AGE = 25 WHERE ID = 7;
ROLLBACK
COMMIT
SELECT * FROM CUSTOMERSS;

