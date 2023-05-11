CREATE OR REPLACE PROCEDURE add_purchase(
    p_patient_id IN NUMBER,
    p_medicine_name IN VARCHAR2
)
IS
BEGIN
    INSERT INTO Buys(patient_ID, medicine_name)
    VALUES(p_patient_id, p_medicine_name);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Purchase added successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END ;
/

set SERVEROUTPUT on
DECLARE
    v_patient_id NUMBER;
    v_medicine_name VARCHAR2(15);
BEGIN
    v_patient_id := &patient_id;
    v_medicine_name := '&medicine_name';
    add_purchase(v_patient_id, v_medicine_name);
END;
/
