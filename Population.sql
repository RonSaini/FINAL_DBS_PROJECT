delete from Blood_Bank;
delete from Admissions;
delete from Room;
delete from Room_Pay_Structure;
delete from Bill;
delete from Buys;
delete from Patient;
delete from Labs;
delete from Pharmacy;
delete from Doctor;
delete from Nurses;
delete from Management;
delete from Pay_Scale;
delete from Department;
delete from Blocks;
delete from Employee;



INSERT INTO Employee VALUES (10002,TO_DATE('2022-01-01','YYYY-MM-DD'), 'Doctor');
INSERT INTO Employee VALUES (10007,TO_DATE('2021-05-10','YYYY-MM-DD'), 'Doctor');
INSERT INTO Employee VALUES (10005,TO_DATE('2020-11-05','YYYY-MM-DD'), 'Doctor');
INSERT INTO Employee VALUES (10011,TO_DATE('2020-10-05','YYYY-MM-DD'), 'Doctor');
INSERT INTO Employee VALUES (10012,TO_DATE('2020-09-05','YYYY-MM-DD'), 'Doctor');
INSERT INTO Employee VALUES (10013,TO_DATE('2020-08-05','YYYY-MM-DD'), 'Doctor');
INSERT INTO Employee VALUES (10014,TO_DATE('2020-06-05','YYYY-MM-DD'), 'Doctor');
INSERT INTO Employee VALUES (10015,TO_DATE('2020-07-05','YYYY-MM-DD'), 'Doctor');
INSERT INTO Employee VALUES (10016,TO_DATE('2020-05-05','YYYY-MM-DD'), 'Doctor');
INSERT INTO Employee VALUES (10001,TO_DATE('2022-01-01','YYYY-MM-DD'), 'Nurse');
INSERT INTO Employee VALUES (10008,TO_DATE('2022-03-10','YYYY-MM-DD'), 'Nurse');
INSERT INTO Employee VALUES (10010,TO_DATE('2019-08-18','YYYY-MM-DD'), 'Nurse');
INSERT INTO Employee VALUES (10004,TO_DATE('2022-02-28','YYYY-MM-DD'), 'Nurse');
INSERT INTO Employee VALUES (10021,TO_DATE('2022-01-28','YYYY-MM-DD'), 'Nurse');
INSERT INTO Employee VALUES (10022,TO_DATE('2022-03-28','YYYY-MM-DD'), 'Nurse');
INSERT INTO Employee VALUES (10023,TO_DATE('2022-04-28','YYYY-MM-DD'), 'Nurse');
INSERT INTO Employee VALUES (10024,TO_DATE('2022-05-28','YYYY-MM-DD'), 'Nurse');
INSERT INTO Employee VALUES (10003,TO_DATE('2022-01-01','YYYY-MM-DD'), 'Manager');
INSERT INTO Employee VALUES (10006,TO_DATE('2019-03-15','YYYY-MM-DD'), 'Manager');
INSERT INTO Employee VALUES (10009,TO_DATE('2021-09-23','YYYY-MM-DD'), 'Manager');
INSERT INTO Employee VALUES (10031,TO_DATE('2022-01-02','YYYY-MM-DD'), 'Manager');
INSERT INTO Employee VALUES (10032,TO_DATE('2019-05-15','YYYY-MM-DD'), 'Manager');
INSERT INTO Employee VALUES (10033,TO_DATE('2019-08-15','YYYY-MM-DD'), 'Manager');
INSERT INTO Employee VALUES (10034,TO_DATE('2019-06-15','YYYY-MM-DD'), 'Manager');
INSERT INTO Employee VALUES (10035,TO_DATE('2019-07-15','YYYY-MM-DD'), 'Manager');



INSERT INTO Blocks VALUES (1, 'North Wing');
INSERT INTO Blocks VALUES (2, 'East Wing');
INSERT INTO Blocks VALUES (3, 'South Wing');
INSERT INTO Blocks VALUES (4, 'West Wing');



INSERT INTO Department VALUES ('Cardiology', 2);
INSERT INTO Department VALUES ('Neurology', 3);
INSERT INTO Department VALUES ('Orthopedics', 4);
INSERT INTO Department VALUES ('Oncology', 2);
INSERT INTO Department VALUES ('Gynecology', 1);
INSERT INTO Department VALUES ('Pediatrics', 4);
INSERT INTO Department VALUES ('Psychiatry', 3);
INSERT INTO Department VALUES ('Dermatology', 1);
INSERT INTO Department VALUES ('Endocrinology', 2);
INSERT INTO Department VALUES ('Anesthesiology', 3);
INSERT INTO Department VALUES ('Medicine', 4);
INSERT INTO Department VALUES ('Surgery', 1);
INSERT INTO Department VALUES ('Pathology', 2);



