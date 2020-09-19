/*Calculate the percentage of number of employees’ current salary is above the department current avarage. Sort the result by department 
name. The result is shown as following:
dept_name 		 above_avg_pect
Customer Service 44.4988
Development 	 46.6018
...
*/


SELECT q3.dept_name, (cnt1/cnt)*100 above_avg_pect FROM
(SELECT *, COUNT(q1.salary) cnt1 FROM
(SELECT q1.dept_no, d.dept_name, AVG(q1.salary) avg_sal, COUNT(q1.salary) cnt FROM 
(SELECT d.dept_no, d.emp_no, s.salary FROM dept_emp d, salaries s 
WHERE d.emp_no = s.emp_no AND s.to_date = '9999-01-01' AND d.to_date = '9999-01-01') q1, departments d
WHERE d.dept_no = q1.dept_no
GROUP BY d.dept_no) q2

JOIN

(SELECT d.dept_no d2, d.emp_no, s.salary FROM dept_emp d, salaries s 
WHERE d.emp_no = s.emp_no AND s.to_date = '9999-01-01' AND d.to_date = '9999-01-01') q1

ON q1.d2 = q2.dept_no AND q1.salary>q2.avg_sal

GROUP BY dept_no) q3
ORDER BY dept_name