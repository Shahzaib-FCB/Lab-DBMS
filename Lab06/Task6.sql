USE DataBase1;

SELECT age FROM Student
WHERE EXISTS
(
	SELECT snum FROM Enrolled
    WHERE Student.snum = Enrolled.snum
		AND Student.age > 20
        AND cname = 'Database Systems'
)