-- select database(), now(), version();

-- show databases;


--source G:/My Drive/Mu_course_content/Spring_2021/db_bankinfo.sql;


--show tables;

--bank schema---

-- branch(branchNo#, name, city, street, assets)
-- customer(customerID#,name,city,street,branchNo*)
-- account(accountNo#,balance,type)
-- loan(loanNo#,amount,type)


-- depositor(accountNo#,customerID#,dateAt)
-- borrower (loanNo#,customerID#, dateAt)


-------------------------------------------------------

-- create table tbl_branch(
-- 	branchNo varchar(5) primary key, -- this the first way to setup primary key
-- 	br_name varchar(50),
-- 	br_city varchar(50),
-- 	br_street varchar(100),
-- 	br_assets double
-- );

--show tables;

--describe tbl_branch;

-- show create table tbl_branch;
--the second way to setup primary key

-- create table tbl_customer (
-- 	customerID integer auto_increment primary key ,
-- 	cs_name varchar(100) NOT NULL ,
-- 	cs_city varchar(50) NOT NULL Default 'Dhaka',
-- 	cs_street varchar(100) NOT NULL,
-- 	branchNo varchar(5)
-- 	)engine = innoDB;


---drop table tbl_customer;

-- insert into tbl_branch (branchNO,br_name,br_city,br_street,br_assets) values 
-- ("br004", "Lamabazar Branch","Sylhet","Lamabazar",8.5),
-- ("br005", "Subidbazar Branch","Sylhet","Subidbazar",5.2);

-- select * from tbl_branch;

-- Alter table tbl_branch
	--ADD column br_type enum('corporate','local','foreign exchange') not null default "local";


-- the third way to setup primary key

-- Alter table tbl_customer
-- 	add constraint pk_tbl_customer 
-- 		primary key (customerID);

-- update tbl_customer set branchNo = "br003" where customerID= 4;


-- Alter table tbl_customer
-- 	add constraint fk_tbl_customer_tbl_branch 
-- 		foreign key (branchNo) 
-- 			references tbl_branch (branchNo)
-- 			on update cascade;


-- insert into tbl_customer (cs_name,cs_city,cs_street,branchNo) values ("G","Dhaka","Gulshan","br003"),
-- 								("H","Dhaka","Malibag","br001"),
-- 								("I","Sylhet","Zindabazar","br002");


-- select * from tbl_branch where br_city = "Sylhet" order by  br_street desc, br_assets;


-- Q. Find the custormer id and name who leaves in Sylhet.
--Ans2-- 
-- select customerID, cs_name from tbl_customer where cs_city = "Sylhet";

-- Q. Find the id and name of all customers who have an account in any branch located in Sylhet 
--Ans3--

-- select tbl_customer.customerID, tbl_customer.cs_name from tbl_branch, tbl_customer where tbl_branch.branchNo= tbl_customer.branchNo 
-- and tbl_branch.br_city ="Sylhet";
-- select * from  tbl_branch as br, tbl_customer as cs
-- where 
-- br.branchNo = cs. branchNo and 
-- br.br_city ="Sylhet";


-- Q. Find account details of Mr. Rajib who has deposited money in 'Uttara branch'.
--Ans 4---

-- select cs.*, br.br_name as branchName from  tbl_branch as br,tbl_account as ac, tbl_customer as cs, tbl_depositor as de 
-- where 
-- br.branchNo = cs. branchNo and 
-- cs.customerID = de.customerID and
-- de.accountNo = ac.accountNo and 
-- br.br_name ="Uttora Branch";
-- cs_name = "Razib";


-- Q. Find the total number of accounts, average maximum and minimum assets of all branches of each city. 
-- --Ans 5 ---

-- create view vw_average_assets as
-- (
-- select count(b.br_name) as totalNumber, avg(b.br_assets) as avgAssets ,
-- max(b.br_assets) as maxAssets ,
-- min(b.br_assets) as minAssets , 
-- br_city from tbl_branch as b 
-- group by br_city);
-- select * from vw_average_assets where avgAssets > 10; 



-- -- left join example

-- select * from  tbl_branch as br left join tbl_customer as cs on (br.branchNo = cs. branchNo)

-- order by br.br_name; 


-- Delimiter $$

-- create procedure sp_getAllCustomer()
-- BEGIN

-- 	Select * from tbl_customer;


-- End $$
-- 

-- create procedure sp_getTotalCustomer(IN pr_city varchar(50), OUT pr_total INT)
-- BEGIN

-- 	Declare cs_total INT default 0; 
-- 	Declare cs_by_city INT default 0;

-- 	Select count(cs_name) into cs_total from tbl_customer;
	
-- 	Select count(cs_name) into cs_by_city from tbl_customer where cs_city = pr_city;

-- 	SET pr_total = (cs_by_city*100)/cs_total;

-- End $$


-- call sp_getTotalCustomer('Sylhet',@total);
-- select @total;


-- SHOW PROCEDURE status;
