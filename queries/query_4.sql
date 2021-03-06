/* Find all employees’ current department and the start date with their employee number and sort the result by employee number. The result of query is similar to following table:

emp_no dept_name   from_date
10001  Development 1986-06-26
10002  Sales   	   1996-08-03
10003  Production  1995-12-03
...
*/

SELECT demp.emp_no, d.dept_name, demp.from_date
FROM dept_emp demp, departments d
WHERE demp.dept_no = d.dept_no AND demp.to_date = '9999-01-01'
ORDER BY demp.emp_no