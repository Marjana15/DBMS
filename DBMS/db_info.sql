select user(),now(),DATABASE()

show databasese;

CREATE Table db_info;
show databases;
SELECT DATABASE();

use db_info;

create table tbl_account
(
    AccountNo int(9) ,
    BranchID int(12) not null, 
    acc_account double not null default 1.0,
    primary key(AccountNo)
);
show tables;

CREATE table tbl_branch
(
    BranchID int(9) primary key,
    br_name varchar(12) not null,
    br_city varchar(15) not null DEFAULT 'SYLHET',
    br_assets double not null
);

insert into tbl_account(AccountNo,BranchID,acc_account) VALUES
('211','134', 22.22),
('233','344', 33.33);