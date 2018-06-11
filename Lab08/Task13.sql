USE DataBaseLab;

SELECT Class.cname FROM Class, Enrolled 
WHERE Class.cname = Enrolled.cname 
	AND TIMESTAMPDIFF(MONTH, dateFrom, dateTo) = 3;