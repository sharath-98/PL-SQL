
set serveroutput ON

// Manual assignment of values to a variable
declare
first_name varchar2(50);
amount number(6);

BEGIN
first_name := 'Sharath Chander';
amount := 115000;
dbms_output.put_line('Name: ' || first_name || '-> Amount: '|| amount); 
END;
/

// storing value from table into a variable

declare
first_name varchar2(100);
salary number;

BEGIN
select firstName, salary INTO  first_name, salary from employees where employee_id=1;
dbms_output.put_line('Name: ' || first_name || '-> Amount: '|| salary); 
END;
/

// if you dont know the datatype of the column in the table
declare
first_name Employees.FirstName%TYPE;
salary Employees.Salary%TYPE;

BEGIN
select firstName, salary INTO  first_name, salary from employees where employee_id=2;
dbms_output.put_line('Name: ' || first_name || '-> Amount: '|| salary); 
END;
/

// use type diractly from existing variable names
declare
first_name Employees.FirstName%TYPE;
salary Employees.Salary%TYPE;
last_name first_name%TYPE;

BEGIN
select firstName, salary INTO  first_name, salary from employees where employee_id=2;
dbms_output.put_line('Name: ' || first_name || '-> Amount: '|| salary); 
END;
/

// To store entire row from the table in a variable use ROWTYPE
declare
record Employees%ROWTYPE;

BEGIN
select * INTO  RECORD from employees where employee_id=3;
dbms_output.put_line('FName: ' || RECORD.FIRSTNAME || ' LNAME: '|| RECORD.LASTNAME || ' SALARY: '|| RECORD.SALARY); 
END;
/