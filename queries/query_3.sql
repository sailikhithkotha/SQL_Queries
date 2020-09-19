/*Find all employees’ last name with their salaries in different periods. Sort the result by last name, salary, from date, then to date. The result of query is similar to following table:

last_name salary from_date  to_date
Aamodt    39537  1991-05-28 1992-05-27
Aamodt 	  39548  1986-12-31 1987-12-31
...

Acton     39202  1994-10-10 1995-10-10
Acton 	  39581  1993-10-10 1994-10-10
...
*/

SELECT emp.last_name, sal.salary, sal.from_date, sal.to_date FROM employees emp INNER JOIN salaries sal ON emp.emp_no = sal.emp_no
ORDER BY emp.last_name, sal.salary, sal.from_date, sal.to_date;