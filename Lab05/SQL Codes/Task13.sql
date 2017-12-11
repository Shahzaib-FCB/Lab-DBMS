USE DataBase1;

SELECT cname, COUNT(snum) FROM Enrolled
	GROUP BY cname
    HAVING COUNT(snum) > 2;