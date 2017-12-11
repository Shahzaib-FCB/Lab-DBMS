USE DataBase1;

#TASK 2 AND 3
ALTER TABLE Student
ADD age int CHECK (age >= 18 AND age <= 35);