create index index_id on student(stu_id asc);

create index index_name on student(stu_name desc);

create index index_bid on book(book_id);

create index index_brecord on book(book_record);

create index index_sid_bid on borrow_table(stu_id asc, book_id asc);

create index index_sid_bid on return_table(stu_id asc, book_id asc);

create index index_sid_bid on ticket(stu_id asc, book_id asc);

create index index_mid on manager(manager_id);
