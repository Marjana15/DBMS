/*select user(),now(),database();
show databases;

create database db_bank_schema;
show databases;
select database();
use db_bank_schema;
select database();*/

create table tbl_branch
(
    branchID int(9) primary key,
    br_name varchar(12) not null unique key,
    br_city varchar(12) not null default'Dhaka',
    br_assets double not null default 1.0,
    br_createdOn timestamp not null default now()
);

show tables;

desc tbl_branch;

drop tables tbl_branch;*/
/*create table tbl_branch
(
    branchID int(9) ,
    br_name varchar (12) not null unique key,
    br_city varchar (12) not null default 'Dhaka', 
    br_assets double not null default 1.0,
    br_createdOn timestamp not null default now(),
    primary key (branchID),
    unique key(br_name)

);

--show tables;
--desc tbl_branch;*/
/*create table tbl_account
(
    accountNO varchar(10),
    ac_type enum('current','savings','FDR') not null default'current',
    ac_balance double not null default 500,
    branchID int not null,
    primary key(accountNO)
);

show tables;
desc tbl_account;*/


---insert statement
/*insert into tbl_account(accountNO,ac_type,ac_balance,branchID) values
('353','current',50000.55,5),
('4343','savings', 647777.6,88),
('6565','FDR',8675.7,44);

select * from tbl_account;*/

/*insert into tbl_branch(branchID, br_name,br_city,br_assets)VALUES
('353','sylhet','sylhet',45.5),
('88','zindabazar','sylhet',34.4),
('44','shibgonj','Sylhet',87.6),
('33','dh','Dhaka',56.6),
('54','dhaka','Dhaka',87.7);

select * from tbl_branch;

select distinct br_city from tbl_branch;*/



