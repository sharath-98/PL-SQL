set serveroutput on

// Creating bodiless package

create or replace package global_constant IS
    mileToKm CONSTANT NUMBER := 1.6093; 
    KmToMile CONSTANT NUMBER := 0.6214;
END;

execute dbms_output.put_line(20 * global_constant.mileToKm);

// OVERLOADING

create or replace package overloading IS
    PROCEDURE add_emp(fname VARCHAR2, lname varchar2);
    PROCEDURE add_emp(fname VARCHAR2, lname varchar2, deptName varchar2);
END;
/

create or replace package BODY overloading IS
    PROCEDURE add_emp(fname VARCHAR2, lname varchar2) IS
        BEGIN
            dbms_output.put_line('Added Emp 1');
        END add_emp;
        
    PROCEDURE add_emp(fname VARCHAR2, lname varchar2, deptName varchar2) IS
        BEGIN
            dbms_output.put_line('Added Emp 2');5
        END add_emp;
END overloading;
/


execute overloading.add_emp('Sharath','Chander');