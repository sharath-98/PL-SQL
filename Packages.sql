set serveroutput on

// Sample package
create or replace package manage_employees IS
    PROCEDURE add_emp(fname varchar2, lname varchar2, deptname varchar2, salary number);
    PROCEDURE edit_emp(empid number, salary number);
END manage_employees;

create OR replace package BODY  manage_employees IS
    PROCEDURE add_emp(fname varchar2, lname varchar2, deptname varchar2, salary number) IS
    BEGIN
        dbms_output.put_line('Added employee');
    END;
    PROCEDURE edit_emp(empid number, salary number) IS
    BEGIN
        dbms_output.put_line('Edited employee');
    END;
END;
/

 execute manage_employees.edit_emp(1,12);