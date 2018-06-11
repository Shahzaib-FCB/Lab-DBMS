USE DataBase1;

SELECT room, COUNT(cname) FROM Class
	GROUP BY room
    HAVING COUNT(cname);