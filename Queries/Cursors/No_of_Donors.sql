SET SERVEROUTPUT ON

DECLARE
    CURSOR C IS SELECT blood_type FROM Blood_Bank;
    pl_count NUMBER(2);
    pl_group Blood_Bank.blood_type%TYPE;
    badname EXCEPTION;
    em_pty EXCEPTION;
    flag NUMERIC(1) := 0;

BEGIN
    pl_group := '&Blood_Type';

    FOR i IN C
    LOOP
        IF pl_group = i.blood_type THEN 
            flag := 1;
        END IF;    
    END LOOP;        

    IF flag = 0 AND pl_group NOT IN('A+','A-','O+','O-','B+','B-','AB+','AB-') THEN
        RAISE badname;
    ELSIF flag = 0 THEN
        RAISE em_pty;
    END IF;        
        
    SELECT count(donor_id) 
    INTO pl_count
    FROM Blood_Bank
    GROUP BY blood_type
    HAVING pl_group = blood_type;

    DBMS_OUTPUT.PUT_LINE('There are ' || pl_count || ' donors');

    EXCEPTION
        WHEN em_pty THEN
            DBMS_OUTPUT.PUT_LINE('The blood group is not present in our bank');
        WHEN badname THEN
            DBMS_OUTPUT.PUT_LINE('There is no such blood group');    
END;
/        