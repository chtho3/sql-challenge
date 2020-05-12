# sql-challenge
<h2>Homework 9 SQL Challenge</h2>

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform:

1. Data Modeling

2. Data Engineering

3. Data Analysis

<h2>1. Data Modeling</h2>
In this portion, we modeled the multiple CSV files into SQL tables and matched the primary keys together using Quick Database Diagrams (http://quickdatabasediagrams.com)

<img src="/EmployeeSQL/EmployeeSQL-ERD.png" />

<h2>2. Data Engineering</h2>
The SQL tables were mapped and imported successfully into pgadmin4. In uploading, we are now able to reference these tables and their relationships to each other in pandas.

<h2>3. Data Analysis</h2>
Several analyses were run on this total database and associated collections.

1. List the following details of each employee: employee number, last name, first name, gender, and salary.

2. List employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List all employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

9. Create a histogram to visualize the most common salary ranges for employees.

10. Create a bar chart of average salary by title.

<h2>Conclusion</h2>
The following are submitted in this repository:
* Create an image file of your ERD.
* Create a `.sql` file of your table schemata.
* Create a `.sql` file of your queries.
* (Optional) Create a Jupyter Notebook of the bonus analysis.
