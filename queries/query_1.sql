/* Find all employees’ employee number, birth date, gender. Sort the result by employee number. The result of query is similar to following table:

emp_no	birth_date gender
10001 	1953-09-02 M
10002	1964-06-02 F
10003 	1959-12-03 M
...
*/

SELECT emp_no, birth_date, gender FROM employees ORDER BY emp_no;