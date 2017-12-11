USE DataBaseLab;

SELECT Student.snum, Student.sname FROM Student
JOIN Enrolled ON Enrolled.snum = Student.snum
JOIN Class ON Enrolled.cname = Class.cname
LEFT OUTER JOIN Faculty ON Faculty.fid = Class.fid
WHERE Faculty.fname IN ('Ivana Teach', 'Linda Davis')
GROUP BY Student.sname, Student.snum
HAVING COUNT(DISTINCT Faculty.fname) = 2;