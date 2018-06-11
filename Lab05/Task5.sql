USE DataBase1;

SELECT level, sname, MAX(age) FROM Student
	GROUP BY level
    HAVING MAX(age);