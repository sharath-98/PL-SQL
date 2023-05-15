CREATE SEQUENCE Emp_id_seq START WITH 1;

create table employees(
Employee_Id number GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1),
FirstName varchar2(100) not null,
LastName varchar2(100) not null,
Dept varchar2(50),
Salary number not null
);


insert into employees(FirstName, LastName, Dept, Salary) values('Sharath', 'Pugazhenthi', 'IT', 100000);
insert into employees(FirstName, LastName, Dept, Salary) values('Pugazhenthi', 'P', 'IT', 500000);
insert into employees(FirstName, LastName, Dept, Salary) values('Vishal', 'Pugazhenthi', 'IT', 400000);
insert into employees(FirstName, LastName, Dept, Salary) values('Chithra', 'PT', 'IT', 300000);
insert into employees(FirstName, LastName, Dept, Salary) values('Soundarya', 'Sharath', 'IT', 120000);
insert into employees(FirstName, LastName, Dept, Salary) values('Sam', 'Willy', 'IT', 500000);
insert into employees(FirstName, LastName, Dept, Salary) values('Peter', 'England', 'IT', 1020000);
insert into employees(FirstName, LastName, Dept, Salary) values('James', 'Bond', 'IT', 10800);
