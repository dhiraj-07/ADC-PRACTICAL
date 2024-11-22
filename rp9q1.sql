/*
Q.1) Write a PL/SQL function to count the number of records in the table entered by the user
and return value back to the variable to store and print.
*/

create or replace function count_records
(p_table_name in varchar2)
return number
is
v_count number;
v_sql varchar2(1000);
begin
v_sql := 'Select count(*) from ' || p_table_name;
execute immediate v_sql into v_count;
return v_count;
end;
/
declare
v_table_name varchar2(100) :='Employees';
v_record_count number;
begin
v_record_count := count_records(v_table_name);
dbms_output.put_line('The number of records in table ' || v_table_name || ' is ' || v_record_count);
end;
/