INSERT INTO Pay_Scale VALUES ('Junior Nurse', 50000);
INSERT INTO Pay_Scale VALUES ('Senior Nurse', 75000);
INSERT INTO Pay_Scale VALUES ('Junior Doctor', 80000);
INSERT INTO Pay_Scale VALUES ('Senior Doctor', 200000);
INSERT INTO Pay_Scale VALUES ('Junior Manager', 100000);
INSERT INTO Pay_Scale VALUES ('Senior Manager', 125000);



INSERT INTO Doctor values (10002, 'John Smith', 39, 'M', 'Surgery', 'Senior Doctor',
100000, 5551234678);
INSERT INTO Doctor values (10007, 'Bob Johnson', 40, 'M', 'Cardiology','Senior Doctor',
100000, 5555678123);
INSERT INTO Doctor values (10005, 'Emily Chen', 28, 'F', 'Pediatrics', 'Junior Doctor',
80000, 5559909123);
INSERT INTO Doctor values (10011, 'Dhruv bajaj', 38, 'F', 'Oncology', 'Junior Doctor',
80000, 5559489123);
INSERT INTO Doctor values (10012, 'Aditya', 33, 'F', 'Psychiatry', 'Senior Doctor',
100000, 5559219123);
INSERT INTO Doctor values (10013, 'Aditit', 34, 'F', 'Endocrinology', 'Senior Doctor',
100000, 5559399123);
INSERT INTO Doctor values (10014, 'Rahul', 28, 'F', 'Dermatology', 'Junior Doctor',
80000, 5559944123);
INSERT INTO Doctor values (10015, 'Balaji', 25, 'F', 'Pediatrics', 'Junior Doctor',
80000, 5559889123);
INSERT INTO Doctor values (10016, 'Karrna', 27, 'F', 'Orthopedics', 'Junior Doctor',
80000, 5559789123);


INSERT INTO Nurses values (10001, 'Jane Doe', 23, 'F', 'Surgery','Junior Nurse',5554321555);
INSERT INTO Nurses values (10008, 'Michael Brown', 25, 'M', 'Pediatrics','Junior Nurse', 5555678666);
INSERT INTO Nurses values (10004, 'Steven Lee', 40, 'M', 'Orthopedics','Senior Nurse',5558755888);
INSERT INTO Nurses values (10010, 'Anna Kim', 45, 'F', 'Oncology','Senior Nurse', 5551234777);
INSERT INTO Nurses values (10021, 'Ropali', 40, 'F', 'Dermatology','Senior Nurse',5558745888);
INSERT INTO Nurses values (10022, 'Aaadarrsh', 25, 'M', 'Pediatrics','Junior Nurse', 5558735888);
INSERT INTO Nurses values (10023, 'Kattapa', 40, 'F', 'Psychiatry','Senior Nurse', 5558725888);
INSERT INTO Nurses values (10024, 'Bahubali', 23, 'M', 'Neurology','Junior Nurse', 5558715888);


INSERT INTO Management values (10003, 'Alice Wong', 55, 'F', 'Surgery', 'Senior Manager', 5554321645);
INSERT INTO Management values (10006, 'Timothy Tan', 28, 'M', 'Oncology', 'Junior Manager', 5551234772);
INSERT INTO Management values (10009, 'Laura Chen', 25, 'F', 'Pediatrics', 'Junior Manager', 5555678127);
INSERT INTO Management values (10031, 'Querky', 23, 'F', 'Neurology', 'Junior Manager',5855678127);
INSERT INTO Management values (10032, 'Kings', 42, 'M', 'Dermatology', 'Senior Manager', 5755678127);
INSERT INTO Management values (10033, 'Prince', 44, 'F', 'Pediatrics', 'Senior Manager', 5455678127);
INSERT INTO Management values (10034, 'Lakshay', 46, 'M', 'Orthopedics', 'Senior Manager', 5355678127);
INSERT INTO Management values (10035, 'Dhruv', 48, 'F', 'Endocrinology', 'Senior Manager', 5255678127);



insert into Pharmacy values('Aspirin', 'Pain reliever', 100, 5,TO_DATE('2022-01-01','YYYY-MM-DD'));
insert into Pharmacy values('Lisinopril', 'Blood pressure', 50, 90,TO_DATE('2024-06-30','YYYY-MM-DD'));
insert into Pharmacy values('Ibuprofen', 'Pain and fever', 200, 70,TO_DATE('2022-08-31','YYYY-MM-DD'));
insert into Pharmacy values('Loratadine', 'Antihistamine', 75, 140,TO_DATE('2023-12-31','YYYY-MM-DD'));
insert into Pharmacy values('Metformin', 'Diabetes medication', 120, 100,TO_DATE('2024-03-31','YYYY-MM-DD'));
insert into Pharmacy values('Omeprazole', 'Antacid', 150, 12,TO_DATE('2022-04-25', 'YYYY-MM-DD'));
insert into Pharmacy values('Amoxicillin', 'Antibiotic', 75, 7,TO_DATE('2022-05-30', 'YYYY-MM-DD'));
insert into Pharmacy values('Hydrocortisone', 'Anti-inflammatory', 25, 15,TO_DATE('2022-06-10', 'YYYY-MM-DD'));



