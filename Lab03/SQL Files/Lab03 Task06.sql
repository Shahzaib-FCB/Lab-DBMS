USE DataBase1;

#TASK 6
LOAD DATA INFILE '/home/shahzaib/Desktop/student.txt' 
INTO TABLE Student FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA INFILE '/home/shahzaib/Desktop/faculty.txt' 
INTO TABLE Faculty FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA INFILE '/home/shahzaib/Desktop/class.txt' 
INTO TABLE Class FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA INFILE '/home/shahzaib/Desktop/enrolled.txt' 
INTO TABLE Enrolled FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';