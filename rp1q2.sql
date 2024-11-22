/*
Q2.Write a PL/SQL block to accept the tablename from the user and create the table
that contains Lecturer_RollNo (ID, FirstName, LastName, Designation, and
Salary). Verify whether the table is created successfully by printing the
structure of the table.
*/

SET SERVEROUTPUT ON;
DECLARE
    v_mytablename VARCHAR2(20);
    v_create_query VARCHAR2(200);
BEGIN
    v_mytablename := '&v_mytablename'; 
    v_create_query := 'CREATE TABLE ' || v_mytablename || 
                      ' (id NUMBER(5) PRIMARY KEY, ' ||
                      'firstname VARCHAR2(15), ' ||
                      'lastname VARCHAR2(15), ' ||
                      'designation VARCHAR2(15), ' ||
                      'salary NUMBER(5))';
                      
    EXECUTE IMMEDIATE v_create_query;
DBMS_OUTPUT.PUT_LINE('Table created successfully: ' || v_mytablename);
END;
/