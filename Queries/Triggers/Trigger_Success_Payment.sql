DROP TABLE success_log;

CREATE TABLE success_log(
    bill_id NUMBER(5),
    time_of_payment TIMESTAMP
);


SET SERVEROUTPUT ON 

CREATE OR REPLACE TRIGGER row_change
BEFORE UPDATE OR INSERT ON Bill
FOR EACH ROW
BEGIN
    CASE 
        WHEN UPDATING THEN 
            INSERT INTO success_log VALUES(:OLD.bill_id,CURRENT_TIMESTAMP);
        WHEN INSERTING THEN 
            INSERT INTO success_log VALUES(:NEW.bill_id,CURRENT_TIMESTAMP);    
    END CASE;
END;
/    

