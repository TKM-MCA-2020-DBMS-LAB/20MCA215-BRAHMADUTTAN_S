CREATE DATABASE company;
USE `company`;
CREATE TABLE employee(emp_no int(20) not null primary key,emp_name varchar(100) not null,DOB date  not null,address varchar(200) not null ,doj date not null,mobile_no int(20) not null,dept_no int(20) not null,salary int(100) not null);
CREATE TABLE department(dept_no int(10) not null primary key,dept_name varchar(20) not null,location varchar(100) not null);

SHOW tables;

DESCRIBE employee;

DESCRIBE department;

SHOW databases;

ALTER TABLE employee ADD COLUMN designation VARCHAR(20);

ALTER TABLE department DROP COLUMN location;

DROP TABLE employee;

DROP TABLE department;

DROP database company;