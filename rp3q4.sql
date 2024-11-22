/*
iv) Write a PL/SQL block to print the firstname and hire date of EMPLOYEE table
whose has minimum and maximum salary in reverse order.
*/

SET SERVEROUTPUT ON;
DECLARE
    min_sal NUMBER;
    max_sal NUMBER;
    v_fname VARCHAR2(20);
    v_hiredate DATE;
BEGIN
    
    SELECT MIN(salary), MAX(salary) INTO min_sal, max_sal FROM employees;

    DBMS_OUTPUT.PUT_LINE('Minimum salary: ' || min_sal);
    DBMS_OUTPUT.PUT_LINE('Maximum salary: ' || max_sal);


    FOR counter IN REVERSE min_sal .. max_sal LOOP
       
        BEGIN
            SELECT first_name, hire_date 
            INTO v_fname, v_hiredate
            FROM employees
            WHERE salary = counter;

 
            DBMS_OUTPUT.PUT_LINE('Salary: ' || counter || ' -> ' || v_fname || ', ' || v_hiredate);
        END;
    END LOOP;

END;
/