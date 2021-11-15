create database library;
CREATE TABLE book(
    book_id int(10) PRIMARY key AUTO_INCREMENT,
    title varchar(50) not null ,
    price float(10) not null,
    pub_id int(10) not null,
    category_id int (4) not null
);
CREATE TABLE borrowing_book( member_id int (10), 
book_id int(10) ,
 borrow_date DATETIME ,
 due_date DATETIME not null,
 return_date DATETIME not null,
 PRIMARY KEY (member_id,book_id,borrow_date) );

CREATE TABLE member( member_id int (10) PRIMARY key AUTO_INCREMENT, 
name varchar(30) not null ,
 address varchar(100) not null ,
 join_date DATETIME not null);

CREATE TABLE category( category_id int (4) PRIMARY key AUTO_INCREMENT, 
name varchar(30) not null 
 );
 CREATE TABLE publisher ( pub_id int(10) PRIMARY key AUTO_INCREMENT,
 name varchar(30) not null,
 address varchar (100) not null
  );

ALTER TABLE book ADD FOREIGN KEY (pub_id) REFERENCES publisher(pub_id);
ALTER TABLE book ADD FOREIGN KEY (category_id) REFERENCES category(category_id);
ALTER TABLE borrowing_book ADD FOREIGN KEY (member_id) REFERENCES member(member_id);
ALTER TABLE borrowing_book ADD FOREIGN KEY (book_id) REFERENCES book(book_id);


