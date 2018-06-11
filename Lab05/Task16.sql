USE DataBase1;

SELECT fname, COUNT(Faculty.fname) FROM Faculty,Class
	WHERE Class.fid = Faculty.fid
	GROUP BY cname
    HAVING COUNT(Faculty.fname);