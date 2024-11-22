/*
Q6.Write a PL/SQL block to print the Salary and FirstName of first 3 records of the
Lecturer_<RollNo> table using unconstrained loop and exit the loop.
*/

set serveroutput on;
declare
v_mytablename varchar2(20);
v_firstname varchar2(15);
n_id  number(5);
v_sal number(10);
n_counter number :=100;
begin
loop
select first_name,salary into v_firstname, v_sal from &v_mytable where
employee_id=n_counter;
dbms_output.put_line('Lecturer firstname: ' || v_firstname || '. My salary is ' || v_sal ||'.');
n_counter :=n_counter+1;
exit when n_counter>103;
end loop;
end;
/