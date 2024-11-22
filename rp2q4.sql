/*
iv) Write a menu-driven PL/SQL block using CASE statement to:
1. Create Bonus_<RollNo> (id NUMBER, amt NUMBER) Table
2. Insert record into Bonus_<RollNo>
3. Display the records into Bonus_<RollNo>
4. Drop the Bonus_<RollNo> Table
Mention the comment against every menu as per the following table using
case statements.
*/

set serveroutput on;
declare
sql_stmt varchar2(200);
v_choice number(2);
n_id number(2) := 99;
n_amt number(5) :=9999;
begin
case &v_choice 
when 1 then 
execute immediate 'create table bonus_95 (id number, amt number)' ;
dbms_output.put_line('bonus_95 Table created successfully......' );
when 2 then
sql_stmt := 'insert into bonus_95 values (:1, :2)';
execute immediate sql_stmt using n_id,n_amt;
dbms_output.put_line('Record inserted in bonus_95.....');
when 3 then
execute immediate 'select*from bonus_95';
dbms_output.put_line('Records found in bonus_95......');
when 4 then
execute immediate 'drop table bonus_95';
dbms_output.put_line('bonus_95 dropped....');
else
raise case_not_found;
end case;
end;
/