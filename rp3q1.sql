/*
A) WHILE-LOOP Statements
i) Write a PL/SQL block to display first 3 names of DEPARTMENTS which are
listed in JOB_HISTORY along with its id.
Format the output: <Department_ID>: <Department_Name>
(Note: Make use of HR schema)
*/

set serveroutput on;
declare
c_deptname Departments.department_name%type;
c_deptid Departments.department_id%type;
cursor c_dept is
select department_id,department_name from Departments where department_id in
(select department_id from job_history);
counter number(5):=1;

begin
open c_dept;
while counter<=3 loop
fetch c_dept into c_deptid,c_deptname;
dbms_output.put_line(c_deptid || ':' || c_deptname);
counter:=counter+1;
end loop;
end;
/