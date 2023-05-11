--List the names and phone numbers of all patients who have bills with a status of 'unpaid'.

SELECT patient_name, phone_number
FROM Patient p
JOIN Bill b ON p.patient_id = b.patient_id
WHERE b.status = 'Unpaid';
