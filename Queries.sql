
    SELECT emp_no, last_name, first_name, sex, salary
    FROM employees
    JOIN salaries USING (emp_no);
    


    SELECT first_name, last_name, hire_date
    FROM employees
    WHERE EXTRACT(YEAR FROM hire_date) = 1986;
    


    SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
    FROM departments AS d
    JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
    JOIN employees AS e ON dm.emp_no = e.emp_no;
    


    SELECT e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
    FROM employees AS e
    JOIN dept_emp AS de ON e.emp_no = de.emp_no
    JOIN departments AS d ON de.dept_no = d.dept_no;
    


    SELECT first_name, last_name, sex
    FROM employees
    WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
    


    SELECT e.emp_no, e.last_name, e.first_name
    FROM employees AS e
    JOIN dept_emp AS de ON e.emp_no = de.emp_no
    JOIN departments AS d ON de.dept_no = d.dept_no
    WHERE d.dept_name = 'Sales';
    


    SELECT e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
    FROM employees AS e
    JOIN dept_emp AS de ON e.emp_no = de.emp_no
    JOIN departments AS d ON de.dept_no = d.dept_no
    WHERE d.dept_no IN ('d007', 'd005');
    


    SELECT last_name, COUNT(*) AS frequency
    FROM employees
    GROUP BY last_name
    ORDER BY frequency DESC;
    


    SELECT last_name, COUNT(*) AS frequency
    FROM employees
    GROUP BY last_name
    ORDER BY frequency DESC;
    

