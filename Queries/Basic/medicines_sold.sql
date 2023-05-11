--Find the medicines that have been sold to patients

SELECT DISTINCT p.medicine_name
FROM Pharmacy p
INNER JOIN Buys b ON p.medicine_name = b.medicine_name;
