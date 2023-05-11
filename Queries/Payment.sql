DROP TABLE Failed_Payments;

CREATE TABLE Failed_Payments(
    bill_id NUMBER(5),
    patient_id NUMBER(10),
    failed_time TIMESTAMP,
    actual_amount NUMBER(10),
    tried_amount NUMBER(10)
);

SET SERVEROUTPUT ON

DECLARE
    CURSOR C1 IS SELECT bill_id FROM Bill;
    CURSOR C2 (bil_id Bill.bill_id%TYPE) IS SELECT * FROM Bill WHERE bill_id = bil_id;
    pl_bill_id Bill.bill_id%TYPE;
    pl_amount Bill.amount%TYPE;
    flag NUMERIC(1) := 0;
    badname EXCEPTION;

BEGIN
    pl_bill_id := '&Bill_ID';

    FOR i IN C1
    LOOP
        IF i.bill_id = pl_bill_id THEN
            flag := 1;
            EXIT;
        END IF;
    END LOOP;        

    IF flag = 0 THEN
        RAISE badname;
    END IF;

    FOR j IN C2(pl_bill_id) 
    LOOP
        IF j.status = 'Paid' THEN
            DBMS_OUTPUT.PUT_LINE('Bill has been already paid');
            EXIT;
        END IF;    
        DBMS_OUTPUT.PUT_LINE('Enter Amount of : ' || j.amount);
        pl_amount := '&Amount';
        IF pl_amount = j.amount THEN
            UPDATE Bill SET status = 'Paid' WHERE bill_id = pl_bill_id;
        ELSE
            DBMS_OUTPUT.PUT_LINE('The correct amount was not entered');
            INSERT INTO Failed_Payments VALUES(j.bill_id,j.patient_id,CURRENT_TIMESTAMP,j.amount,pl_amount);
        END IF;            
    END LOOP;     
    
    EXCEPTION
        WHEN badname THEN
            DBMS_OUTPUT.PUT_LINE('No such Bill Exists');
END;
/            
SELECT * FROM Bill;
SELECT * FROM Failed_Payments;
SELECT * FROM success_log;


