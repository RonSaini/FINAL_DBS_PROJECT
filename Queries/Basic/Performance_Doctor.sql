    -- query will display the appointed_doctor_id(s) and the corresponding number of patients they have appointed, only for the doctor(s) with the maximum number of patients in the Patient table.
    
    
    SELECT COUNT(*) AS no_patients, appointed_doctor_id
    FROM Patient
    GROUP BY appointed_doctor_id
    HAVING COUNT(*) = (
    SELECT MAX(no_patients)
        FROM (SELECT COUNT(*) AS no_patients, appointed_doctor_id FROM Patient GROUP BY appointed_doctor_id)); 

    SELECT COUNT(*) AS no_patients, appointed_doctor_id
    FROM Patient
    GROUP BY appointed_doctor_id
    HAVING COUNT(*) = (
        SELECT MIN(no_patients)
        FROM (SELECT COUNT(*) AS no_patients, appointed_doctor_id FROM Patient GROUP BY appointed_doctor_id));  