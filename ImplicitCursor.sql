set serveroutput on

// Implicit Cursor -- Find the number of rows being affected
DECLARE
    cnt number(10);
BEGIN
    update employees SET salary = salary + 100 WHERE employee_id = 3;
    cnt := SQL%RowCount;
    dbms_output.put_line('Total rows affected: '|| cnt); 
END;
/

