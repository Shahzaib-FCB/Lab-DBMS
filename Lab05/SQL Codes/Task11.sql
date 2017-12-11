USE DataBase1;

SELECT level, AVG(age) FROM Student
WHERE level <> 'JR'
	GROUP BY level
    HAVING AVG(age);