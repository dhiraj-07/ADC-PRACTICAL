/*
ii).Write a PL/SQL block to display postal codes and name of cities from
LOCATIONS of countries that begins with ‘I’.
(Note: Make use of HR schema)
*/

set serveroutput on;
declare 
c_postal varchar2(10);
c_city varchar2(20);
cursor c_loc is
select postal_code,city from locations where country_id like 'I%';
begin
open c_loc;
fetch c_loc into c_postal,c_city;
while c_loc%found loop
dbms_output.put_line(c_postal || ',' || c_city);
fetch c_loc into c_postal,c_city;
end loop;
close c_loc;
end;
/