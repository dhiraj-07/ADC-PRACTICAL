/*
Q.1) Write a PL/SQL block to accept the department id from user and update the
department name to ‘Testing’. And declare E_INVALID_DEPARTMENT userdefine exception.
If record not found then call the exception and print appropriate message.
*/

declare
e_invalid_department exception;
v_dept_id departments.department_id%type;
v_count integer;
begin
v_dept_id:=&dept_id;
select count(*) into v_count from departments where department_id=v_dept_id;
if v_count=0 then
raise e_invalid_department;
else
update departments
set department_name='testing'
where department_id=v_Dept_id;
commit;
dbms_output.put_line('department updated successfully.');
end if;
exception
when e_invalid_department then
dbms_output.put_line('error:department id is not found');
when others then
dbms_output.put_line('an unexpected error occured:'||sqlerrm);
end;
/