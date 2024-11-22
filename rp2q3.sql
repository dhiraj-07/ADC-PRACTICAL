/*
iii) Write a PL/SQL block to accept employee’s id from the user and print
employee’s name with its experience level. (Note: Make use of HR schema)

Salary Experience Level
< 5000 Entry
5000 – 10000 Mid
10000 – 15000 Senior
> 15000 Executive
*/

SET SERVEROUTPUT ON;

DECLARE
    v_firstname VARCHAR2(20);
    v_lastname VARCHAR2(20);  
    n_salary NUMBER(10);    
    n_empid NUMBER(6);      
BEGIN
    SELECT first_name, last_name, salary
    INTO v_firstname, v_lastname, n_salary
    FROM Employees
    WHERE Employee_id = &n_empid;

    IF (n_salary < 5000) THEN
        DBMS_OUTPUT.PUT_LINE(v_firstname || ' ' || v_lastname || ' - Experience: Entry Level');
    ELSIF (n_salary >= 5000) AND (n_salary < 10000) THEN
        DBMS_OUTPUT.PUT_LINE(v_firstname || ' ' || v_lastname || ' - Experience: Mid');
    ELSIF (n_salary >= 10000) AND (n_salary < 15000) THEN
        DBMS_OUTPUT.PUT_LINE(v_firstname || ' ' || v_lastname || ' - Experience: Senior');
    ELSIF (n_salary >= 15000) THEN
        DBMS_OUTPUT.PUT_LINE(v_firstname || ' ' || v_lastname || ' - Experience: Executive');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No records matched');
    END IF;
end;
/