USE DataBase1;

SELECT fname FROM Faculty
WHERE NOT EXISTS
(
	SELECT cname FROM Class
    WHERE Faculty.fid = Class.fid
)