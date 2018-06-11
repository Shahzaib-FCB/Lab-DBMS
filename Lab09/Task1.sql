USE DataBaseLab;

SELECT DISTINCT sname FROM Student
LEFT JOIN Enrolled ON Enrolled.snum = Student.snum
LEFT JOIN Class ON Class.cname = Enrolled.cname
LEFT OUTER JOIN Faculty ON Faculty.fid = Class.fid 
	AND fname = 'Ivana Teach'
WHERE level = 'JR';