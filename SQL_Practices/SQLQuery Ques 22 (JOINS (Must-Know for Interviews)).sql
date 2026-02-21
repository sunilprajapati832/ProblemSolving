-- Ques 22. 4. Fetch employees working in ‘IT’ department
-- -- Inner Join
SELECT e.emp_name
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';

-- Subquery
SELECT emp_name
FROM Employees
WHERE dept_id = (SELECT dept_id FROM Departments WHERE dept_name = 'IT');

-- IN
SELECT emp_name
FROM Employees
WHERE dept_id IN (SELECT dept_id FROM Departments WHERE dept_name = 'IT');

-- EXISTS
SELECT emp_name
FROM Employees e
WHERE EXISTS (SELECT 1 FROM Departments d WHERE d.dept_id = e.dept_id AND d.dept_name = 'IT');

-- Join + Filter
SELECT e.emp_name, d.dept_name
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
AND d.dept_name = 'IT';
