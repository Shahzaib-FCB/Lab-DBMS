USE DataBaseLab;

DROP VIEW ElderStudents;

CREATE VIEW ElderStudents AS SELECT * FROM Student S1
WHERE age IN 
(
	SELECT MAX(age) FROM Student S2
    WHERE S1.major = S2.major
    GROUP BY major
);

/* TASK A */
SELECT DISTINCT Class.cname, room 
FROM ElderStudents, Enrolled, Class
WHERE ElderStudents.snum = Enrolled.snum
	AND Enrolled.cname = Class.cname;