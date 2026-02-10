-- Find number of employees in each department.
SELECT
	Department,
	COUNT(EmployeeID) AS TotalEmployee
FROM Sales.Employees
GROUP BY Department

-- Get departments having more than 2 employees.
SELECT
*
FROM (
	SELECT
		Department,
		COUNT(EmployeeID) AS TotalEmployee
	FROM Sales.Employees
	GROUP BY Department
	)t WHERE TotalEmployee > 2

-- Find average salary per department.
SELECT
	Department,
	AVG(Salary) AS AvgSalary
FROM Sales.Employees
GROUP BY Department

-- Find maximum salary in each department.
SELECT
	Department,
	MAX(Salary)
FROM Sales.Employees
GROUP BY Department

-- Find departments where avg salary > 70,000.

SELECT
*
FROM (
	SELECT
		Department,
		AVG(Salary) AvgSalary
	FROM Sales.Employees
	GROUP BY Department
	)t WHERE AvgSalary > 70000

-- Count employees as per Birth year.
SELECT
	COUNT(EmployeeID) TotalEmp,
	YEAR(BirthDate) AS BirthYear
FROM Sales.Employees
GROUP BY BirthDate

-- Find total salary paid per department.
SELECT
	Department,
	SUM(Salary) AS TotalSalary
FROM Sales.Employees
GROUP BY Department

-- Get second highest salary (without window functions).
SELECT
	MAX(Salary) AS SecondHighSalary
FROM (
	SELECT
	*
	FROM Sales.Employees
	WHERE Salary < (SELECT MAX(Salary) FROM Sales.Employees)
	)t