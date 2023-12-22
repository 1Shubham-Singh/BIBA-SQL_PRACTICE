use Day2db;
SELECT * FROM EMPLOYEESS;--D1,D2,D10
SELECT * FROM DEPARTMENT;--D1,D2,D3,D4
SELECT * FROM MANAGER;
SELECT * FROM PROJECT;
--JOIN:-SQL join combines rows from more than one table by using common column in both the tables.--
--Types of join:-1.Inner join,  2.Outer join,  3.Left join, 4.Right join 5.Cross Join--
--INNER JOIN/JOIN:-It return new table by combining rercords that only have a matching values in both table.--
--Fetch employee name and their department they belongs to--
SELECT E.EMP_NAME,D.DEPT_NAME
FROM EMPLOYEESS E 
JOIN DEPARTMENT D
ON E.DEPT_ID = D.DEPT_ID;
--OUTER JOIN:-It return all those records which are in either the left table or right table.--
--LEFT JOIN = INNER JOIN + ANY ADDITIONAL RECORDS FROM THE LEFT TABLE--
--Fetch All the employee name and their department name they belongs to--
SELECT E.EMP_NAME,D.DEPT_NAME
FROM EMPLOYEESS E 
LEFT jOIN DEPARTMENT D
ON E.DEPT_ID = D.DEPT_ID;
--RIGHT JOIN:-INNER JOIN + ANY ADDTIONAL RECORDS FROM THE RIGHT TABLE--
--Fetch employee name and their All department name they belongs too--
SELECT E.EMP_NAME,D.DEPT_NAME
FROM EMPLOYEESS E 
RIGHT jOIN DEPARTMENT D
ON E.DEPT_ID = D.DEPT_ID;
--Fetch all the employee name,their manager,department and project they are work on--
SELECT E.EMP_NAME,D.DEPT_NAME,M.MANAGER_NAME,P.PROJECT_NAME
FROM EMPLOYEESS E  LEFT jOIN DEPARTMENT D
ON E.DEPT_ID = D.DEPT_ID
INNER JOIN MANAGER M ON M.MANAGER_ID = E.MANAGER_ID
LEFT JOIN PROJECT P ON P.TEAM_MEMBER_ID  = E.EMP_ID;
--FULL JOIN = INNER JOIN + ALL REMAINING VALUE FROM THE LEFT TABLE
--							+ ALL RAMAINING VALUE OF THE RIGHT TABLE
SELECT E.EMP_NAME,D.DEPT_NAME
FROM EMPLOYEESS E 
JOIN DEPARTMENT D
ON E.DEPT_ID = D.DEPT_ID;

--EQUI JOIN/INNER JOIN/JOIN:THESE ALL ARE SAME BUT EQUI JOIN IS NOT WORKING IN THIS SQL SERVER--
SELECT E.EMP_NAME,D.DEPT_NAME
FROM EMPLOYEESS E 
JOIN DEPARTMENT D
ON E.DEPT_ID = D.DEPT_ID;
--NON-EQUI JOIN--
SELECT E.EMP_NAME,D.DEPT_NAME
FROM EMPLOYEESS E 
JOIN DEPARTMENT D
ON E.DEPT_ID < D.DEPT_ID;


--STRING FUNCTION--
SELECT ascii ( 's');--It converted the string into a ascii number--
SELECT char (66);--It converted the number into string accii string--
SELECT len ( 'Shubham');--It gives the length of the name
SELECT lower ( 'JOHN');--It changes into the lower order
SELECT REPLACE ( 'countrY', 'y', 'ies' );--It replaces the y with ies
SELECT reverse ( 'PATH');--It reverse the letter
SELECT str (134.56, 1, 1);--(number,len,decimal)
SELECT upper ( 'Peter');--It changes the letter into upper order.
--DATA FUNCTION--
SELECT GETDATE();
SELECT dateadd (mm, 8, '2010-02-03');--Add month which we have already given and what we want to add on the month.
SELECT datediff ( year, convert (datetime, '2006-05-06'), convert ( datetime, '2009-01-01'));
SELECT datepart (mm, '2008-02-01');--It only shows the datapart of the year.
SELECT day ( '2010-03-21');--It shows the day in a year that is given here.
SELECT month ('2007-04-03');--It shows the month that is given here.
SELECT year ( '2011-04-17');--It shows the year that is given here.
--MATHEMATICAL FUNCTION--
SELECT ABS(-202);--Return the absolute value--
SELECT SIN(1.5);--It shows the angle in radian
SELECT CEILING(20.08);--Return smallest or greater the specefied value
SELECT EXP(5.9);
SELECT FLOOR(59.32);--It shows the logarithmic value--
SELECT LOG(9.1);
--RANK FUNCTION--

SELECT emp_id,dept_id,rank() over( order by salary desc)as rank  from EMPLOYEESS;

 --DENSE_RANK()--It performs similar to the rank function but provides consecutive ranking values as output--

select EMP_NAME,EMP_ID,DENSE_RANK() over( order by salary asc) as rank from EMPLOYEESS;

--ntile() divide the result set into number of groups--

select EMP_NAME, EMP_ID, ntile(2) over (order by salary) as rank from EMPLOYEESS where SALARY >=30000;


--SYSTEM FUNCTION--
SELECT HOST_ID();
SELECT HOST_NAME ();--It shows the host name of your computer
SELECT SUSER_ID () --It shows user_id
SELECT user_id ();
SELECT db_name() as Databasename;--It shows the database name 

USE shubhamdb;
--AGGREGATE FUNCTIONS ARE:-
select avg(salary) from employee;
select count(*) from employee;
select count(distinct salary) from employee;
select sum(salary) from employee;
select max(salary) from employee;
select min(salary) from employee;
select * from employee order by salary desc;
SELECT * FROM employee;


--SET OPERATION--
USE Day2db;

SELECT * FROM EMPLOYEESS;
SELECT * FROM PROJECT;
--UNION OPERATION--
SELECT EMP_NAME,EMP_ID FROM EMPLOYEESS
UNION 
(SELECT TEAM_MEMBER_ID FROM PROJECT);

--UNION ALL OPERATION--
SELECT * FROM EMPLOYEESS
UNION ALL 
SELECT * FROM employees
