SET SERVEROUTPUT ON

DECLARE
    CURSOR C1 IS SELECT patient_id FROM Patient;
    CURSOR C2 IS SELECT DISTINCT tests_done FROM labs;
    CURSOR C3 (test labs.tests_done%TYPE) IS SELECT * FROM labs WHERE tests_done = test;
    pl_test labs.tests_done%TYPE;
    pl_pat_id Patient.patient_id%TYPE;
    pl_amount labs.fees%TYPE;
    flag NUMERIC(1) := 0;
    pl_new_bill_id Bill.bill_id%TYPE;
    badname1 EXCEPTION;
    badname2 EXCEPTION;
    cnt NUMERIC(1) := 0;

BEGIN
    SELECT max(bill_id)
    INTO pl_new_bill_id
    FROM Bill;

    pl_new_bill_id := pl_new_bill_id + 1;

    pl_pat_id := '&Patient_ID';

    FOR i IN C1
    LOOP
        IF i.patient_id = pl_pat_id THEN
            flag := 1;
            EXIT;
        END IF;
    END LOOP;        

    IF flag = 0 THEN
        RAISE badname1;
    END IF;

    pl_test := '&Test_To_Take';
    flag := 0;

    FOR j IN C2
    LOOP
        IF j.tests_done = pl_test THEN
            flag := 1;
            EXIT;
        END IF;
    END LOOP;

    IF flag = 0 THEN
        RAISE badname2;
    END IF;  

    FOR k IN C3(pl_test)
    LOOP
        IF cnt = 0 THEN 
            pl_amount := '&fees';
            IF pl_amount = k.fees THEN
                INSERT INTO Bill VALUES(pl_new_bill_id,pl_pat_id,'Paid',SYSDATE,k.fees);
            ELSE
                DBMS_OUTPUT.PUT_LINE('The correct amount was not entered');
                INSERT INTO Failed_Payments VALUES(pl_new_bill_id,pl_pat_id,CURRENT_TIMESTAMP,k.fees,pl_amount);
            END IF;        
            cnt := cnt + 1;
        END IF;    
        DBMS_OUTPUT.PUT_LINE('You can go to ' || k.lab_name || ' in block ' || k.block_no);
    END LOOP;    

    EXCEPTION
        WHEN badname1 THEN
            DBMS_OUTPUT.PUT_LINE('There is no such patient');
        WHEN badname2 THEN
            DBMS_OUTPUT.PUT_LINE('There is no such test');    
END;                 
/    

SELECT * FROM Bill;
SELECT * FROM success_log;
SELECT * FROM Failed_Payments;