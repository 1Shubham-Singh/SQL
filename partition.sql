--OVER CLAUSE PARTITION BY
SELECT * FROM Employee

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Employee';


ALTER TABLE Employee
ADD Gender VARCHAR(100);

ALTER TABLE Employee
ADD Email VARCHAR(100);

update  employee
set Gender = 'Female'
where Name_N in( 'Sree','Krishna')

select * from Employee

select  Name_N,address_A,Salary,employee.Gender,Total_Gender_Count
from employee
inner join
(select Gender ,count(*) as Total_Gender_Count from Employee
group by gender) as Genders 
on employee.gender  = Genders.gender;

--------------------------------------------
--OVER PARTITION BY CLAUSE 

SELECT NAME_N, ADDRESS_A,SALARY,GENDER,
COUNT(GENDER) OVER (PARTITION BY GENDER ) 
AS Total_Gender_Count FROM EMPLOYEE
-----------------------------WITH INNER JOIN--------------
SELECT  Name_N,
address_A,Salary,
employee.Gender,
Total_Gender_Count,
MAX_SALARY,
MIN_SALARY,
AVG_SALARY
FROM employee
INNER JOIN
(SELECT Gender ,COUNT(*) as Total_Gender_Count,
MAX(SALARY) AS MAX_SALARY,
MIN(SALARY) AS MIN_SALARY,
AVG(SALARY) AS AVG_SALARY
FROM Employee
GROUP BY gender) AS Genders 
ON employee.gender  = Genders.gender;

--OVER PARTITION BY CLAUSE--
SELECT NAME_N, ADDRESS_A,SALARY,GENDER,
COUNT(GENDER) OVER (PARTITION BY GENDER ) AS Total_Gender_Count,
MAX(SALARY) OVER (PARTITION BY SALARY) AS MAX_SALARY,
MIN(SALARY) OVER (PARTITION BY SALARY) AS MIN_SALARY,
AVG(SALARY) OVER (PARTITION BY SALARY) AS AVG_SALARY
FROM EMPLOYEE



