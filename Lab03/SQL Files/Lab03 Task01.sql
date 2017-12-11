CREATE DATABASE IF NOT EXISTS DataBase1;
USE DataBase1;

#TASK 1
CREATE TABLE IF NOT EXISTS Student
(
	snum int PRIMARY KEY,
    sname char(30),
    major char(25),
    level char(2)
);

CREATE TABLE IF NOT EXISTS Faculty
(
	fid int PRIMARY KEY,
    fname char(30),
    deptid int
);

CREATE TABLE IF NOT EXISTS Class
(
	cname char(40) PRIMARY KEY,
    meets_at char(20),
    room char(10),
    fid int,
    
    FOREIGN KEY (fid) REFERENCES Faculty(fid)
);

CREATE TABLE IF NOT EXISTS Enrolled
(
	snum int,
    cname char (40),
    
    FOREIGN KEY (snum) REFERENCES Student(snum),
    FOREIGN KEY (cname) REFERENCES Class(cname)
);