USE DataBase1;

SELECT cname, COUNT(snum) Enrollement_Strength FROM Enrolled
	GROUP BY cname
    HAVING COUNT(Enrolled.snum) > 5