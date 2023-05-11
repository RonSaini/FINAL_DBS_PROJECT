--Get the names and ages of all employees (doctors, nurses, and managers) who are younger than 30:


SELECT doctor_name, age
FROM Doctor
WHERE age < 30
UNION
SELECT nurse_name, age
FROM Nurses
WHERE age < 30
UNION
SELECT manager_name, age
FROM Management
WHERE age < 30;