DROP TABLE Blood_Bank;
DROP TABLE Admissions;
DROP TABLE Room;
DROP TABLE Room_Pay_Structure;
DROP TABLE Bill;
DROP TABLE Buys;
DROP TABLE Patient;
DROP TABLE Labs;
DROP TABLE Pharmacy;
DROP TABLE Doctor;
DROP TABLE Nurses;
DROP TABLE Management;
DROP TABLE Pay_Scale;
DROP TABLE Department;
DROP TABLE Blocks;
DROP TABLE Employee;

CREATE TABLE Employee
(
    employee_id NUMBER(8),
    date_of_join DATE NOT NULL,
    occupation VARCHAR(15) NOT NULL,
    PRIMARY KEY (employee_id)
);

CREATE TABLE Blocks
(
    block_No NUMBER(1),
    block_name VARCHAR(20),	
    PRIMARY KEY (block_No)
);

CREATE TABLE Department
(
    Dept_Name VARCHAR(20),
    block_No NUMBER(1),
    PRIMARY KEY (Dept_Name),
    FOREIGN KEY (block_No) REFERENCES Blocks (block_No)
);

CREATE TABLE Pay_Scale
(
    Post VARCHAR(20),
    salary NUMBER(10),
    PRIMARY KEY (post)	
);

CREATE TABLE Doctor
(
    doctor_id NUMBER(8),
    doctor_name VARCHAR(20) NOT NULL,
    age NUMBER(2),
    gender VARCHAR(1),
    Dept_Name VARCHAR(20),
    Post VARCHAR(20) NOT NULL,
    Fees NUMBER(10),
    phone_number NUMBER(10),
    PRIMARY KEY (doctor_id),
    CONSTRAINT docgender_check CHECK (gender in ('M','F')),
    FOREIGN KEY(Dept_Name) REFERENCES Department,
    FOREIGN KEY(Post) REFERENCES Pay_Scale (Post),
    FOREIGN KEY(doctor_id) REFERENCES Employee (employee_id)
);

CREATE TABLE Nurses
(
    nurse_id NUMBER(5),
    nurse_name VARCHAR(20) NOT NULL,
    age NUMBER(2),
    gender VARCHAR(1),
    Dept_Name VARCHAR(20),
    Post VARCHAR(20) NOT NULL,
    phone_number NUMBER(10),
    PRIMARY KEY (nurse_id),
    CONSTRAINT nurgender_check CHECK (gender in ('M','F')),
    FOREIGN KEY(Post) REFERENCES Pay_Scale (Post),
    FOREIGN KEY(Dept_Name) REFERENCES Department,
    FOREIGN KEY(nurse_id) REFERENCES Employee (employee_id)
);

CREATE TABLE Management
(
    manager_id NUMBER(8),
    manager_name VARCHAR(20) NOT NULL, 
    age NUMBER(2),
    gender VARCHAR(1),
    Dept_Name VARCHAR(20),
    Post VARCHAR(20) NOT NULL,
    phone_number NUMBER(15),
    PRIMARY KEY (manager_id),
    CONSTRAINT manggender_check CHECK (gender in ('M','F')),
    FOREIGN KEY(Post) REFERENCES Pay_Scale (Post),
    FOREIGN KEY(Dept_Name) REFERENCES Department,
    FOREIGN KEY(manager_id) REFERENCES Employee (employee_id)
);  


CREATE TABLE Pharmacy
(
    medicine_name VARCHAR(20), 
    Medicine_description VARCHAR(20),
    quantity NUMBER(3),
    price NUMBER(4),
    expiry_date DATE,
    PRIMARY KEY (medicine_name)
);

CREATE TABLE Labs
(
    lab_name VARCHAR(10),
    tests_done VARCHAR(10),
    block_No NUMBER(1),
    fees NUMBER(10),
    PRIMARY KEY (lab_name),
    FOREIGN KEY(block_No) REFERENCES Blocks
); 

CREATE TABLE Patient
(
    patient_id NUMBER(5),
    patient_name VARCHAR(10),
    patient_age NUMBER(2),
    patient_gender VARCHAR(1),
    last_visit DATE,
    appointed_doctor_id NUMBER(10),
    appointment_date DATE,
    phone_number NUMBER(10),
    PRIMARY KEY (patient_id),
    FOREIGN KEY (appointed_doctor_id) REFERENCES Doctor(doctor_id)
);

CREATE TABLE Buys
(
    patient_id NUMBER(5),
    medicine_name VARCHAR(10),
    PRIMARY KEY (patient_id,medicine_name),
    FOREIGN KEY (patient_id) REFERENCES Patient (patient_id),
    FOREIGN KEY (medicine_name) REFERENCES Pharmacy (medicine_name)    	
);

CREATE TABLE Bill
(
    bill_id NUMBER(5),
    patient_id NUMBER(10),
    status VARCHAR(10),
    issued_date DATE,
    amount NUMBER(10),
    PRIMARY KEY (bill_id),
    FOREIGN KEY (patient_id) REFERENCES Patient (patient_id)
);

CREATE TABLE Room_Pay_Structure
(
    room_type VARCHAR(20),
    room_rent NUMBER(10),
    PRIMARY KEY (room_type)
);

CREATE TABLE Room
(
    block_no NUMBER(1),
    room_id NUMBER(4),
    room_type VARCHAR(10),
    PRIMARY KEY (room_id,block_no),
    FOREIGN KEY (room_type) REFERENCES Room_Pay_Structure(room_type),
    FOREIGN KEY (block_no) REFERENCES Blocks   
);


CREATE TABLE Admissions
(
    patient_id NUMBER(5),
    block_no NUMBER(1),
    room_id NUMBER(4),
    PRIMARY KEY (patient_id),
    FOREIGN KEY(patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY(room_id,block_no) REFERENCES Room(room_id,block_no)
);


CREATE TABLE Blood_Bank
(
    donor_id NUMBER(5),
    donor_name VARCHAR(10) NOT NULL,
    blood_type VARCHAR(3) NOT NULL,
    donation_date DATE,
    donation_time VARCHAR(10),
    PRIMARY KEY (donor_id)
);
