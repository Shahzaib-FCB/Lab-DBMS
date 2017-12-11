USE DataBaseLab;

SELECT CONCAT( UCASE( SUBSTR( Enrolled.cname, 1, 1 ) ),
	SUBSTR(Enrolled.cname, 2)) AS ClassName, 
    COUNT(snum) FROM Class, Enrolled
WHERE Class.cname = Enrolled.cname
GROUP BY Class.cname
HAVING COUNT(snum) > 2;