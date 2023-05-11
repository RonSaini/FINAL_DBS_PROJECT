--Find the average fee charged by doctors in each department:


SELECT d.Dept_Name, AVG(d.Fees) AS avg_doctor_fee
FROM Doctor d
INNER JOIN Department dept ON d.Dept_Name = dept.Dept_Name
GROUP BY dept.Dept_Name;