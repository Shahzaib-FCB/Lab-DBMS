# Assignment : SQL Views

The Final Document is given in the *Final Document.pdf*

## Schema
<strong>Student</strong> (snum: integer, sname: char(30), major: char(25), level: char(2), age: integer)\
<strong>Faculty</strong> (fid: integer, fname: char(30), deptid: integer)\
<strong>Class</strong> (cname: char(40), meets_at: char(20), room: char(10), fid: integer | fid REFS Faculty.fid)\
<strong>Enrolled</strong> (snum: integer, cname: char(40) | snum REFS student.snum, cname REFS class.name)

## Lab Tasks
1. Create a view named “CSstudents” that retrieve all students whose major is “Computer Science”.
	1. Retrieve age of the oldest student whose major is “Compter Science”.
	2. Find the name and age of the oldest student whose major = “Computer Science”
	3. Find the names, majors and ages of all juniors (Level = JR) who are enrolled in a class taught by Ivana Teach in “Computer Science” major.
	4. Find the names of faculty members and their departments, classes and room number which they teaching in “Computer Science” major.
2. Define a view “ElderStudents” that retrieve oldest students in each major.
	1. Find the names of classes and their rooms where elder students are studying.
	2. Find name of major and age of student who includes the eldest student.
3. Define a view “EnrolledStudents” that retrieve students who are enrolled for a class.
4. Find the names of all students who are enrolled in two classes that meet at the same time.
5. Redefine the above query with “EnrolledStudents”.