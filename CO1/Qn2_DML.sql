CREATE DATABASE company;
 
USE company;

CREATE TABLE employee (emp_no int(10)  not null , emp_name varchar(20) not null , dob date not null , address varchar(25) not null , doj date not null , mobile_no int(20) not null , dept_no int(10) not null , salary int(10) not null , primary key(emp_no) , foreign key(dept_no) references department(dept_no));
CREATE TABLE department(dept_no int(10) not null , dept_name varchar(20) not null , location varchar(20) not null , primary key(dept_no)); 

INSERT INTO employee (emp_no,emp_name,dob,address,doj,mobile_no,dept_no,salary)VALUES(12345,'akhil','1980-05-12','kakkadad house','2020-04-25',984562137,212,15000);
INSERT INTO employee (emp_no,emp_name,dob,address,doj,mobile_no,dept_no,salary)VALUES(12545,'arjun','1988-05-02','pala house','2019-08-25',982261378,212,16000);
INSERT INTO employee (emp_no,emp_name,dob,address,doj,mobile_no,dept_no,salary)VALUES(12349,'manu','1990-05-12','permbu house','2020-11-15',984665378,222,12500);
INSERT INTO employee (emp_no,emp_name,dob,address,doj,mobile_no,dept_no,salary)VALUES(12355,'varun','1990-08-22','ajml house','2021-04-15',984621998,252,18000);
INSERT INTO employee (emp_no,emp_name,dob,address,doj,mobile_no,dept_no,salary)VALUES(12343,'amal','1988-06-13','vija house','2019-04-05',984621399,222,15000);

INSERT INTO department (dept_no,dept_name,location) VALUES(212,'mechincal','firstfloor');
INSERT INTO department (dept_no,dept_name,location) VALUES(222,'electrical','groundfloor');
INSERT INTO department (dept_no,dept_name,location) VALUES(252,'techincal','firstfloor');

SHOW TABLES;

SHOW DATABASES;

DESCRIBE employee;
DESCRIBE department;

SELECT*FROM employee;
SELECT*FROM department;

ALTER TABLE employee add manager varchar(20) not null;
ALTER TABLE department drop location;

DROP TABLE employee; 
DROP TABLE department;

DROP DATABASE userinfo;
