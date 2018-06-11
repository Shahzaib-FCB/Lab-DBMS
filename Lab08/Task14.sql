USE DataBaseLab;

SELECT sname FROM Student, Enrolled 
WHERE Student.snum = Enrolled.snum 
	AND Enrolled.dateTo IS NULL;