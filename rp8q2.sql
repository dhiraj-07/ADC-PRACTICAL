/*
Q.2) Write a PL/SQL block to print the lastname from EMPLOYEES table whose firstname
is ‘John’ .If multiple record found then call the predefine exception TOO_MANY_ROWS and
print appropriate message.
*/

set serveroutput on;
declare
v_lastname employees.last_name%type;
v_count integer;
begin
select count(*) into v_count from employees where first_name='john';
if v_count=0 then
dbms_output.put_line('no employees found with the first name john.');
elsif v_count=1 then
select last_name into v_lastname from employees where first_name='john';
dbms_output.put_line('lastname'||v_lastname);
else
raise too_many_rows;
end if;
exception
when too_many_rows then
dbms_output.put_line('error:multiple employees found with the firstname john');
when others then
dbms_output.put_line('an unexpected error occured.'||sqlerrm);
end;
/