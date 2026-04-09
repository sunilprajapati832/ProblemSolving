-- Ques 19. Fetch employee name and department name
-- Solution:
-- Inner Join
SELECT e.emp_name, d.dept_name
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id;

-- Left Join
SELECT e.emp_name, d.dept_name
FROM Employees e
LEFT JOIN Departments d ON e.dept_id = d.dept_id;

-- Right Join
SELECT e.emp_name, d.dept_name
FROM Employees e
RIGHT JOIN Departments d ON e.dept_id = d.dept_id;

-- Using Subquery
SELECT emp_name,
       (SELECT dept_name FROM Departments d WHERE d.dept_id = e.dept_id) AS dept_name
FROM Employees e;


-- Ques 20. Find employees without a department
-- -- Left Join + IS NULL
SELECT e.emp_name
FROM Employees e
LEFT JOIN Departments d ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;

-- WHERE dept_id IS NULL
SELECT emp_name
FROM Employees
WHERE dept_id IS NULL;

-- NOT IN
SELECT emp_name
FROM Employees
WHERE dept_id NOT IN (SELECT dept_id FROM Departments);

-- NOT EXISTS
SELECT emp_name
FROM Employees e
WHERE NOT EXISTS (SELECT 1 FROM Departments d WHERE d.dept_id = e.dept_id);

-- EXCEPT
SELECT emp_name FROM Employees
EXCEPT
SELECT e.emp_name FROM Employees e JOIN Departments d ON e.dept_id = d.dept_id;


-- Ques 21. Get departments with no employees
-- -- Left Join + IS NULL
SELECT d.dept_name
FROM Departments d
LEFT JOIN Employees e ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;

-- NOT IN
SELECT dept_name
FROM Departments
WHERE dept_id NOT IN (SELECT dept_id FROM Employees WHERE dept_id IS NOT NULL);

-- NOT EXISTS
SELECT dept_name
FROM Departments d
WHERE NOT EXISTS (SELECT 1 FROM Employees e WHERE e.dept_id = d.dept_id);

-- EXCEPT
SELECT dept_name FROM Departments
EXCEPT
SELECT d.dept_name FROM Departments d JOIN Employees e ON d.dept_id = e.dept_id;

-- Right Join
SELECT d.dept_name
FROM Employees e
RIGHT JOIN Departments d ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL;


