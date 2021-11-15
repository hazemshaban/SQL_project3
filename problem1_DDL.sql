create database company;
CREATE TABLE EMPLOYEE(
    ssn int(4) AUTO_INCREMENT PRIMARY KEY,
    fname varchar(30) NOT null,
    lname varchar(30) NOT null,
    bdate date NOT null,
    address varchar(30) NOT null,
    gender varchar(10) NOT null,
    salary int(6) NOT null,
    Dno int(4)  not null 
    
);
CREATE TABLE department(
    Dnumber int(4) AUTO_INCREMENT PRIMARY key,
    dname varchar(20) NOT null,
    mgr_ssn int(4)   UNIQUE,
    mgr_start_date date NOT null
);


CREATE TABLE project(
    pnumber int(10) PRIMARY key AUTO_INCREMENT ,
    pname varchar(30) NOT null,
    plocation varchar(30) NOT null,
    dno int(4) not null   
);

alter TABLE employee add FOREIGN KEY (dno) REFERENCES department (Dnumber);
alter TABLE project add FOREIGN KEY (dno) REFERENCES department (Dnumber);
alter TABLE department add FOREIGN KEY (mgr_ssn) REFERENCES employee (ssn);
