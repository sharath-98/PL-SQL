set SERVEROUTPUT ON;

// If
declare
    firstname employees.firstname%TYPE;
    salary employees.salary%TYPE;

BEGIN
    select firstname, salary into firstname, salary from employees where employee_id=2;
    dbms_output.put_line(firstname || ' ' || salary);
    if salary >= 90000 then
        salary := salary + 200;
    end if;
    dbms_output.put_line(firstname || ' ' || salary);
END;
/

// If-Else
declare
    firstname employees.firstname%TYPE;
    salary employees.salary%TYPE;

BEGIN
    select firstname, salary into firstname, salary from employees where employee_id=2;
    dbms_output.put_line(firstname || ' ' || salary);
    if salary >= 500000 then
        salary := salary + 200;
    else
        salary := salary + 500;
    end if;
    dbms_output.put_line(firstname || ' ' || salary);
END;
/

// If-Else if - else
declare
    firstname employees.firstname%TYPE;
    sal employees.salary%TYPE;

BEGIN
    select firstname, salary into firstname, sal from employees where employee_id=2;
    dbms_output.put_line(firstname || ' ' || sal);
    if sal >= 500000 then
        sal := sal + 200;
    elsif sal >=200000 and sal <=400000 then
        sal := sal + 300;
    else
        sal := sal + 500;
    end if;
    update employees emp set emp.salary=sal where emp.employee_id=2;
    dbms_output.put_line(firstname || ' ' || sal);
END;
/



// CASE
declare
    inputday number(1) := &weekday;
    dayname varchar2(20);
BEGIN
    dayname := case inputday
                WHEN 1 then 'Monday'
                When 2 then 'Tuesday'
                when 3 then 'Wednesday'
                when 4 then 'Thursday'
                when 5 then 'Friday'
                when 6 then 'Saturday'
                else 'sunday'
              end;
    dbms_output.put_line('Day of the week '||dayname);
END;
/