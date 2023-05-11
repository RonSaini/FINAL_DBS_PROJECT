CREATE OR REPLACE PROCEDURE insert_department(
    dept_name IN VARCHAR,
    block_no IN NUMBER
)
IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM Department WHERE Dept_Name = insert_department.dept_name;
    
    IF v_count > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Department already exists.');
    ELSE
        INSERT INTO Department(Dept_Name, block_No)
        VALUES(dept_name, block_no);
        COMMIT;
        DBMS_OUTPUT.PUT_LINE('New department inserted.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error inserting new department.');
END;
/

SET SERVEROUTPUT ON
DECLARE
    v_dept_name VARCHAR2(50);
    v_block_no NUMBER;
BEGIN
    -- Prompt the user for input
    v_dept_name := '&departmentname';
    v_block_no := &Enter_block_no;
    -- Call the insert_department procedure
    insert_department(v_dept_name, v_block_no);
END;
/
