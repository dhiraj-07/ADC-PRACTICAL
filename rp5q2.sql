/*
Q.2) Write a PL/SQL procedure to accept name of the region from the user and display the
total number of records who has past job history. (Note: Make use of HR schema)
*/
set serveroutput on;
declare
regionname varchar2(25);
totalrows number;
procedure rp5q2_87(regionname in varchar2,totalrows out number) is
begin
select count(*) into totalrows from employees 
where employee_id in (select employee_id from job_history where department_id in (select department_id from locations where location_id in (select location_id from countries where country_id in (select country_id from regions where region_name = '&regionname' ))));
end rp5q2_87;
begin
rp5q2_87(regionname,totalrows);
dbms_output.put_line('Total number records found : ' || totalrows);
end;
/