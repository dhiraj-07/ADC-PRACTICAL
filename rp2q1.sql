/*
Q.1) Writing PL/SQL Blocks with basic programming constructs by including
following:
A) IF-THEN Statements
i) Write a PL/SQL block to accept the tablename from the user and print the total
of records existing in the table entered by the user using Implicit cursors.
(Note: Make use of HR schema)
*/

set serveroutput on;
declare
v_tablename varchar2(20);
total_rows number(5);
begin
select count(*) into total_rows from &v_tablename;
if sql%found then
dbms_output.put_line('Table contains ' || total_rows || ' records..... ');
end if;
end;
/