INSERT INTO Labs VALUES('Lab A', 'Blood Test', 1, 500);
INSERT INTO Labs VALUES('Lab B', 'Urine Test', 1, 400);
INSERT INTO Labs VALUES('Lab C', 'X-ray', 2, 800);
INSERT INTO Labs VALUES('Lab D', 'MRI', 2, 1500);
INSERT INTO Labs VALUES('Lab E', 'CT Scan', 2, 1200);
INSERT INTO Labs VALUES('Lab F', 'ECG', 3, 300);
INSERT INTO Labs VALUES('Lab G', 'EEG', 3, 600);
INSERT INTO Labs VALUES('Lab H', 'Blood Test', 4, 500);
INSERT INTO Labs VALUES('Lab I', 'Urine Test', 4, 400);
INSERT INTO Labs VALUES('Lab J', 'X-ray', 4, 800);



insert into Patient values (1001, 'John', 35, 'M',TO_DATE('2022-01-01','YYYY-MM-DD'), 10002,TO_DATE('2022-01-01','YYYY-MM-DD'), 9876543210);
insert into Patient values (1002, 'Mary', 45, 'F',TO_DATE('2022-03-05','YYYY-MM-DD'), 10007,TO_DATE('2022-01-01','YYYY-MM-DD'), 9876543211);
insert into Patient values (1003, 'David', 55, 'M',TO_DATE('2022-04-10','YYYY-MM-DD'), 10002,TO_DATE('2022-01-01','YYYY-MM-DD'), 9876543212);
insert into Patient values (1004, 'Jane', 25, 'F',TO_DATE('2022-01-15','YYYY-MM-DD'), 10007,TO_DATE('2022-01-01','YYYY-MM-DD'), 9876543213);
insert into Patient values (1005, 'Sam', 60, 'M',TO_DATE('2022-01-01','YYYY-MM-DD'), 10002,TO_DATE('2022-01-01','YYYY-MM-DD'), 9876543214);
INSERT INTO Patient VALUES(1006, 'karan', 45, 'M',TO_DATE('2022-03-20','YYYY-MM-DD'), 10005,TO_DATE('2022-01-01','YYYY-MM-DD'),1234567890);
INSERT INTO Patient VALUES(1007, 'Pearl', 32, 'F',TO_DATE('2022-11-15','YYYY-MM-DD'), 10007,TO_DATE('2022-01-01','YYYY-MM-DD'),9876543210);
INSERT INTO Patient VALUES(1008, 'Adarsh', 50, 'M',TO_DATE('2022-12-01','YYYY-MM-DD'), 10005,TO_DATE('2022-01-01','YYYY-MM-DD'),5554443333);
INSERT INTO Patient VALUES(1009, 'Vamika', 28, 'F',TO_DATE('2023-04-10','YYYY-MM-DD'), 10007,TO_DATE('2022-01-01','YYYY-MM-DD'),7778889999);
INSERT INTO Patient VALUES(1010, 'Vrinda', 65, 'M',TO_DATE('2023-03-28','YYYY-MM-DD'), 10005,TO_DATE('2022-01-01','YYYY-MM-DD'),1112223333);



INSERT INTO Buys VALUES (1001, 'Lisinopril');
INSERT INTO Buys VALUES (1001, 'Metformin');
INSERT INTO Buys VALUES (1009, 'Aspirin');
INSERT INTO Buys VALUES (1002, 'Ibuprofen');
INSERT INTO Buys VALUES (1008, 'Loratadine');
INSERT INTO Buys VALUES (1003, 'Aspirin');
INSERT INTO Buys VALUES (1003, 'Metformin');
INSERT INTO Buys VALUES (1007, 'Lisinopril');
INSERT INTO Buys VALUES (1004, 'Loratadine');
INSERT INTO Buys VALUES (1007, 'Metformin');
INSERT INTO Buys VALUES (1006, 'Ibuprofen');
INSERT INTO Buys VALUES (1006, 'Metformin');
INSERT INTO Buys VALUES (1005, 'Lisinopril');
INSERT INTO Buys VALUES (1010, 'Aspirin');



