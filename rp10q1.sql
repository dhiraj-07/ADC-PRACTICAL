/*
Q.1) Write a program to create a row level trigger for the EMPLOYEES table that would fire
for UPDATE operations performed on the EMPLOYEES table. This trigger should display
the salary difference between the old values and new values. (Use BEFORE Clause)
*/

SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER rachana_before_salary_update
BEFORE UPDATE OF salary ON employees
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE(
        ' | Employee ID: ' || :old.employee_id || 
        ' | Old Salary: ' || :old.salary ||
        ' | New Salary: ' || :new.salary || 
        ' | Salary Difference: ' || (:new.salary - :old.salary)
    );
END;
/

UPDATE employees
SET salary = salary + 500
WHERE employee_id = 206;