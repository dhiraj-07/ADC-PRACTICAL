/*
Q.1) Create a table Supplier_1111 (Sup_no, Sup_Name). The sup_no should be generated
by the sequence which starts from 1001 with increment of 2 in an ascending order. Create
procedure in PL/SQL which generates the values of the sequence and adds the same in the
table.
*/

create table supplier(sup_no number,sup_name varchar2(15));
desc supplier;
create sequence seq_supplier
start with 1001
increment by 2;
create or replace procedure proc_supplier(v_name in varchar2)
is
begin
insert into supplier values(seq_supplier.nextval,v_name);
commit;
end;
/
exec proc_supplier('gaurav');
exec proc_supplier('gautam');
ecec proc_supplier('uttam');
select*from supplier;