/*
B) Explicit Cursors
Q.2) Write a block in PL/SQL using explicit cursor to print the number of employees
present in each department.
*/

set serveroutput on;
declare
cursor emp_cur is
select d1.department_id,department_name,emp_no
from departments d1, 
(select department_id,count(*) as emp_no from employees group by department_id) d2 
where(d1.department_id=d2.department_id)
order by emp_no;
begin
dbms_output.put_line(rpad('department',25)||'no of employees');
dbms_output.put_line('--------------------');
for dept in emp_cur
loop
dbms_output.put_line(rpad(dept.department_name,25)||dept.emp_no);
end loop;
end;
/