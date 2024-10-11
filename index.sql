-- 문제 1
SELECT * 
FROM employees;

-- 문제 2
SELECT name, department 
FROM employees;

-- 문제 3
SELECT * 
FROM employees 
WHERE salary >= 60000;

-- 문제 4
SELECT name, salary 
FROM employees 
ORDER BY salary DESC;

-- 문제 5
SELECT name, salary 
FROM employees 
ORDER BY salary DESC 
LIMIT 3;

-- 문제 6
SELECT COUNT(*) AS employee_count 
FROM employees;

-- 문제 7
SELECT department, AVG(salary) AS avg_salary 
FROM employees 
GROUP BY department;

-- 문제 8
SELECT department, AVG(salary) AS avg_salary 
FROM employees 
GROUP BY department 
HAVING AVG(salary) >= 70000;

-- 문제 9
SELECT name, salary 
FROM employees 
WHERE salary = (SELECT MAX(salary) FROM employees);

-- 문제 10
SELECT DISTINCT department 
FROM employees;

-- 문제 11
INSERT INTO employees (name, department, salary) 
VALUES ('Soojin Kim', 'HR', 75000);

-- 문제 12
INSERT INTO employees (name, department, salary) 
VALUES 
    ('Jihyun Lee', 'Marketing', 65000),
    ('Minho Park', 'Sales', 70000);

-- 문제 13
INSERT INTO employees_archive (name, department, salary) 
SELECT name, department, salary 
FROM employees 
WHERE department = 'Sales';

-- 문제 14
UPDATE employees 
SET salary = 68000 
WHERE name = 'Jihyun Lee';

-- 문제 15
UPDATE employees 
SET department = 'HR', salary = 72000 
WHERE name = 'Minho Park';

-- 문제 16
UPDATE employees 
SET salary = salary * 1.05 
WHERE department = 'Sales';

-- 문제 17
DELETE FROM employees 
WHERE name = 'Soojin Kim';

-- 문제 18
DELETE FROM employees 
WHERE salary < 50000;

-- 문제 19
SELECT e.name, d.department_name 
FROM employees e 
INNER JOIN departments d ON e.department_id = d.id;

-- 문제 20
SELECT e.name, p.project_name 
FROM employees e 
LEFT JOIN projects p ON e.id = p.employee_id;