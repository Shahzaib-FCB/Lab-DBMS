USE DataBase1;

SELECT cname, meets_at FROM Class
WHERE EXISTS 
(
	SELECT Faculty.fid FROM Faculty
    WHERE Faculty.fid = Class.fid
		AND Faculty.fname = 'Richard Jackson'
)