USE DataBaseLab;

DROP VIEW EnrolledStudents;

CREATE VIEW EnrolledStudents AS
SELECT DISTINCT Student.snum, sname, major, level, age
FROM Student, Enrolled
WHERE Student.snum = Enrolled.snum;

SELECT DISTINCT sname
FROM EnrolledStudents, Enrolled E1, Enrolled E2, Class C1, Class C2
WHERE E1.cname = C1.cname
	AND E1.snum = E2.snum
    AND E2.cname = C2.cname
    AND E1.cname != E2.cname
	AND C1.meets_at = C2.meets_at;