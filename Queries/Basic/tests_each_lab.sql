--Find the number of tests conducted in each lab and the total fees collected for each lab:


SELECT l.lab_name, COUNT(*) AS total_tests, SUM(l.fees) AS total_fees
FROM Labs l
GROUP BY l.lab_name;