USE DataBase1;

SELECT cname, COUNT(snum) FROM Enrolled
WHERE Enrolled.cname = 'Urban Economics'
	GROUP BY cname
    HAVING MAX(snum);