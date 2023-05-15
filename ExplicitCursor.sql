set serveroutput on

// Explicit cursor
DECLARE
    v_name employees.firstname%TYPE;
    v_sal employees.salary%TYPE;
    CURSOR exp_cur IS select firstname, salary from employees;

BEGIN
    OPEN exp_cur;
    LOOP 
        FETCH exp_cur into v_name, v_sal;
        EXIT WHEN exp_cur%ROWCOUNT > 5 or exp_cur%NOTFOUND;
        dbms_output.put_line(v_name || ' ' || v_sal);
    END LOOP;
    CLOSE exp_cur;
END;
/

// PARAMTERIZED CURSORS
DECLARE
    v_name employees.firstname%TYPE;
    v_sal employees.salary%TYPE;
    CURSOR exp_cur(inputSalary NUMBER) IS select firstname, salary from employees where salary >= inputsalary;

BEGIN
    OPEN exp_cur(100000);
    LOOP 
        FETCH exp_cur into v_name, v_sal;
        EXIT WHEN exp_cur%ROWCOUNT > 5 or exp_cur%NOTFOUND;
        dbms_output.put_line(v_name || ' ' || v_sal);
    END LOOP;
    CLOSE exp_cur;
    dbms_output.put_line('-------------------------------------------------');
    OPEN exp_cur(300000);
    LOOP 
        FETCH exp_cur into v_name, v_sal;
        EXIT WHEN exp_cur%ROWCOUNT > 5 or exp_cur%NOTFOUND;
        dbms_output.put_line(v_name || ' ' || v_sal);
    END LOOP;
    CLOSE exp_cur;
END;
/


// Explicit cursor With locking
DECLARE
    v_name employees.firstname%TYPE;
    v_sal employees.salary%TYPE;
    CURSOR exp_cur IS select firstname, salary from employees
                        FOR UPDATE OF salary NOWAIT;
    

BEGIN
    OPEN exp_cur;
    LOOP 
        FETCH exp_cur into v_name, v_sal;
        EXIT WHEN exp_cur%ROWCOUNT > 5 or exp_cur%NOTFOUND;
        dbms_output.put_line(v_name || ' ' || v_sal);
    END LOOP;
    CLOSE exp_cur;
END;
/