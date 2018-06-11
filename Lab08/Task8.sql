USE DataBaseLab;

SELECT DISTINCT age FROM Student, Enrolled
WHERE Student.snum = Enrolled.snum 
	AND Enrolled.cname = "Database Systems" 
	AND SUBSTR(enrolled.dateFrom,1,4) = SUBSTR(Enrolled.dateTo,1,4);