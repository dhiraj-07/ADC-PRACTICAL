/*
Q.2) Write a PL/SQL function to print first name of the employee who has maximum salary.
*/

create or replace function maximum_salary 
return varchar2
is
v_first_name varchar2(100);
begin
select first_name
into v_first_name
from employees
where salary=(select max(salary) from employees);
return v_first_name;
end;
/
begin
dbms_output.put_line('Employee with the highest salary is: ' || maximum_salary);
end;
/