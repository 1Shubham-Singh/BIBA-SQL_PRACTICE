create database fix;

Create table Loan(
	loanNo varchar(255),
	Branch varchar(255),
	Amount int
);

Insert into Loan(loanNo,Branch,Amount)
values('L1','B1','10000');

Insert into Loan(loanNo,Branch,Amount)
values('L2','B2','20000');

Insert into Loan(loanNo,Branch,Amount)
values('L3','B3','30000');

Select * from loan;

Create database Borrower;

create table Borrower1(
	CustName varchar(255),
	LoanNo varchar(255)

);

Insert into Borrower1(CustName,LoanNo)values('C1','L1');
Insert into Borrower1(CustName,LoanNo)values('C2','L2');
Insert into Borrower1(CustName,LoanNo)values('C3','L3');

update Borrower1 set CustName = 'C2' where LoanNo = 'l1';
truncate table Borrower1;
Select * from Borrower1;
