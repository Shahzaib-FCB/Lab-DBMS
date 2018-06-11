USE DataBase1;

SELECT fname FROM Faculty
WHERE NOT EXISTS
(
	SELECT cname FROM Class
    WHERE cname = 'Database Systems'
		AND Faculty.fid = Class.fid
)