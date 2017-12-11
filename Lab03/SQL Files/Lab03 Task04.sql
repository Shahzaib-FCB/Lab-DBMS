USE DataBase1;

#TASK 4
ALTER TABLE Student
MODIFY COLUMN sname varchar(30);

ALTER TABLE Faculty
MODIFY COLUMN fname varchar(30);

SET foreign_key_checks = 0;

ALTER TABLE Class
MODIFY COLUMN cname varchar(40);

SET foreign_key_checks = 1;

ALTER TABLE Enrolled
MODIFY COLUMN cname varchar(40);