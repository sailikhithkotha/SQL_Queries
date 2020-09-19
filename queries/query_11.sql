/* Find the employee with highest current salary in each department. Note that
MAX function is not allowed. Sort the result by department name. Result is
shown as table below:
dept_name emp_no salary
Customer Service 18006 144866
Development 13386 144434
...
*/

SELECT * FROM (SELECT dept.dept_name,sal.emp_no,sal.salary FROM salaries sal,current_dept_emp cdept,departments dept
WHERE sal.to_date ='9999-01-01'
AND sal.emp_no = cdept.emp_no
AND cdept.to_date = '9999-01-01'
AND dept.dept_no = cdept.dept_no
AND (sal.emp_no,dept.dept_no) NOT IN  (SELECT tab1.emp_no,tab1.dept_no FROM
(SELECT sal.emp_no,cdept.dept_no,sal.salary FROM salaries sal,current_dept_emp cdept WHERE sal.to_date ='9999-01-01' AND sal.emp_no = cdept.emp_no AND cdept.to_date = '9999-01-01') tab1,
(SELECT sal.emp_no,cdept.dept_no,sal.salary FROM salaries sal,current_dept_emp cdept WHERE sal.to_date ='9999-01-01' AND sal.emp_no = cdept.emp_no AND cdept.to_date = '9999-01-01') tab2
WHERE tab1.dept_no = tab2.dept_no 
AND tab1.salary < tab2.salary))total_result
ORDER BY total_result.dept_name;