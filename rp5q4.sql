/*
C) A forward declaration of procedure

Q.4) Write a PL/SQL procedure using forward declaration that generates the email for the
following employee’s using the first name first and last name first with the
employer’s domain name as ‘CHMCSYCS’. If the Email Address is too long catch
using Execption and print the appropriate message.
First_Name Last_Name
John Doe
Elizabeth MacDonald
*/

set serveroutput on;
declare
first_name employees.first_name%type;
last_name employees.last_name%type;
email employees.email%type;
employer varchar2(8) :='CHMCSYCS';
procedure create_email (name1 in varchar2, name2 in varchar2, company in varchar2)
is
error_message varchar2(30) := 'Email address is too long. ' ;
begin
email := name1 || '.' ||name2 || '@' || company;
exception
when value_error then
dbms_output.put_line(error_message);
end create_email;
begin
first_name := 'John';
last_name := 'Doe';
create_email(first_name,last_name,employer);
dbms_output.put_line('With first name,first,email is: ' || email);
create_email(last_name,first_name,employer);
dbms_output.put_line('With last name,first,email is: ' ||email);
first_name := 'Elizabeth' ;
last_name := 'MacDonald' ;
create_email(first_name,last_name,employer);
end;
/