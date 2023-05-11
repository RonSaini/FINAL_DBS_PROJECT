SET SERVEROUTPUT ON

DECLARE 
    CURSOR C1 IS SELECT appointed_doctor_id FROM Patient;
    CURSOR C2(doc_id Patient.appointed_doctor_id%TYPE) IS SELECT patient_id, patient_name FROM Patient WHERE appointed_doctor_id = doc_id;
    badname EXCEPTION;
    pl_doc_id Patient.appointed_doctor_id%TYPE;
    flag NUMERIC(1) := 0;

BEGIN
    pl_doc_id := '&Doctor_ID';

    FOR i IN C1
    LOOP
        IF i.appointed_doctor_id = pl_doc_id THEN
           flag := 1;
            EXIT;
        END IF;
    END LOOP;

    IF flag = 0 THEN
        RAISE badname;
    END IF;

    DBMS_OUTPUT.PUT_LINE('The patients under this doctor are: ');
    FOR j IN C2(pl_doc_id)
    LOOP
        DBMS_OUTPUT.PUT_LINE(j.patient_id || '  ' || j.patient_name);
    END LOOP;

    EXCEPTION
        WHEN badname THEN
            DBMS_OUTPUT.PUT_LINE('No such Doctor exists');
END;
/                  