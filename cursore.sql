
--We can fetch the record like this from the given table by using cursore

--Without cursore Variable
--select * from Employee
DECLARE mycursor CURSOR SCROLL 
FOR 
SELECT * FROM Employee
OPEN mycursor
FETCH FIRST FROM mycursor
FETCH NEXT FROM mycursor
FETCH PRIOR from mycursor
FETCH LAST from mycursor
fetch absolute 4 from mycursor
fetch relative -1 from mycursor
CLOSE  mycursor
DEALLOCATE mycursor

---------------------------------------------------
--With cursore Variable
--select * from Employee;


DECLARE mycursor CURSOR SCROLL
FOR 
    SELECT Roll_no, Name_N
    FROM Employee;

DECLARE @emp_Roll_no VARCHAR(20),
        @emp_Name_N   VARCHAR(100);  -- assuming Name_N is text

OPEN mycursor;

FETCH FIRST FROM mycursor
INTO @emp_Roll_no, @emp_Name_N;

PRINT 'Employee is: Roll No = ' 
      + @emp_Roll_no 
      + ', Name = ' 
      + @emp_Name_N;

FETCH FIRST FROM mycursor
INTO @emp_Roll_no, @emp_Name_N;

PRINT 'Employee is: Roll No = ' 
      + @emp_Roll_no 
      + ', Name = ' 
      + @emp_Name_N;
FETCH FIRST FROM mycursor
INTO @emp_Roll_no, @emp_Name_N;

PRINT 'Employee is: Roll No = ' 
      + @emp_Roll_no 
      + ', Name = ' 
      + @emp_Name_N;

FETCH LAST FROM mycursor
INTO @emp_Roll_no, @emp_Name_N;

PRINT 'Employee is: Roll No = ' 
      + @emp_Roll_no 
      + ', Name = ' 
      + @emp_Name_N;

FETCH NEXT FROM mycursor
INTO @emp_Roll_no, @emp_Name_N;

PRINT 'Employee is: Roll No = ' 
      + @emp_Roll_no 
      + ', Name = ' 
      + @emp_Name_N;

FETCH PRIOR FROM mycursor
INTO @emp_Roll_no, @emp_Name_N;

PRINT 'Employee is: Roll No = ' 
      + @emp_Roll_no 
      + ', Name = ' 
      + @emp_Name_N;

FETCH ABSOLUTE 2 FROM mycursor
INTO @emp_Roll_no, @emp_Name_N;

PRINT 'Employee is: Roll No = ' 
      + @emp_Roll_no 
      + ', Name = ' 
      + @emp_Name_N;

FETCH RELATIVE -1 FROM mycursor
INTO @emp_Roll_no, @emp_Name_N;

PRINT 'Employee is: Roll No = ' 
      + @emp_Roll_no 
      + ', Name = ' 
      + @emp_Name_N;

CLOSE mycursor;
DEALLOCATE mycursor;




