USE DataBase1;

SELECT COUNT(stds.snum) FROM 
(
	SELECT Student.snum, sname FROM Student, Enrolled
    WHERE Student.snum = Enrolled.snum 
		AND sname = 'Karen Scott'
) AS stds
	GROUP BY stds.snum
    HAVING COUNT(stds.snum);