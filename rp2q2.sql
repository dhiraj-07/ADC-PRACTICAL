/*
ii) Write a PL/SQL block to increase the salary of all the EMPLOYEES by 5000 and
print the total number of rows updated if the EMPLOYEES table exists.
(Note: Make use of HR schema)
*/

set serveroutput on;
declare
v_total_rows number(5);
begin
update employees set salary=salary+5000;
if sql%notfound then
dbms_output.put_line('No records updated..... ');
elsif sql%found then
v_total_rows :=sql%rowcount;
dbms_output.put_line(v_total_rows || ' updated in employees table ' );
end if;
end;
/