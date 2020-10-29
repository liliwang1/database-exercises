USE employees;

SELECT d.dept_name AS 'department_name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'department_manager'
FROM departments d
JOIN dept_manager dm ON dm.dept_no = d.dept_no
JOIN employees e ON e.emp_no = dm.emp_no
WHERE dm.to_date LIKE '9999%';

SELECT d.dept_name AS 'department_name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'manager_name'
FROM departments d
         JOIN dept_manager dm ON dm.dept_no = d.dept_no
         JOIN employees e ON e.emp_no = dm.emp_no
WHERE e.gender = 'F' AND dm.to_date LIKE '9999%';

SELECT d.dept_name AS 'department_name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'name',
       s.salary AS 'salary'
FROM departments d
JOIN dept_manager dm ON dm.dept_no = d.dept_no
JOIN employees e ON e.emp_no = dm.emp_no
JOIN salaries s ON s.emp_no = e.emp_no
WHERE s.to_date LIKE '9999%' AND dm.to_date LIKE '9999%';

SELECT CONCAT(e.first_name,' ', e.last_name) AS 'employee_name',
       d.dept_name AS 'department_name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'manager_name'
FROM employees e
JOIN dept_emp de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no
JOIN dept_manager dm ON dm.dept_no = d.dept_no
WHERE de.to_date LIKE '9999%' AND dm.to_date LIKE '9999%';