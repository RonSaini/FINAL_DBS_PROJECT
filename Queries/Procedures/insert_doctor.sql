CREATE OR REPLACE PROCEDURE update_doctor_fees AS
      doc_ID NUMBER;
     doc_fees NUMBER;
     doc_count NUMBER;
BEGIN
     -- Prompt user for doctor ID
        doc_ID := &doc_ID;
      -- Check if doctor ID exists in Doctor table
      SELECT COUNT(*)
      INTO   doc_count
      FROM   Doctor
      WHERE  doctor_ID = doc_ID;
       -- If doctor ID exists, update doctor fees
      IF doc_count > 0 THEN
           doc_fees := &doc_fees;
           UPDATE Doctor
          SET Fees = doc_fees
          WHERE doctor_ID = doc_ID;
           COMMIT;
          dbms_output.put_line('Doctor fees updated successfully!');
      -- If doctor ID does not exist, display error message
      ELSE
          dbms_output.put_line('Doctor ID does not exist.');
      END IF;
EXCEPTION
      WHEN OTHERS THEN
          dbms_output.put_line('Error occurred: ' || SQLCODE || ' - ' || SQLERRM);
          ROLLBACK;
 END;
/

/*
set SERVEROUTPUT on
BEGIN
   update_doctor_fees;
END;
/