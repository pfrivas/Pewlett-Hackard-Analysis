-- DELIVERABLE 1: The Number of Retiring Employees by Title
-- Creating Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955
    --The query retrieves the emp_no, first_name, and last_name columns from the Employees table.
SELECT e.emp_no,
	e.first_name,
	e.last_name,
    --The query retrieves the title, from_date, and to_date columns from the Titles table.
	ti.title,
	ti.from_date,
	ti.to_date
--The query creates a new table using the INTO clause
INTO retirement_titles
FROM employees AS e
    --The query joins both tables on the primary key.
	INNER JOIN titles AS ti
		ON (e.emp_no = ti.emp_no)
--The query filters the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. 
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--Then, orders by the employee number.
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
--Creating a Unique Titles table that contains the employee number, first and last name, and most recent title
    --The query uses the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause
SELECT DISTINCT ON (emp_no) emp_no,
    ----The query retrieves the employee number, first and last name, and title columns from the Retirement Titles table
	first_name,
	last_name,
	title
--The query creates a Unique Titles table using the INTO claus
INTO unique_titles
FROM retirement_titles
--Sort the Unique Titles table in ascending order by 
 --the employee number and descending order by the last date (i.e., to_date) of the most recent title
ORDER BY emp_no, to_date DESC;

--Creating a Retiring Titles table that contains the number of titles filled by employees who are retiring
    --The query retrieves the titles and uses COUNT() to retrieve the number of titles from the Unique Titles table
SELECT COUNT (emp_no), title
--The query creates a Retiring Titles table to hold the required information
INTO retiring_titles
FROM unique_titles
--The query groups the table by title, then sort the count column in descending order
GROUP BY title
ORDER BY COUNT DESC;

--DELIVERABLE 2: The Employees Eligible for the Mentorship Program
--Creating a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965
-- The query uses a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause
SELECT DISTINCT ON (e.emp_no,de.emp_no,ti.emp_no) e.emp_no,
    --The query retrieves the emp_no, first_name, last_name, and birth_date columns from the Employees table
	e.first_name,
	e.last_name,
	e.birth_date,
    --The query retrieves the from_date and to_date columns from the Department Employee table
	de.from_date,
	de.to_date,
    --The query retrieves the title column from the Titles table
	ti.title
--The query creates a new table using the INTO clause
INTO mentorship_eligibilty
FROM employees AS e
    --The query joins the Employees and the Department Employee tables on the primary key
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles AS ti
		ON (e.emp_no = ti.emp_no)
--The query filters the data on the to_date column to all the current employees, 
    --then filters the data on the birth_date columns to get all the employees whose birth dates are between January 1, 1965 and December 31, 1965
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
--The query orders the table by the employee number.
ORDER BY e.emp_no;