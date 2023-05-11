SET SERVEROUTPUT ON

DECLARE
    CURSOR C IS SELECT patient_id FROM Patient;
    pl_pat_id Patient.patient_id%TYPE;
    pl_doc_id Doctor.doctor_id%TYPE;
    pl_doc_name Doctor.doctor_name%TYPE;
    badname EXCEPTION;
    flag NUMERIC(1) := 0;

BEGIN
    pl_pat_id := '&Patient_ID';

    FOR i IN C
    LOOP
        IF i.patient_id = pl_pat_id THEN
            flag := 1;
            EXIT;
        END IF;
    END LOOP;        

    IF flag = 0 THEN
        RAISE badname;
    END IF;    

    SELECT appointed_doctor_id INTO pl_doc_id
    FROM Patient
    WHERE patient_id = pl_pat_id;

    SELECT doctor_name INTO pl_doc_name
    FROM Doctor
    WHERE doctor_id = pl_doc_id;
    DBMS_OUTPUT.PUT_LINE('Doctor appointed is  ' || pl_doc_name || ' ' || pl_doc_id );

    EXCEPTION
        WHEN badname THEN
            DBMS_OUTPUT.PUT_LINE('There is no such patient');
END;                 
/