/* Find out those pairs of employees (eH, eL) which satisfy ALL following conditions:
1. Both eH and eL born in 1965
2. eH’s current salary is higher than eL’s current salary
3. eH’s hiring date is greater than eL, which means eH is a newer employee
than eL.
Sort the result by employee number of eH then employee number of el
.
Result is shown as table below:
h_empno h_salary h_date l_empno l_salary l_date
10095 80955 1986-07-15 13499 58029 1985-11-25
10095 80955 1986-07-15 14104 61757 1986-01-02
10095 80955 1986-07-15 17206 55078 1986-02-25
10095 80955 1986-07-15 18617 66957 1986-06-28
...
• h empno : eH’s employee number
• h salary : eH’s current salary
• h date : eH’s hire date
• l empno : eL’s employee number
• l salary : eL’s current salary
• l date : eL’s hire date

*/


SELECT h.emp_no AS h_empno, h_sal.salary AS h_salary, h.hire_date AS h_date, l.emp_no AS l_empno, l_sal.salary AS l_salary, l.hire_date AS l_date
FROM employees h, employees l, salaries h_sal, salaries l_sal
WHERE h.emp_no = h_sal.emp_no
AND l.emp_no = l_sal.emp_no
AND year(l.birth_date) = 1965
AND year(h.birth_date)= 1965
AND h.hire_date > l.hire_date
AND h_sal.salary > l_sal.salary
AND h_sal.to_date = '9999-01-01'
AND l_sal.to_date = '9999-01-01'
ORDER BY h.emp_no, l.emp_no;