/*Find out departments which has changed its manager more than once then list out the name of the departments and the number of changes. 
Sort the result by department name. The result of query is similar to following table:

dept_name 		  cnt
Customer Service  3
...
*/


SELECT q2.dept_name, q2.cnt FROM
(SELECT d.dept_name, count(*) AS cnt FROM
(SELECT * FROM dept_manager WHERE to_date <> '9999-01-01') q1, departments d 
WHERE d.dept_no = q1.dept_no
GROUP BY q1.dept_no
ORDER BY d.dept_name) q2
WHERE q2.cnt > 1;