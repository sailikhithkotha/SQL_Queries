/* For each employee, find out how many times the title has been changed without
chaning of the salary. e.g. An employee promoted from Engineer to Sr. Engineer
with salaries remains 10k. Sort the result by employ number. The result of query
is similar to following table:
emp_no cnt
10004 1
10005 1
10007 1
10009 2
..
*/

SELECT emp_no, count(*) AS cnt FROM titles 
    WHERE from_date NOT IN (SELECT from_date FROM salaries WHERE emp_no = titles.emp_no) 
    GROUP BY emp_no
	ORDER BY emp_no;