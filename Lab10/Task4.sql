USE DataBaseLab;

SELECT DISTINCT sname
FROM Student, Enrolled E1, Enrolled E2, Class C1, Class C2
WHERE Student.snum = E1.snum
	AND E1.cname = C1.cname
    AND E2.cname = C2.cname
    AND E1.cname != E2.cname
	AND C1.meets_at = C2.meets_at;