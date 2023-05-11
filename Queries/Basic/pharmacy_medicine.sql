--Find the medicines that have a quantity below the average quantity in the Pharmacy table

SELECT medicine_name, quantity
FROM Pharmacy
WHERE quantity < (SELECT AVG(quantity) FROM Pharmacy);
