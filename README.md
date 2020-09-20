# SQL Statements
This project consists of SQL statements to answer the queries mentioned in the "queries" folder. Each query file consists of the problem statement mentioned in comments and the corresponding SQL statement to answer the query.

Follow the steps below to install the Employee database:
1. Download the GitHub Repository: https://github.com/datacharmer/test_db
2. Launch command line console, change the working directory to your downloaded repository.
3. Type following command:
mysql < employees.sql
or
mysql -u YOUR MY SQL USER NAME -p < employees.sql
This will initialize your database.

4. To verify installation, run following commands:
mysql -t < test employees md5.sql
or
mysql -u YOUR MY SQL USER NAME -p < test employees md5.sql

The following shows the sample data from each of the tables:

1. employees:  
emp_no,birth_date,first_name,last_name,gender,hire_date  
10001,1953-09-02,Georgi,Facello,M,1986-06-26  
10002,1964-06-02,Bezalel,Simmel,F,1985-11-21  
10003,1959-12-03,Parto,Bamford,M,1986-08-28  

2. departments:  
dept_no,dept_name  
d009,"Customer Service"  
d005,Development  
d002,Finance  

3. dept_manager  
emp_no,dept_no,from_date,to_date  
110022,d001,1985-01-01,1991-10-01  
110039,d001,1991-10-01,9999-01-01  
110085,d002,1985-01-01,1989-12-17  

4. dept_emp  
emp_no,dept_no,from_date,to_date  
10001,d005,1986-06-26,9999-01-01  
10002,d007,1996-08-03,9999-01-01  
10003,d004,1995-12-03,9999-01-01  

5. titles  
emp_no,title,from_date,to_date  
10001,"Senior Engineer",1986-06-26,9999-01-01  
10002,Staff,1996-08-03,9999-01-01  
10003,"Senior Engineer",1995-12-03,9999-01-01  

6. salaries  
emp_no,salary,from_date,to_date  
10001,60117,1986-06-26,1987-06-26  
10001,62102,1987-06-26,1988-06-25  
10001,66074,1988-06-25,1989-06-25  
