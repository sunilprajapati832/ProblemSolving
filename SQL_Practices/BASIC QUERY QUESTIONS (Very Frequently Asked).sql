-- Qus 1 Fetch all record from a table Employees.
SELECT
*
FROM Sales.Employees;

-- Qus 2 Get distinct Department from Employees.
SELECT DISTINCT
	Department
FROM Sales.Employees;

-- Qus 3 Find employees with salary > 55,000.
SELECT 
	FirstName,
	Salary
FROM Sales.Employees WHERE Salary > 55000;
-- If want all information then use '*'
SELECT 
	*
FROM Sales.Employees WHERE Salary > 55000;

-- Qus 4 Fetch employees whose name starts with ‘M’.
SELECT
	FirstName
FROM Sales.Employees WHERE FirstName LIKE 'M%';

-- Qus 5 Find employees whose birthdate after 1980-01-01.
-- Method 1 
SELECT
	FirstName,
	BirthDate
FROM Sales.Employees WHERE BirthDate > '1980-01-01';
-- Method 2 
SELECT
	FirstName,
	BirthDate
FROM Sales.Employees WHERE BirthDate BETWEEN '1980-01-01' AND CURRENT_DATE;
-- Method 3
SELECT
	FirstName,
	BirthDate
FROM Sales.Employees WHERE YEAR(BirthDate) >= 1980;

-- Qus 6 Display employees sorted by salary (descending).
SELECT
*
FROM Sales.Employees
ORDER BY Salary DESC;

-- Qus 7 Fetch top 3 highest paid employees.
-- Method 1
SELECT
*
FROM (
	SELECT
	*,
	RANK() OVER (ORDER BY Salary DESC) EmpRank
	FROM Sales.Employees)t WHERE EmpRank < 4  ;

-- Method 2 
SELECT
*
FROM Sales.Employees
ORDER BY Salary DESC
OFFSET 0 ROWS
FETCH NEXT 3 ROWS ONLY;

-- Method 3 
SELECT * FROM Sales.Employees ORDER BY Salary DESC LIMIT 3;

-- Method 4 
SELECT TOP 3 * FROM Sales.Employees ORDER BY Salary DESC;

-- Method 5
SELECT * FROM (
    SELECT * FROM Sales.Employees ORDER BY salary DESC
) WHERE ROWNUM <= 3;

-- Qus 8 Count total number of employees.
SELECT
	COUNT(EmployeeID) NoOfEmp
FROM Sales.Employees;

-- Qus 9 Find minimum, maximum, and average salary.
SELECT
	MIN(Salary) MinSalary,
	MAX(Salary) MaxSalary,
	AVG(Salary) AvgSalary
FROM Sales.Employees;

-- Qus 10 Fetch employees where ManagerID is NULL.
SELECT
*
FROM Sales.Employees WHERE ManagerID IS NULL;
