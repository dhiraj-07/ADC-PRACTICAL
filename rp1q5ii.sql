--with EXIT

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
exit;
end loop;
end;
/