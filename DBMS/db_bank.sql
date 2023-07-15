--SELECT user(),now(),database()

--show databases;

-- CREATE database db_schema;
-- show databases;
-- use db_schema;
-- show tables;
-- select database();*/

/*CREATE Table tbl_account
(
    AccountNo int(9) primary key,
    BranchID int(12) not null ,
    acc_balance double not null default 1.0
);*/

--show tables;

/*desc tbl_account;

drop table tbl_account;

create table tbl_account
(
    AccountNo int(9) ,
    BranchID int(12) not null, 
    acc_account double not null default 1.0,
    primary key(AccountNo)
);

drop table tbl_account;*/

-- CREATE table tbl_customer
-- (
--     CustomerID int(9) primary key,
--     cu_name varchar(12) not null,
--     cu_street varchar(12) not null,
--     cu_city varchar(12) not null default 'Dhaka'

-- );

-- show tables;*/


--drop table tbl_account;

/*CREATE table tbl_branch
(
    BranchID int(9) primary key,
    br_name varchar(12) not null,
    br_city varchar(15) not null DEFAULT 'SYLHET',
    br_assets double not null
);
*/
-- insert into tbl_account(AccountNo,BranchID,acc_balance) VALUES
-- ('211','134', 22.22),
-- ('233','344', 33.33);

-- SELECT * from tbl_account;
-- create table tbl_account
-- (
--     AccountNo int(9) ,
--     BranchID int(12) UNIQUE Key, 
--     acc_balance double not null default 1.0,
--     primary key(AccountNo)
-- );

-- insert into tbl_account(AccountNo,BranchID,acc_balance) VALUES
-- ('211','134', 22.22),
-- ('233','344', 33.33);

-- insert into tbl_customer(CustomerId,Cu_name,cu_street,cu_city) if EXISTS VALUES 
-- ('22','abc','ddd','Sylhet'),
-- ('24','abc4','dddr','rajshahi'),
-- ('225','abcr','dd','Dhaka'),
-- ('228','abctt','ddy','Dhaka'),
-- ('229','abcrr','ddr','Dhaka');

--SELECT * from tbl_customer;

-- 


--drop table tbl_depositor;


insert into tbl_depositor (`customerID`,acc_number)values
    (22,5424);

    SELECT * from tbl_depositor;
-- CREATE TABLE tbl_employee
-- (
--     employeeID INT(11) NOT NULL PRIMARY KEY,
--     emp_name VARCHAR(20) NOT NULL,
--     branchID INT ,
--     emp_designation VARCHAR(20) NOT NULL
-- );

-- CREATE TABLE tbl_depositor
-- (
--     customerID INT(11) NOT NULL,
--     acc_number INT(11) NOT NULL PRIMARY KEY,
--     dp_date timestamp NOT NULL default now()

-- );
-- show tables;



ALTER table tbl_depositor
add constraint `fk_tb_depositor_tbl_customer`
Foreign Key (customerID) 
REFERENCES  tbl_customer(CustomerID)
on delete no action
on update cascade;

-- alter TABLE tbl_depositor
-- add constraint `fk_tbl_depositor_tbl_customer`
-- Foreign Key (customerId)
-- REFERENCES tbl_customer (CustomerID)
-- on delete no action
-- on update cascade;


