/*List the number of employees in each department. Sort the result by department name. The result of query is similar to following table:

dept_name 		  noe
Customer Service  23580
Development 	  85707
...

*/

SELECT dep.dept_name, count(de.emp_no) as noe FROM departments dep INNER JOIN dept_emp de ON dep.dept_no = de.dept_no 
GROUP BY de.dept_no ORDER BY dep.dept_name;