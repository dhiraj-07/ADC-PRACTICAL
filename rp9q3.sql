--Q.3) Write a PL/SQL function to print average salary of employees whose department id is 50.

create or replace function avg_salary(p_dept_id in number)
return number
is
v_avg_salary number;
begin
select avg(salary) into v_avg_salary from employees
where department_id = p_dept_id;
dbms_output.put_line('The average salary for department ID ' || p_dept_id || ' is: ' || v_avg_salary);
return v_avg_salary;
end;
/
declare
v1 number;
begin
v1 := avg_salary(50);
end;
/