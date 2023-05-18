# sql-challenge

This Sql challenge is to do a research project about people whom the company employed during the 1980s and 1990s. 
All that remains of the employee database from that period are six CSV files.


This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

Data Modeling
From the given CSV files, an Entity Relationship Diagram of the tables have been created. 

Data Engineering
Table schema for each of the six CSV files have been created with the data types, primary keys, foreign keys, and other constraints.
Each CSV file imported into its corresponding SQL table.


The following Data Analysis and the list has been done

List the employee number, last name, first name, sex, and salary of each employee.

emp_no	last_name	first_name	sex	salary
10001		Facello	Georgi	M	60117
10002		Simmel	Bezalel	F	65828
10003		Bamford	Parto		M	40006
10004		Koblick	Chirstian	M	40054
10005		Maliniak	Kyoichi	M	78228
10006		Preusig	Anneke	F	40000
10007		Zielinski	Tzvetan	F	56724


--List the first name, last name, and hire date for the employees who were hired in 1986

first_name	last_name	hire_date
Eran		Cusworth	11/14/1986
Bojan		Zallocco	10/14/1986
Nevio		Demizu	5/18/1986
Ziva		Vecchi	7/3/1986
Mohit		Speek		1/14/1986

List the manager of each department along with their department number, department name,
employee number, last name, and first name 

dept_no	dept_name		emp_no	last_name		first_name
d001		Marketing		110022	Markovitch		Margareta
d001		Marketing		110039	Minakawa		Vishwani
d002		Finance		110085	Alpin			Ebru
d002		Finance		110114	Legleitner		Isamu
d003		Human Resources	110183	Ossenbruggen	Shirish

List the department number for each employee along with that employee’s employee number, 
--last name, first name, and department name.

emp_no	last_name	first_name	dept_name
10005		Maliniak	Kyoichi	Human Resources
10010		Piveteau	Duangkaew	Production
10010		Piveteau	Duangkaew	Quality Management
10011		Sluis		Mary		Customer Service
10013		Terkki	Eberhardt	Human Resources
10017		Bouloucos	Cristinel	Marketing

--List first name, last name, and sex of each employee whose first name is Hercules and 
--whose last name begins with the letter B.

first_name	last_name	sex
Hercules	Baer		M
Hercules	Biron		F
Hercules	Birge		F
Hercules	Berstel	F
Hercules	Bernatsky	M
Hercules	Bail		F

--List each employee in the Sales department, including their employee number, 
--last name, and first name.

emp_no	last_name	first_name	dept_name
10002		Simmel	Bezalel	Sales
10016		Cappelletti	Kazuhito	Sales
10034		Swan		Bader		Sales
10041		Lenart	Uri		Sales
10050		Dredge	Yinghua	Sales
10053		Zschoche	Sanjiv	Sales

List each employee in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.

emp_no	last_name	first_name	dept_name
10001		Facello	Georgi	Development
10002		Simmel	Bezalel	Sales
10006		Preusig	Anneke	Development
10008		Kalloufi	Saniya	Development
10012		Bridgland	Patricio	Development


--List the frequency counts, in descending order, 
--of all the employee last names (that is, how many employees share each last name)

last_name	frequency
Baba		226
Gelosh	223
Coorg		223
Sudbeck	222
Farris	222
Adachi	221

