SET SERVEROUTPUT ON

DECLARE
    CURSOR C1 IS SELECT patient_id FROM Patient;
    CURSOR C2 IS SELECT medicine_name FROM Pharmacy;
    CURSOR C3(med_name Pharmacy.medicine_name%TYPE) IS SELECT * FROM Pharmacy WHERE medicine_name = med_name FOR UPDATE;  
    pl_med_name Pharmacy.medicine_name%TYPE;
    pl_pat_id Patient.patient_id%TYPE;
    pl_price NUMERIC(5);
    pl_amount labs.fees%TYPE;
    pl_num Pharmacy.quantity%TYPE;
    flag NUMERIC(1) := 0;
    pl_new_bill_id Bill.bill_id%TYPE;
    badname1 EXCEPTION;
    badname2 EXCEPTION;
    badquantity EXCEPTION;


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

    flag := 0;
    pl_med_name := '&Med_name';

    FOR j IN C2
    LOOP
        IF j.medicine_name = pl_med_name THEN
            flag := 1;
            EXIT;
        END IF;
    END LOOP;    

    IF flag = 0 THEN
        RAISE badname2;
    END IF;

    flag := 0;
    pl_num := '&Quantity';
    FOR k IN C3(pl_med_name)
    LOOP
        IF pl_num > k.quantity  OR pl_num <= 1 THEN
            RAISE badquantity;  
        END IF;
    END LOOP;

    SELECT price INTO pl_price
    FROM Pharmacy
    WHERE medicine_name = pl_med_name;
    pl_price := pl_price * pl_num;

     FOR k IN C3(pl_med_name)
    LOOP
        pl_num := k.quantity - pl_num;
    END LOOP;

    pl_amount := '&Price';
    IF pl_price != pl_amount THEN
        DBMS_OUTPUT.PUT_LINE('The correct amount was not entered');
        INSERT INTO Failed_Payments VALUES(pl_new_bill_id,pl_pat_id,CURRENT_TIMESTAMP,pl_price,pl_amount);
    ELSE
        INSERT INTO Bill VALUES(pl_new_bill_id,pl_pat_id,'Paid',SYSDATE,pl_price);
        UPDATE Pharmacy SET Quantity = pl_num WHERE medicine_name = pl_med_name;
    END IF;    

    EXCEPTION
        WHEN badname1 THEN
            DBMS_OUTPUT.PUT_LINE('There is no such patient');
        WHEN badname2 THEN
            DBMS_OUTPUT.PUT_LINE('There is no such medicine');  
        WHEN badquantity THEN
            DBMS_OUTPUT.PUT_LINE('Invalid quantity entered');
END;
/    

SELECT * FROM success_log;