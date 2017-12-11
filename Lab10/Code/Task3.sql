USE DataBaseLab;

DROP VIEW EnrolledStudents;

CREATE VIEW EnrolledStudents AS
SELECT DISTINCT Student.snum, sname, major, level, age 
FROM Student, Enrolled
WHERE Student.snum = Enrolled.snum;

SELECT * FROM databaselab.enrolledstudents;