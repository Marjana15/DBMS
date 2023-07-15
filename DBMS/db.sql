SELECT user(),now(),database();
show databases;

-- CREATE DATABASE db_bank_schema;
-- SHOW databases;

-- SELECT database();

-- USE db_bank_schema;
--  SELECT database();
create database metro;
DROP DATABASE IF EXISTS metro;
-- SHOW databases;

-- SHOW tables;
-- CREATE TABLE tbl_branch
-- (
--     branchID int PRIMARY KEY,
--     br_name varchar(50) NOT NULL UNIQUE KEY,
--     br_city varchar(40) NOT NULL default 'Sylhet',
--     br_assets double NOT NULL default 1.0,
--     br_createdOn timestamp NOT NULL default now()
-- );

-- SHOW tables;
-- DESCRIBE tbl_branch;
-- SHOW CREATE table tbl_branch;


-- DROP TABLE tbl_branch;
--  SHOW tables;

-- CREATE TABLE tbl_branch
-- (
--     branchID int,
--     br_name varchar(50) NOT NULL,
--     br_city varchar(40) NOT NULL default 'Sylhet',
--     br_assets double NOT NULL default 1.0,
--     br_createdOn timestamp NOT NULL default now(),
--     PRIMARY KEY(branchID),
--     UNIQUE KEY(br_name)
-- );

-- SHOW tables;
-- DESCRIBE tbl_branch;
-- SHOW CREATE table tbl_branch; 

-- CREATE TABLE tbl_account
-- (
--     accountNo VARCHAR(50),
--     acc_type enum('current','saving','FDR') NOT NULL default 'current',
--     acc_balance double NOT NULL default 500,
--     branchID INT NOT NULL,
--     PRIMARY KEY(accountNo)
-- );
-- SHOW tables;

-- ALTER TABLE tbl_account
--      DROP column ac_createdOn;

--  ALTER TABLE tbl_account
--       add column ac_createdOn timestamp NOT NULL default now();

--  SHOW tables;
--  DESCRIBE tbl_account;
--  SHOW CREATE table tbl_account

-- INSERT INTO tbl_account (accountNo,acc_type,acc_balance,branchID) VALUES
-- ('221-134-002', 'saving', 4328000,  11),
-- ('221-134-003', 'current', 4286070, 12);


-- SELECT * from tbl_account;

-- INSERT INTO tbl_branch(branchID,br_name,br_city,br_assets) VALUES
-- (11,'Metropolitan_Bank','Sylhet',1034345),
-- (12,'Dhaka_Bank','Dhaka',3034645),
-- (13,'Eastern_Bank','Sylhet',503145);

-- SELECT * from tbl_branch;

-- DESCRIBE tbl_account;

-- ALTER TABLE tbl_account
--     add contraint 'FK_tbl_account_tbl_branch' FOREIGN KEY
--     (branchID)
--     references tbl_branch(branchID)
--     ON DELETE NO ACTION
--     ON UPDATE CASCADE;

-- CREATE TABLE  tbl_depositor
-- (

-- );

-- CREATE TABLE tbl_customer
-- (

-- );

-- CREATE TABLE tbl_loan
-- (

-- );

-- CREATE TABLE tbl_borrower
-- (

-- );

-- ALTER TABLE tbl_account
--    add constraint `FK_tbl_account_tbl_branch` 
--    foreign key (branchID) 
--    references tbl_branch(branchID) 
--    ON DELETE NO ACTION 
--    ON UPDATE CASCADE;