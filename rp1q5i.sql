/*
Q5.Write a PL/SQL block to print the full name and designation of Lecturer
identified based on their ID from the Lecturer_RollNo (accept the tablename
and ID from the user) using unconstrained loops without and with EXIT.
The output should be formatted as:
<ID>: <FirstName> <LastName> - <Designation>
[without EXIT]
*/

set serveroutput on;
declare
v_mytablname varchar2(20);
v_firstname varchar2(15);
v_lastname varchar2(20);
v_designation varchar2(30);
n_id number(4);
v_id number(4);
begin
loop
select id,firstname,lastname,designation into v_id,v_firstname,v_lastname,v_designation from 
& v_mytablename where id =&n_id;
dbms_output.put_line(v_id || ':' || v_firstname || ' ' || v_lastname || '-' || v_designation);
end loop;
end;
/