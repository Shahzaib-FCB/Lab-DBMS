USE DataBaseLab;

SELECT DISTINCT deptid FROM Faculty
JOIN Class ON Class.fid = Faculty.fid
JOIN Enrolled ON Enrolled.cname = Class.cname
LEFT OUTER JOIN Student ON Student.snum = Enrolled.snum;