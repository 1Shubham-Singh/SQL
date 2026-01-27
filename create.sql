use tempdb
go
CREATE TABLE Employee (
    Name_N    VARCHAR(50),
	Gender varchar(20),
    Roll_no   INT,
    Address_A VARCHAR(100),
    place     VARCHAR(50),
    city      VARCHAR(50),
    salary    INT,
    ammount   INT,
    Company   VARCHAR(50)
);
INSERT INTO Employee 
(Name_N, Roll_no, Address_A, place, city, salary, ammount, Company)
VALUES
('Shubham', 101, 'MG Road', 'Chennai', 'Chennai', 50000, 2000, 'TCS');
INSERT INTO Employee 
(Name_N, Roll_no, Address_A, place, city, salary, ammount, Company)
VALUES
('Sachin',102,'Siruseri','Chennai','Banglore',20000,1200,'Hexaware')

INSERT INTO Employee 
(Name_N, Roll_no, Address_A, place, city, salary, ammount, Company)
VALUES
('Mihir',103,'Siruseri','Chennai','Bihar',1200,1400,'Hexaware')
INSERT INTO Employee 
(Name_N, Roll_no, Address_A, place, city, salary, ammount, Company)
VALUES
('Ritu',103,'Siruseri','Alahabad','Ranchi',45000,9000,'Hexaware')
INSERT INTO Employee 
(Name_N, Roll_no, Address_A, place, city, salary, ammount, Company)
VALUES
('Ram',102,'Siruseri','Chennai','Banglore',8989,12827500,'Google')
INSERT INTO Employee 
(Name_N, Roll_no, Address_A, place, city, salary, ammount, Company)
VALUES
('Sree',102,'Siruseri','Chennai','AP',89999,7667,'Hexaware')

select * from Employee

SELECT COUNT(Name_N) FROM Employee
GROUP BY Roll_no