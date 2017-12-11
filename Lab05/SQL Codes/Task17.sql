USE DataBase1;

SELECT MIN(Student.age) FROM Enrolled, Student
	WHERE Student.snum = Enrolled.snum
	GROUP BY cname
    HAVING Enrolled.cname = 'Database Systems';