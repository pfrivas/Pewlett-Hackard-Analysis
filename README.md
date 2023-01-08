# Pewlett-Hackard-Analysis

## Overview

### Purpose
The purpose of the this analysis is to determine the number of retiring employees by title and in order to determine which of the retiring employees are eligible for the retirement package/mentorship program at the Pewlett-Harkard company. The analysis conducted shows the titles of all employees born between January, 1 1952 and December, 31 1955.

### Resources
The employee database analysis was conducted with QBD, PostgresSQL and pgadmin4

## Results

### Number of Retiring Employees by Title
- The [retirment_titles](https://github.com/pfrivas/Pewlett-Hackard-Analysis/blob/main/Data/retirement_titles.csv) table exemplifies every eligible for retirement employee and how long they have worked at each position over the course of their career.
![image](https://user-images.githubusercontent.com/110814780/211191859-68c20a2f-04ce-4675-8e28-fd801959a172.png)

- The [unique_titles](https://github.com/pfrivas/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.csv) table that was created shows the most recent title for employees of retirment age.
![image](https://user-images.githubusercontent.com/110814780/211191878-e3badb22-5b53-4233-8e48-1445de008a88.png)

- The [retiring_titles](https://github.com/pfrivas/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv) table shows that about 64% of the retirment age employees (57,668 out of 90,398) have senior titles. 
<img width="383" alt="Screen Shot 2023-01-08 at 2 55 54 AM" src="https://user-images.githubusercontent.com/110814780/211192331-24cfb1c4-16bb-45ac-b779-f4fc9b3333c1.png">

### The Employees Eligible for the Mentorship Program
- The [mentorship_eligibility](https://github.com/pfrivas/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv) table shows that there are 1550 employees that qualify for the mentorship program with most of them having senior titles.


## Summary

### Questions Addressed
- Who will be retiring in the next few years? 33% being "Senior Engineers" and 31% being "Senior Staff". This exemplifies how a significant amount of the employees at or close to retirement age have a vast amount of knowledge and experience in which the recruiting team will need to put in a great deal of work to try to replace

- How many positions will need to be filled? The "Silver Tsunami" is a total of 90,398 positions will need to be filled in the upcoming years. This is an extremely large number of positions with only 1550 qualifying for the mentorship program.

### Additional Queries or Tables that may provide more Insight
- A query or table demonstrating how many positions per department need to be filled could provide an insight in which departments need more funding for recruiting for their soon to be empty positions
- A query or table demontrating the salaries of the employee nearing retirement age so that the recruiting team knows how much money could be allocating towards recruitment and new hire salary
