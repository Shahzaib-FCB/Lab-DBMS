USE DataBaseLab;

SELECT fname FROM Faculty, Enrolled, Class
WHERE Faculty.fid = Class.fid 
	AND Class.cname = Enrolled.cname 
	AND Enrolled.cname = "Database Systems"
    AND YEAR(dateFrom) = "2009";