INSERT INTO Bill VALUES(1201, 1001, 'Paid',TO_DATE('2022-12-01','YYYY-MM-DD'),20000);
INSERT INTO Bill VALUES(1202, 1006, NULL,TO_DATE('202-11-20','YYYY-MM-DD'),10000);
INSERT INTO Bill VALUES(1213, 1002, NULL,TO_DATE('2022-09-15','YYYY-MM-DD'),25000);
INSERT INTO Bill VALUES(1212, 1005, NULL,TO_DATE('2023-08-18','YYYY-MM-DD'),30000);
INSERT INTO Bill VALUES(1211, 1002, NULL,TO_DATE('2022-07-12','YYYY-MM-DD'),15000);
INSERT INTO Bill VALUES(1203, 1003, 'Paid',TO_DATE('2023-06-11','YYYY-MM-DD'),40000);
INSERT INTO Bill VALUES(1204, 1004, 'Paid',TO_DATE('2022-05-20','YYYY-MM-DD'),45000);
INSERT INTO Bill VALUES(1205, 1005, NULL,TO_DATE('2023-04-21','YYYY-MM-DD'),50000);
INSERT INTO Bill VALUES(1206, 1006, 'Paid',TO_DATE('2022-03-26','YYYY-MM-DD'),18000);
INSERT INTO Bill VALUES(1207, 1007, NULL,TO_DATE('2023-02-27','YYYY-MM-DD'),14000);
INSERT INTO Bill VALUES(1208, 1008, 'Paid',TO_DATE('2023-01-30','YYYY-MM-DD'),10000);
INSERT INTO Bill VALUES(1209, 1009, 'Paid',TO_DATE('2023-11-12','YYYY-MM-DD'),27000);
INSERT INTO Bill VALUES(1210, 1010, NULL,TO_DATE('2023-10-13','YYYY-MM-DD'),28000);



INSERT INTO Room_Pay_Structure VALUES('Single', 5000);
INSERT INTO Room_Pay_Structure VALUES('Double', 8000);
INSERT INTO Room_Pay_Structure VALUES('Deluxe', 12000);



INSERT INTO Room VALUES (1, 101, 'Single');
INSERT INTO Room VALUES (1, 102, 'Single');
INSERT INTO Room VALUES (2, 201, 'Double');
INSERT INTO Room VALUES (2, 202, 'Double');
INSERT INTO Room VALUES (3, 301, 'Deluxe');
INSERT INTO Room VALUES (3, 302, 'Deluxe');
INSERT INTO Room VALUES (4, 401, 'Single');
INSERT INTO Room VALUES (4, 402, 'Double');
INSERT INTO Room VALUES (1, 103, 'Double');
INSERT INTO Room VALUES (2, 203, 'Deluxe');
INSERT INTO Room VALUES (1, 104, 'Single');
INSERT INTO Room VALUES (2, 101, 'Deluxe');
INSERT INTO Room VALUES (3, 303, 'Double');
INSERT INTO Room VALUES (4, 403, 'Single');



INSERT INTO Admissions VALUES (1006, 4, 403);
INSERT INTO Admissions VALUES (1007, 3, 303);
INSERT INTO Admissions VALUES (1008, 2, 202);
INSERT INTO Admissions VALUES (1001, 4, 402);
INSERT INTO Admissions VALUES (1002, 1, 101);
INSERT INTO Admissions VALUES (1003, 3, 302);
INSERT INTO Admissions VALUES (1004, 2, 201);
INSERT INTO Admissions VALUES (1005, 1, 103);



INSERT INTO Blood_Bank VALUES (501, 'John', 'AB-', TO_DATE('2022-01-01','YYYY-MM-DD'),'10:00');
INSERT INTO Blood_Bank VALUES (502, 'Jane', 'B+', TO_DATE('2022-02-05','YYYY-MM-DD'),'13:30');
INSERT INTO Blood_Bank VALUES (503, 'Bob', 'O+', TO_DATE('2021-03-10','YYYY-MM-DD'), '08:45');
INSERT INTO Blood_Bank VALUES (504, 'Alice', 'A-', TO_DATE('2022-04-15','YYYY-MM-DD'),'11:15');
INSERT INTO Blood_Bank VALUES (505, 'David', 'AB+', TO_DATE('2022-05-20','YYYY-MM-DD'),'09:00');
INSERT INTO Blood_Bank VALUES (506, 'johaan', 'AB-',TO_DATE('2021-01-01','YYYY-MM-DD'),'10:00');
INSERT INTO Blood_Bank VALUES (507, 'hanesh', 'B+',TO_DATE('2022-02-05','YYYY-MM-DD'),'16:30');
INSERT INTO Blood_Bank VALUES (508, 'ahaan', 'O-',TO_DATE('2022-05-10','YYYY-MM-DD'),'09:45');
INSERT INTO Blood_Bank VALUES (509, 'bhari', 'A-',TO_DATE('2021-04-15','YYYY-MM-DD'),'01:15');
INSERT INTO Blood_Bank VALUES (510, 'bose', 'AB+',TO_DATE('2021-05-20','YYYY-MM-DD'),'02:00');


