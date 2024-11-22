/*
Q.1) Writing PL/SQL Blocks with basic programming constructs by including following:
A) Sequential Statements
i) Write a PL/SQL block to accept the details (Name, Class, Semester, Batch, Roll
No, Course and current date) from the user and displays it in formatted manner.’
Output:
Hi, my name is Mickey. I am studying in Class SYCS, Sem-3.
My practical batch is B0 and Roll No: 1111.
This is executed in USCSP304 practical dated on 01-Nov-2022.
*/

set serveroutput on;
declare
v_myname varchar2(20);
v_myclass varchar2(10);
n_mysem number;
v_mybatch varchar2(5);
n_myrollno number;
v_mycourse varchar2(10);
begin
v_myname := ' &v_myname ' ;
v_myclass := ' &v_myclass ' ;
n_mysem :=  &n_mysem  ;
v_mybatch := ' &v_mybatch ' ;
n_myrollno :=  &n_myrollno ;
v_mycourse := ' &v_mycourse ' ;
dbms_output.put_line('Hi my name is' ||v_myname|| 'I am studying in class' ||v_myclass|| 'Sem-' ||n_mysem||'.');
dbms_output.put_line('My practical batch is' ||v_mybatch|| 'and Roll No:' ||n_myrollno ||'.');
dbms_output.put_line('This is executed in'||v_mycourse|| 'practical dated on ' || sysdate ||'.');
end;
/