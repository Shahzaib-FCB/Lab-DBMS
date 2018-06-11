USE DataBaseLab;

SELECT LOWER(level), AVG(age) FROM Student, Enrolled
WHERE Student.snum = Enrolled.snum 
	AND dateFrom LIKE '2008%' AND level LIKE '%R%'
GROUP BY level
HAVING AVG(age);