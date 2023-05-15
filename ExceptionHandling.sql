set serveroutput on

// Exception handling
DECLARE
    first_name employees.firstname%TYPE;
    sal employees.salary%TYPE;
    
BEGIN
    select firstname, salary into first_name, sal from employees where employee_id=100;
    dbms_output.put_line(first_name || ' ' ||sal);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('No data found.');
    WHEN TOO_MANY_ROWS then
        dbms_output.put_line('Many rows returned.');
    WHEN OTHERS then
        dbms_output.put_line('some error present.');
END;
/

// User defined exception
DECLARE
    first_name employees.firstname%TYPE;
    sal employees.salary%TYPE;
    exp_noEmp EXCEPTION;
    
BEGIN
    update employees set salary = salary + 1 where employee_id=100;
    if SQL%NOTFOUND THEN
        RAISE exp_noEmp;
    END IF;
    commit;
        
    dbms_output.put_line(first_name || ' ' ||sal);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('No data found.');
    WHEN TOO_MANY_ROWS then
        dbms_output.put_line('Many rows returned.');
    WHEN exp_noEmp THEN
        dbms_output.put_line('No Employee with the ID present.');
    WHEN OTHERS then
        dbms_output.put_line('some error present.');
END;
/