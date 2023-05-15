set serveroutput on

//BASIC function
create or replace function get_tax(amt number) RETURN NUMBER IS
    BEGIN
        return (amt *10 /100);
    END;
    /
 