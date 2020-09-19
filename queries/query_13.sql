/* Assuming a title is a node and a promotion is an edge between nodes. e.g.
And promotion from Engineer to Senior Engineer means their is a path from Node ’Engineer’ to Node ’Senior Engineer’. 
Find out pairs of node of source and destination (src, dst) which there is no such path in the database. 
Sort the result by src then dst. The result is shown as following:
src  				dst
Assistant Engineer  Assistant Engineer
Engineer 			Assistant Engineer
...
The result table shows that there is no path from Assistant Engineer to Assistant
Engineer and neither Engineer to Assistant Engineer. That means there is no
one have been from Engineer and be promoted/demoted to Assistant Engineer
(no matter how many times of promotion/demotion) in the database.
*/


SELECT ttlc.title src, ttld.title dst FROM (SELECT title FROM titles GROUP BY title ) ttlc, 
(SELECT title FROM titles GROUP BY title ) ttld
WHERE NOT EXISTS (WITH RECURSIVE res (src,dst) AS (
WITH PARENT AS (SELECT ttla.title src, ttlb.title dst FROM titles ttla INNER JOIN titles ttlb USING (emp_no) 
WHERE ttla.to_date = ttlb.from_date 
AND ttla.from_date < ttlb.from_date GROUP BY ttla.title , ttlb.title)
SELECT * FROM PARENT
UNION DISTINCT 
(SELECT pa.src, re.dst
FROM PARENT pa, res re
WHERE pa.dst = re.src))
SELECT re2.src, re2.dst
FROM res re2 WHERE re2.src = ttlc.title AND re2.dst = ttld.title) ORDER BY ttlc.title, ttld.title;