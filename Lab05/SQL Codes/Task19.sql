USE DataBase1;

SELECT fname, COUNT(snum) FROM Class, Enrolled, Faculty
	WHERE Class.fid = Faculty.fid
		AND Class.cname = Enrolled.cname
	GROUP BY fname, Enrolled.snum
    HAVING COUNT(Enrolled.snum)