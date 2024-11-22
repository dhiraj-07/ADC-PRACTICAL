/*
A) Create or Replace a procedure and call procedure

Q.1) Write a PL/SQL procedure named today_is_<RollNo> and call the procedure to
display the current system date in long format.
E.g: If today’s date is 26-NOV-2022 then the output of procedure should be: Today
is Saturday, November 26, 2022.
*/

set serveroutput on;
create or replace procedure today_is_87
as
begin
dbms_output.put_line('Today is ' || to_char (sysdate , 'DL' ));
end today_is_87;
/
begin
today_is_87();
end;
/