CREATE DATABASE IF NOT EXISTS software_engineering;
USE software_engineering;

CREATE TABLE IF NOT EXISTS software_engineering.class(
	Class_ID INT PRIMARY KEY AUTO_INCREMENT,
    Semester INT,
    Student_Name VARCHAR(25)
);

INSERT INTO software_engineering.class (Semester,Student_Name)
VALUES	(4,'Ali'),
		(5,'Asad'),
        (6,'Sara'),
        (3,'Saba'),
        (3,'Mohsin');