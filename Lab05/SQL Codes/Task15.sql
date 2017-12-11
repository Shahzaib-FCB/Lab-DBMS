USE DataBase1;

SELECT COUNT(Faculty.fname) FROM Class, Faculty
	WHERE Class.cname = 'Database Systems'
		AND Class.fid = Faculty.fid
    GROUP BY fname
    HAVING COUNT(Faculty.fid);