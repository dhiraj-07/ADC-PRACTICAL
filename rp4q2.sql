/*
Q2.Write a PL/SQL block to print region_name from REGIONS in lower case
using IF Loop and print “All Records...FETCHED!!!” after printing the last
record. (Note: Make use of HR schema)
*/

set serveroutput on;
declare
c_regionname REGIONS.region_name%type;
cursor c_region is
select LOWER(region_name) from REGIONS;
begin
open c_region;
<<fetch_stmt>>
fetch c_region into c_regionname;
if c_region%found then
dbms_output.put_line(c_regionname);
goto fetch_stmt;
else
goto donot_fetch_stmt;
end if;
close c_region;
<<donot_fetch_stmt>>
dbms_output.put_line('all records fetched!!!');
end;
/