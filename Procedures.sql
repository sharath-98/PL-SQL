set serveroutput on

// Basic Procedure
create or replace procedure test_procedure is
    BEGIN
        dbms_output.put_line('Test procedure successfuly running');
    END;
/
Execute test_procedure;
    
// Add Employee Record IN MODE
create or replace procedure add_employee(
        Fname IN employees.firstname%TYPE,
        Lname IN employees.lastname%TYPE,
        deptName IN employees.dept%TYPE,
        Sal IN employees.salary%TYPE)  
    IS
    BEGIN
        insert into employees(firstname, lastname, dept, salary) values (Fname, Lname, deptName, Sal);
        dbms_output.put_line('Employee Added');
    END;
    /

Execute add_employee('Jon','Snow','Bio', 75000);

// GET FIRSTNAME USING OUT MODE
create or replace procedure get_name(
        empId in employees.employee_Id%TYPE,
        fname out employees.firstname%TYPE
    )
    is 
    BEGIN
        select firstname into fname from employees where employee_id=empId;
    END;
    /
    
DECLARE
    EmpName varchar2(20);
BEGIN
    get_name(4, empname);
    dbms_output.put_line(empname);
END;
/


// IN OUT MODE
create or replace PROCEDURE format_phoneNumber
    (phNo IN OUT VARCHAR2)
    IS
    BEGIN
        phno := '(' || substr(phno,1,3) || ')' || substr(phno, 4,3) || '-' || substr(phno, 7);
    END;
    /

DECLARE
    pno varchar2(20) := &EnterNumber;
BEGIN
    format_phoneNumber(pno);
    dbms_output.put_line(pno);
END;
/