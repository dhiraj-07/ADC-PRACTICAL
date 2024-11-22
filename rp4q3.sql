/*
iii).Write a PL/SQL block to print the region_id and region_name from
REGIONS with even region_id. Format the output: <REGION_ID> :
<REGION_NAME> (Note: Make use of HR schema)
*/

set serveroutput on;
declare
c_regionname REGIONS.region_name%type;
c_regionid REGIONS.region_id%type;
cursor c_region is
select region_name,region_id from REGIONS;
begin
open c_region;
<<fetch_region>>
fetch c_region into c_regionname,c_regionid;
while c_region%found loop
if MOD(c_regionid,2)=0 then
dbms_output.put_line(c_regionid||':'||c_regionname);
end if;
goto fetch_region;
end loop;
close c_Region;
end;
/