# Pewlett-Hackard-Analysis

# Overview of the analysis:

Two assignments were given:
1.  Determine the number of retiring employees per title.
2.  Identify employees who are eligible to participate in a mentorship program. 
3.  Write a report that summarizes the analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.

# Results:

# Deliverable 1: The Number of Retiring Employees by Title

1.  The first obective was to create a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December
31, 1955. The number of retirement-age employees by most recent job title also needed to be known. In order to do this we joined data from two other
tables:  the Employees and Title tables.  From those two tables we created the Retirement Titles tables.  Once these tables were joined it provided
information for retiring employees and their titles.  The fields of information for the new table included the employee number, first and last names,
titles, from date and to dates.

2.  After creating the Retirement Titles table, more research needed to be done.  So, a second new table was created, the Unique Titles table. This table
included only current employees in our analysis.  That meant we had to exclude those employees who have already left the company. To accomplish this 
task, we retrieved  the employee number, first and last name, and title columns from the Retirement Titles table. Then we entered a code to exclude those 
employees that have already left the company. In the new Unique Titles table we sorted the table in ascending order by the employee number and descending 
order by the last date of the most recent title.  The total number of employees included in this table was 72,458.

3.  The last table created provied all of the details we needed to complete our first assigmment which was to determine the number of retiring employees
by title, The Retiring Titles table.  For this table we had to retrieve the number of employees by their most recent job title who are about to retire. 
So, we pulled information from the Unique Titles table and grouped the table by title, then sorted the count column in descending order. The results from 
that table are below:

<img width="216" alt="retiring_titles_table" src="https://user-images.githubusercontent.com/114943747/221384725-36ed56c5-3ddb-4961-b710-97587b1470de.png">

Deliverable 2: The Employees Eligible for the Mentorship Program 

The second objective was to create a Mentorship-Eligibility table that holds the current employees who were born between January 1, 1965 and December 31,
1965.  This table helped us complete our second assignment.  This new table would hold the employees who are eligible to participate in a mentorship
program. 1,549 people were eligible to participate in the mentorshp program.

# Summary:

How many roles will need to be filled as the "silver tsunami" begins to make an impact?

After research was done, 72,458 employees will be retiring soon.  The table above shows all the titles/fields that will need to filled once these 
people finally retire.

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

In order to get this answer two more tables were created.  In the first table, Mentor by Departnent, we collected information from the 
Mentorship Eligibility, Departments, and Department Employee tables. This data let us know the department names that our qualified, retirement-ready
employees worked in.  Then, from that table we created the Mentor by Department table.  This table gave us a count of the number of qualified, 
retirement-ready employees that worked in each department.

So, to answer the question, yes, there are enough qualified, retirement-ready employees in each department to mentor the next generation of Pewlett
Hackward empoloyees.

Please find below a the Mentor by Department Count table to support this answer:

![mentor_dept_count](https://user-images.githubusercontent.com/114943747/221390421-ed92f65e-e80c-4c99-b4ab-cced3032e6ee.png)





