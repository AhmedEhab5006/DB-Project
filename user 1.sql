--Creating tables
CREATE TABLE Department (
  id INT PRIMARY KEY ,
  name VARCHAR (20)
);


CREATE TABLE Employees (
  id INT PRIMARY KEY ,
  name VARCHAR (20) ,
  salary DECIMAL (10 , 2),
  dno INT , FOREIGN KEY (dno) REFERENCES Department (id)
);


---------------------------------------------------------------
--Inserting data to department table 
INSERT INTO Department VALUES (1 , 'HR');
INSERT INTO Department VALUES (2 , 'IT');
INSERT INTO Department VALUES (3 , 'finance');