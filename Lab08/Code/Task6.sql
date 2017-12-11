USE DataBaseLab;

SELECT sname FROM Student, Enrolled 
WHERE Student.snum = Enrolled.snum 
	AND major LIKE '%science'
	AND Enrolled.dateFrom LIKE "%2010-06%"
ORDER BY sname ASC;