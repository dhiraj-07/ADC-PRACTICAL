/*
B) Define procedure to insert data
Q.3) Write a PL/SQL procedure to insert the following values into the LOCATIONS
(<RollNo>, 'CHM Road’, ‘421003’, ‘Ulhasnagar’, ‘Maharashtra’, ‘IN’) and verify the
same using SELECT statement. (Note: Make use of HR schema)
*/

set serveroutput on;
create or replace procedure insert_loc_87
(location_id in number, street_address in varchar2 ,postal_code in varchar2, city in varchar2, state_province in varchar2, country_id in varchar2)
is
begin
insert into locations (location_id, street_address , postal_code , city, state_province , country_id)
values(location_id,street_address, postal_code, city, state_province, country_id);
end;
/
begin
insert_loc_87 (&loc_id, '&streetadd' , '&postalcode', '&city' , '&stateprov' , '&countryid' );
dbms_output.put_line('1 row inserted.....' );
end;
/