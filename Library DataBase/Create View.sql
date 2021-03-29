create view stu_cs as
select *
from student
where stu_major = 'cs';

create view stu_borrow as
select student.stu_id, book.book_id, student.stu_name, book.book_name, borrow_date, dateadd(day,30,borrow_date) as expect_return_date
from student, book, borrow_table
where student.stu_id = borrow_table.stu_id and book.book_id = borrow_table.book_id;

create view cs_book as
select *
from book
where book.book_sort in
(select booksort.sort_name
from booksort
where sort_id = 1);

create view stu_borrow_return as
select student.stu_id, student.stu_name, book.book_id,
book.book_name,return_table.borrow_date,return_table.return_date
from student, book, return_table
where student.stu_id = return_table.stu_id and book.book_id = return_table.book_id;
