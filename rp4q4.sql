/*
NULL Statements in PL/SQL
iv) Write a PL/SQL block to update the salary by 50 of the employee whose description
is entered by the user. Print the first name and last name of the updated record.
*/

set serveroutput on;
declare
v_empid number;
v_inc number(2,1):=&v_inc;
v_fname Employees.first_name%type;
v_salary Employees.salary%type;
v_hiredate Employees.hire_date%type;
cursor c_emp is
select employee_id,first_name,salary,hire_date into v_empid,
v_fname,v_salary,v_hiredate from Employees where extract(month from hire_date)=extract(month from sysdate);
begin
open c_emp;
<<get_name>>
fetch c_emp into v_empid,v_fname,v_salary,v_hiredate;
if c_emp%found then
update Employees set salary=salary+round(salary*v_inc/100.0) where employee_id=v_empid;
dbms_output.put_line('hey'||v_fname||',your salary is raised bt'||v_inc||'%');
goto get_name;
else
null;
end if;
end;
/