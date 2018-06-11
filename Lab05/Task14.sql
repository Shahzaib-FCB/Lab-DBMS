USE DataBase1;

SELECT Class.cname, COUNT(Enrolled.snum) FROM Enrolled, Faculty, Class
	WHERE Faculty.fname = 'Ivana Teach'
		AND Faculty.fid = Class.fid
        AND Enrolled.cname = Class.cname
    GROUP BY cname
    HAVING COUNT(snum);