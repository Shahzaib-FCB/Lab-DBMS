# Lab 08 : SQL Logical Operators & Single Row Functions

## Schema
<strong>Student</strong> (__snum__: integer, sname: char(30), major: char(25), level: char(2), age: integer)
<strong>Faculty</strong> (__fid__: integer, fname: char(30), deptid: integer)
<strong>Class</strong> (__cname__: char(40), meets_at: char(20), room: char(10), fid: integer | fid REFS Faculty.fid)
<strong>Enrolled</strong> (__snum__: integer, __cname__: char(40) | snum REFS student.snum, cname REFS class.name)

## Lab Tasks
1. Add new fields: dateFrom and dateTo in the enrolled table.
2. Insert data in enrolled table. (also insert data into other three tables)
3. Print the level in lower case and the average age of those students who enrolled in 2008 for that level for all levels that include ‘R’.
4. Find the names of all classes (initial capital) and their enrollment strength that have enrollment greater than 2.
5. Find the names of faculty members (in upper case) and their department number together who teach in room ‘R128’ in descending order.
6. Fin the names of students who enrolled in June 2010 and majoring in any ‘Science’ in ascending order.
7. Find the names of faculty members that either teach to class ‘database systems’or not.
8. Find distinct student ages of those students who completed the course in the year in which he enrolled the couse, in ‘Database’ class.
9. Find the name of students and completion month and year who enrolled in ‘Data Structures’.
10. Find class names ether taught by faculty member: ‘Barbara Wilson’ or not
11. Find the name of teacher who does not teach to class: ‘Marketing Research’.
12. Find the names of faculty members that taught to class ‘database Systems’ in 2009.
13. Find the name of course that was run only for three months.
14. Find the names of students who enrolled but could not complete their courses.
15. Find the names of students who completed their course in June.