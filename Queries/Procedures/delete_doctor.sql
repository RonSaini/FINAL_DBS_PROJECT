--Delete a doctor record


CREATE OR REPLACE PROCEDURE delete_doctor_record(
d_id IN NUMBER
)
IS
v_doctor_count NUMBER;
BEGIN
-- check if doctor_id exists in Doctor table
SELECT COUNT(*)
INTO v_doctor_count
FROM Doctor
WHERE doctor_id = d_id;
IF v_doctor_count = 0 THEN
    DBMS_OUTPUT.PUT_LINE('No doctor found with ID ' || d_id);
    RETURN;
END IF;
-- delete doctor record
DELETE FROM Doctor
WHERE doctor_id = d_id;
COMMIT;
DBMS_OUTPUT.PUT_LINE('Doctor record deleted successfully.');
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
DBMS_OUTPUT.PUT_LINE('Error deleting doctor record: ' || SQLERRM);
END;
/


SET SERVEROUTPUT ON;
DECLARE
v_d_id NUMBER := &d_id;
BEGIN
delete_doctor_record(v_d_id);
END;
/




