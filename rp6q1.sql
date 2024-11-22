/*
A) Implicit Cursors
Q.1) Write a program in PL/SQL to show the uses of implicit cursor without using any
attribute that accepts employee id from the user and prints the following output:
Hi, I am <FIRST_NAME> <LAST_NAME>.
You can reach me out on <EMAIL> or <PHONE_NUMBER>.
I have been working since <HIRE_DATE>.
If the employee id does not exist than catch the EXCEPTION and print the
appropriate message.
*/

SET SERVEROUTPUT ON;

DECLARE
    emp_fname   VARCHAR2(35);
    emp_lname   VARCHAR2(35);
    emp_email   VARCHAR2(35);
    emp_phone   VARCHAR2(35);
    emp_hiredate DATE;
    emp_id      NUMBER := &employee_id;
BEGIN
    SELECT first_name, last_name, email, phone_number, hire_date 
    INTO emp_fname, emp_lname, emp_email, emp_phone, emp_hiredate
    FROM employees
    WHERE employee_id = emp_id; -- Correct condition for filtering based on employee_id

    DBMS_OUTPUT.PUT_LINE('Hi, I am ' || emp_fname || ' ' || emp_lname || '.');
    DBMS_OUTPUT.PUT_LINE('You can reach me at ' || emp_email || ' or ' || emp_phone || '.');
   dbms_output.put_line('i have been working since'||emp_hiredate);
EXCEPTION
      WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('There is no employee with ID ' || TO_CHAR(emp_id));
END;
/