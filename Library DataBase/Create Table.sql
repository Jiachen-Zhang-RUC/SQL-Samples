create table student
(
stu_id int primary key,
stu_name varchar(50) not null,
stu_sex varchar(50) not null,
stu_age int not null,
stu_major varchar(50) not null,
stu_grade varchar(50) not null,
borrow_num int not null default 0,
stu_credibility int not null default 1
);

create table book
(
book_id int primary key,
book_name varchar(50) not null,
book_author varchar(50) not null,
book_company varchar(50) not null, 
book_sort varchar(50) not null,
book_num int not null,
book_record varchar(50) /*图书登记日期*/
);

create table booksort
(
sort_id varchar(50) primary key,
sort_name varchar(50) not null,

);

create table borrow_table
(
stu_id varchar(50) not null,
book_id varchar(50) not null,
borrow_date date,
expect_return_date date,
primary key (stu_id,book_id)  
);

create table return_table
(
stu_id varchar(50) not null,
book_id varchar(50) not null,
borrow_date date,
return_date date,
primary key (stu_id,book_id)
);

create table ticket
(
stu_id varchar(50) not null,
book_id varchar(50) not null,
over_date int,
ticket_fee float,
primary key (stu_id,book_id)
);

create table manager
(
manager_id varchar(50) primary key,
manager_name varchar(50) not null,
manager_age varchar(50) not null,
manager_phone varchar(50) not null
);

