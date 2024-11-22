/*
A) GOTO Statements in PL/SQL
Q.1) Write PL/SQL Blocks with basic programming constructs by including GOTO or NULL
statements:
i) Write a PL/SQL block to accept the employee id from the user and display
the first_name in upper case from the entered employee_id by the user till
the last employee_id existing in the EMPLOYEES table. (Note: Make use of
HR schema)
*/

set severoutput on;
declare
v_fname varchar2(25);
v_lastrowid number;
v_emp_id number :=&v_emp_id;
begin
<<get_name>>
select UPPER(first_name) into v_fname from employees where employee_id=v_emp_id;
select employee_id into v_lastrowid from employees where employee_id=(select MAX(employee_id) from employees);
begin
dbms_output.put_line(v_fname);
v_emp_id:=v_emp_id+1;
if v_emp_id<=v_lastrowid then goto get_name;--branch to enclosing block
end if;
end;
end;
/
