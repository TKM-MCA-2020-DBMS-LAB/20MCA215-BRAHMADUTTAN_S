CREATE DATABASE Organisation;

use organisation;

CREATE TABLE Department(Dept_no INT,Dept_name VARCHAR(20) PRIMARY KEY,Location VARCHAR(30));
CREATE TABLE Employee(Emp_no INT PRIMARY KEY,Emp_name VARCHAR(20) NOT NULL,DOB DATE NOT NULL,Address VARCHAR(30),Date_of_Join DATE,Mobile_no NUMERIC,Dept_no INT,Dept_name VARCHAR(20), Designation VARCHAR(30),Salary FLOAT,FOREIGN KEY(Dept_name) REFERENCES Department(Dept_name));

describe Employee;

INSERT INTO Department VALUES(1,"PRODUCTION","Block-1");
INSERT INTO Department VALUES(2,"MARKETING","Block-2");
INSERT INTO Department VALUES(3,"FINANCE","Block-3");
INSERT INTO Department VALUES(4,"HR","Block-4");

SELECT * FROM Department;

INSERT INTO Employee VALUES(1,"Antony",'1989-08-12',"Delhi",'2020-05-06',9633019940,2,"MARKETING","Admin. Assistant",35000);
INSERT INTO Employee VALUES(2,"Manohar",'1997-11-12',"Mumbai",'2021-01-08',9895673412,4,"MARKETING","Admin. Cordinator",8500);
INSERT INTO Employee VALUES(3,"Rony",'1994-10-15',"Kolkata",'2018-11-15',9746568910,1,"HR","Business Analyst",40000);
INSERT INTO Employee VALUES(4,"Dane",'1992-10-19',"Hydrabad",'2018-11-20',9746563456,2,"MARKETING","Programme Coordinator",40000);

SELECT * FROM Employee;

INSERT INTO Department VALUES(5,"PURCHASING","Block-4");
INSERT INTO Department VALUES(6,"SALES","Block-5");
INSERT INTO Department VALUES(7,"ACCOUNTING","Block-6");
INSERT INTO Department VALUES(8,"PUBLIC RELATIONS","Block-1");
INSERT INTO Department VALUES(9,"LEGAL/MEDIA","Block-1");

INSERT INTO Employee VALUES(5,"Albert",'1970-08-12',"Kerala",'2021-02-14',9633789600,5,"LEGAL/MEDIA","Support Assistant",10000);
INSERT INTO Employee VALUES(6,"Jagdhesh",'1971-11-12',"Kerala",'2021-02-14',9895677812,9,"PRODUCTION","Client Relations Manager",8500);
INSERT INTO Employee VALUES(7,"Hareesh",'1984-10-15',"Banglore",'2021-02-15',9756768910,9,"LEGAL/MEDIA","Typist",8500);
INSERT INTO Employee VALUES(9,"Alen",'1989-11-12',"Mysore",'2021-02-14',9746989456,1,"PUBLIC RELATIONS","Sr. Clerk",4500);
INSERT INTO Employee VALUES(8,"Giri",'2000-10-19',"Kerala",'2021-02-14',9746589456,3,"SALES","Jr. Clerk",2500);
INSERT INTO Employee VALUES(10,"John",'2001-10-29',"Kerala",'2020-05-04',9746588456,2,"Marketing","Sr. Clerk",25000);
SELECT * FROM Department;
SELECT * FROM Employee;

SELECT Emp_name , Emp_no FROM Employee WHERE Dept_no = 2;

SELECT Emp_no,Emp_name,Designation,Dept_no,Salary FROM Employee ORDER BY Salary DESC;

SELECT Emp_no, Emp_name, Salary FROM Employee WHERE Salary BETWEEN 2000 and 5000;

SELECT DISTINCT Designation FROM Employee;

SELECT Dept_name,SUM(Salary) FROM Employee GROUP BY Dept_name;

UPDATE Employee SET Salary= 25000 WHERE Designation="Typist";

SELECT * FROM Employee;

UPDATE Employee SET Mobile_no="7856193670" WHERE Emp_name ="John";

DELETE FROM Employee WHERE salary="7000";

SELECT * FROM Employee;

SELECT Dept_name, SUM(Salary) FROM Employee GROUP BY(Dept_name) HAVING SUM(Salary)>=25000;

DROP TABLE Employee;

DROP TABLE Department;

DROP DATABASE Organisation;