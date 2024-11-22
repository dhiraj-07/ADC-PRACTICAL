/*
Q4.Write a PL/SQL block to accept the table name from the user and print the total
number of records existing in the table.
*/

set serveroutput on;
declare
total_rows varchar2(20);
v_mytablename varchar2(30);
begin
select count(*) into total_rows from & v_mytablename;
dbms_output.put_line('Total no. of records: ' || total_rows);
end;
/