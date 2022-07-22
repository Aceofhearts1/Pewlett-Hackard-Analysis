--Employee DB SQL
-- Seeing which employees will be reaching retirement age soon.

SELECT employees.emp_no, employees.first_name, employees.last_name,
	titles.title, titles.from_date, titles.to_date
INTO retirement_titles 
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY employees.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
-- there are duplicate rows for the people who switched jobs within the same company.
--so filtering thje "to_date" to 9999-1-1 is how we know that job title is their mst recent job title
SELECT DISTINCT ON (rt.emp_no) 
-- all columns in the table. is represesnted by the *
*
INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;

--figuring out the number of workers about to retire for each job title
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;

-- Seeing which employees are eligible for the mentorship role to be created after the retirement age employees leave
-- STARTING WITH MULTIPLE JOINS
-- Join table 2 into 1 and then table 3 into 2
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
	de.from_date, de.to_date,
		ti.title
-- INTO mentorship_eligible 
FROM employees AS e
INNER JOIN dept_employee AS de
ON e.emp_no = de.emp_no
INNER JOIN titles AS ti
ON de.emp_no = ti.emp_no
WHERE (de.to_date = ('9999-01-01')) AND
	(e.birth_date >= ('1965-01-01')) AND
	(e.birth_date <= ('1965-12-31'));