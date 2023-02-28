-- Deliverable 1: Steps 1-7
SELECT e.emp_no,
       e.first_name,
       e.last_name,
       t.title,
       t.from_date,
       t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT(ut.emp_no),
ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE retirement_titles.to_date = ('9999-01-01')
ORDER BY emp_no ASC, title DESC;

--Delieverable 1: 16-21
SELECT COUNT(ut.emp_no),ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title 
ORDER BY COUNT(title) DESC;

--Deliverable 2: The Employees Eligible for the Mentorship Program
SELECT DISTINCT ON(e.emp_no)e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no;

--Deliverable 3 - Retirement-Ready Employee Mentors by Department
SELECT DISTINCT ON(me.emp_no)me.emp_no,
me.first_name,
me.last_name,
me.title,
de.dept_no,
d.dept_name
INTO mentors_by_dept
FROM mentorship_eligibilty AS me
INNER JOIN dept_emp AS de
ON (me.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
ORDER BY emp_no;

--Deliverable 3 - Retirement-Ready Employee Mentors by Departmemt Count
SELECT COUNT(mbd.emp_no),mbd.dept_name
INTO mentors_dept_count
FROM mentors_by_dept as mbd
GROUP BY mbd.dept_name
ORDER BY COUNT(title) DESC;