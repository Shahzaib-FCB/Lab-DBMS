USE DataBase1;

SELECT sname, AVG(age) FROM Enrolled, Student
WHERE Enrolled.snum = Student.snum
	AND Enrolled.cname = 'Organic Chemistry'
    GROUP BY sname
    HAVING AVG(age);