/* List pairs of employee (e1, e2) which satisfies ALL following conditions:
1. Both e1 and e2’s current department number is d001.
2. The year of birthdate for e1 and e2 is 1955.
3. The e1’s employee number is less than e2.

Sort the result by e1 then e2. The result of query is similar to following table:

e1 	  e2
10239 10367
10239 11251
...
10367 11251
10367 11554
...

*/

SELECT C1.emp_no e1, C2.emp_no e2 FROM current_dept_emp C1, current_dept_emp C2, employees E1, employees E2 
WHERE C1.dept_no = C2.dept_no 
AND C1.dept_no = 'd001' 
AND C1.emp_no < C2.emp_no 
AND C1.emp_no = E1.emp_no 
AND C2.emp_no = E2.emp_no 
AND year(E1.birth_date) = year(E2.birth_date) 
AND year(E1.birth_date) = 1955 
AND C1.to_date = C2.to_date 
AND C1.to_date = '9999-01-01' 
ORDER BY C1.emp_no, C2.emp_no;