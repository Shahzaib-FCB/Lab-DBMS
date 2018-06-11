USE DataBaseLab;

SELECT sname, SUBSTR(dateTo,1,4) AS Year, 
	SUBSTR(dateTo, 6,2) AS MONTH FROM Student, Enrolled
WHERE Student.snum = Enrolled.snum 
	AND Enrolled.cname = "Data Structures";