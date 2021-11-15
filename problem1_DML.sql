
INSERT INTO department 
VALUES (null, 'production', null,'2018-3-10');
INSERT INTO department 
VALUES (null, 'finance', null,'2020-10-12');
INSERT INTO department 
VALUES (null, 'Purchasing', null,'2019-10-1');


INSERT INTO employee 
VALUES (null, 'hazem','shaaban','2000-3-1', 'borg alarb','male',2000,1);
INSERT INTO employee 
VALUES (null, 'anas','hamed','2000-9-1', 'sporting','male',2500,2);
INSERT INTO employee 
VALUES (null, 'maryam','ibrahim','1998-7-15', 'borg alarb','female',5000,1);
INSERT INTO employee 
VALUES (null, 'hager','el sayed','1990-5-10', 'agami','female',3000,1);
INSERT INTO employee 
VALUES (null, 'ibrahim','mohamed','1999-3-2', 'ibahimya','male',2050,3);

INSERT INTO project 
VALUES (null, 'alex-construction', 'balaza',3);
INSERT INTO project 
VALUES (null, 'alex-west', 'agami',2);
INSERT INTO project 
VALUES (null, 'service', 'borg alarb',1);

UPDATE department
SET mgr_ssn=1
WHERE dnumber=1;
UPDATE department
SET mgr_ssn=4
WHERE dnumber=2;
UPDATE department
SET mgr_ssn=5
WHERE dnumber=3
