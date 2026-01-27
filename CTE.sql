SELECT * FROM Employee
----------------CTE--------------
WITH NEW_CTE
AS
(
SELECT * FROM Employee WHERE
GENDER = 'MALE'
)
SELECT * FROM NEW_CTE
---------------SECOND EXAMPLE OF CTE-------------
WITH CTE_OLD
AS 
(
SELECT * FROM Employee WHERE SALARY > 10000
)
SELECT COUNT(*) AS SALARY_COUNT FROM CTE_OLD

-----THIRD EXAPLE OF CTE WITH DEFINED VARIABLES --
WITH CTE_OLD(Emp_Name,Emp_Salary,Emp_place)
AS 
(
SELECT Name_N,salary,place FROM Employee WHERE SALARY > 10000
)
SELECT Emp_Name,Emp_Salary,Emp_place FROM CTE_OLD

---------UPDATE-INSERT-DELETE-SELECT--------------------------
WITH NEW_CTE
AS
(
SELECT * FROM Employee 
)
INSERT NEW_CTE VALUES ('Krishan',01,'Sasaram','Bihar','Banaras',100000,2589475,'Google','Female')
UPDATE NEW_CTE SET  AMMOUNT = 2589475 WHERE ROLL_NO = 02
DELETE NEW_CTE WHERE NAME_N = 'kRISHAN'
SELECT * FROM NEW_CTE
--WE CAN RUN ONE BY ONE TO CHECK ALL THE STATEMENTS ARE WORKING FINE OR NOT---


--With the help of cte we can create a view----
CREATE VIEW Vw_Employee_20260127
AS
WITH NEW_CTE
AS
(
SELECT * FROM Employee WHERE GENDER = 'MALE'
)
SELECT * FROM NEW_CTE

SELECT * FROM Vw_Employee_20260127

SP_TABLES '%VW%'

--We can use multiple cte with one with clause--
WITH NEW_CTE
AS
(
SELECT * FROM Employee WHERE
GENDER = 'MALE'
),
NEW_CTE2
AS(
sELECT * FROM Employee
WHERE GENDER = 'FEMALE'
)
SELECT * FROM NEW_CTE
UNION ALL
SELECT * FROM NEW_CTE2