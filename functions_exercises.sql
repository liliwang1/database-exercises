USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'e%e'
ORDER BY emp_no DESC;

-- SELECT *, DATEDIFF(CURDATE(), hire_date) AS work_length_days
SELECT *, DATEDIFF(NOW(), hire_date) AS work_length_days
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;
