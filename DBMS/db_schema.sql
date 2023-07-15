-- Active: 1685244069082@@127.0.0.1@3306@db_schema
-- select user(), now(),databse()

-- show databases;

CREATE DATABASE db_bank_schema_info;
show databases;
use db_bank_schema_info;
select database();

-- CREATE table tbl_account
-- (
--     AccountNo int(9) not null primary key,
--     BranchId int(9) not null,
--     acc_balance double not null default 1.0
-- );
--  show tables;
INSERT INTO tbl_account(AccountNo,BranchId,acc_balance) VALUES
('22','34',377.4),
('23','36',3.4),
('27','37',3.88);

 --select * from tbl_account;



select * from tbl_branch;

--drop Table tbl_branch;
CREATE Table tbl_branch
(
    BranchId int(9) not null primary key,
    br_city varchar(13) not NULL,
    br_assets DOUBLE not null
);
show tables;

INSERT INTO tbl_branch(BranchId,br_city,br_assets) VALUES
('36','Sylhet',3.0),
('37','Dhaka',3.0),
('38','Dhaka',3.0);

CREATE TABLE tbl_depositor
(
    customerID INT(11) NOT NULL,
    acc_number INT(11) NOT NULL PRIMARY KEY,
    dp_date timestamp NOT NULL default now()

);
show tables;

insert into tbl_depositor (`customerID`,acc_number)values

    (23,5427);

    CREATE table tbl_customer
(
    CustomerID int(9) primary key,
    cu_name varchar(12) not null,
    cu_street varchar(12) not null,
    cu_city varchar(12) not null default 'Dhaka'

);

 insert into tbl_customer(CustomerId,Cu_name,cu_street,cu_city)VALUES 
-- ('22','abc','ddd','Sylhet'),
-- ('24','abc4','dddr','rajshahi'),
-- ('225','abcr','dd','Dhaka'),
-- ('228','abctt','ddy','Dhaka'),
-- ('229','abcrr','ddr','Dhaka')
('23','abu','ddt','dhaka');

-- ALTER Table tbl_account
-- add constraint `fk_tbl_account_tbl_branch`
-- Foreign Key (BranchId)
-- REFERENCES tbl_branch (BranchId)
-- on delete no action
-- on update cascade;

ALTER table tbl_depositor
add constraint `fk_tb_depositor_tbl_customer`
Foreign Key (customerID) 
REFERENCES  tbl_customer(CustomerID)
on delete no action
on update cascade;



