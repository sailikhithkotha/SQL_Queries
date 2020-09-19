/*For each department, list out the manager who stayed the longest time in the department. The list needs to exclude the current manager. 
Sort the result by employee number. The result of query is similar to following table:

emp_no dept_name
110022 Marketing
110085 Finance
...
*/

SELECT dm.emp_no, d.dept_name FROM dept_manager dm, departments d WHERE (dm.emp_no,dm.dept_no) NOT IN (SELECT dm2.emp_no, dm2.dept_no 
    FROM dept_manager dm1 , dept_manager dm2
	WHERE dm1.to_date != '9999-01-01' 
	  AND dm2.to_date != '9999-01-01'
	  AND dm1.dept_no = dm2.dept_no
	  AND datediff(dm2.to_date,dm2.from_date) < datediff(dm1.to_date,dm1.from_date))
      AND dm.dept_no = d.dept_no
      AND dm.to_date != '9999-01-01'
      ORDER BY dm.emp_no;