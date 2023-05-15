set serveroutput on

//Basic LOOP
declare
    i number(2);

BEGIN
    i := 0;
    loop 
        dbms_output.put_line(i);
        i := i + 1;
        exit when i = 10;
    end loop;
END;
/

// WHILE LOOP
declare
    i number(2);

BEGIN
    i := 0;
    WHILE i < 10 loop 
        dbms_output.put_line(i);
        i := i + 1;
    end loop;
END;
/

// For LOOP
begin
    for i in 1..10 loop
        dbms_output.put_line('i= '||i);
    end loop;
END;
/

// For LOOP R EVERSE
begin
    for i in REVERSE 1..10 loop
        dbms_output.put_line('i= '||i);
    end loop;
END;
/