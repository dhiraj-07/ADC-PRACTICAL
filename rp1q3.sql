/*
Q3.Write a PL/SQL block to accept the tablename from the user and create the table
that contains Lecturer_RollNo (ID, FirstName, LastName, Designation, and
Salary). Verify whether the table is created successfully by printing the
structure of the table.
*/

SET SERVEROUTPUT ON;
DECLARE
   v_mytablename      VARCHAR2(20);
   n_rec_id           NUMBER(5);
   v_rec_firstname    VARCHAR2(20);
   v_rec_lastname     VARCHAR2(20);
   v_rec_designation  VARCHAR2(25);
   n_rec_salary       NUMBER(5);
   v_insert_query     VARCHAR2(500);
BEGIN
   v_mytablename := '&v_mytablename';
   n_rec_id := &n_rec_id;
   v_rec_firstname := '&v_rec_firstname';
   v_rec_lastname := '&v_rec_lastname';
   v_rec_designation := '&v_rec_designation';
   n_rec_salary := &n_rec_salary;

   v_insert_query := 'INSERT INTO ' || v_mytablename ||
                     ' (ID, firstname, lastname, designation, salary) ' ||
                     ' VALUES (:1, :2, :3, :4, :5)'; 
   COMMIT;
   DBMS_OUTPUT.PUT_LINE('1 row created in table: ' || v_mytablename);
END;
/