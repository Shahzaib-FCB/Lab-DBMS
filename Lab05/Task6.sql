USE DataBase1;

SELECT level, sname, AVG(age) FROM Student
	GROUP BY level
    HAVING AVG(age);