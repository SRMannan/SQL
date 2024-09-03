CREATE TABLE employee(
    id INT PRIMARY KEY,
    name VARCHAR(10)
);

INSERT INTO employee (id, name) VALUES (1, 'sharry') , (2, 'garry') , (3, 'tharry');
select * from employee;

#ALTER - COMMANDS
#ADD A COL
ALTER table employee add address varchar(30);

#ALTER - REMOVE COLS
ALTER table employee DROP COLUMN address;

#ALTER - MODIFY COL DATATYPE
#ALTER TABLE employee modify COLUMN id varchar(5) 

#ALTER - MODIFY COL RENAME
#ALTER TABLE employee rename COLUMN id to idd;

#ALTER - MODIFY TABLE NAMES
#ALTER table employee rename to emp;

#ALTER - ADD CONSTRAINT
#ALTER TABLE employee ADD CONSTRAINT pk_employee_id PRIMARY KEY (id);


select * from emp;
