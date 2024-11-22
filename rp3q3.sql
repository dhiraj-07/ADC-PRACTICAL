/*
B) FOR-LOOP Statements
iii) Write a PL/SQL block to insert the following records into JOBS table using
FOR Loop. (Note: Make use of HR schema)
there is a table.
*/

SET SERVEROUTPUT ON;
DECLARE
    TYPE namesarray IS VARRAY(6) OF VARCHAR2(20);
    names namesarray;
    v_jobid jobs.job_id%TYPE := '&v_jobid';
    v_jobtitle jobs.job_title%TYPE := '&v_jobtitle';
    v_minsal jobs.min_salary%TYPE := '&v_minsal';
    v_maxsal jobs.max_salary%TYPE := '&v_maxsal';


    total NUMBER;

BEGIN
   
    names := namesarray('01', '02', '03', '04', '05', '06');
    total := names.COUNT;

    
    FOR i IN 1 .. total LOOP
        INSERT INTO jobs (job_id, job_title, min_salary, max_salary) 
        VALUES (v_jobid || names(i), v_jobtitle, v_minsal, v_maxsal);

        DBMS_OUTPUT.PUT_LINE('1 record inserted with job_id: ' || v_jobid || names(i));
    END LOOP;

END;
/