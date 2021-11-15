-- question(1)
SELECT name ,JOIN_date
FROM member 
WHERE join_date >='2000-9-1';
-- Showing rows 0 - 16 (17 total, Query took 0.0012 seconds.)

-- question(2)
SELECT *
FROM member 
WHERE join_date BETWEEN '1995-10-1' AND '2019-10-1';
-- Showing rows 0 - 19 (20 total, Query took 0.0009 seconds.)

-- question(3)
SELECT *
FROM book 
LEFT JOIN publisher on book.pub_id=publisher.pub_id
WHERE  price BETWEEN '15' AND '20' or name='Oxford';
-- Showing rows 0 - 3 (4 total, Query took 0.0017 seconds.)

-- question(4)
SELECT title FROM BOOK 
RIGHT JOIN BORROWING_BOOK 
ON BOOK.book_id=BORROWING_BOOK.book_id 
RIGHT JOIN MEMBER 
ON MEMBER.member_id=BORROWING_BOOK.member_id 
WHERE name = 'Scot Reinger';
-- Showing rows 0 - 1 (2 total, Query took 0.0035 seconds.)

-- question(5)
SELECT name 
FROM member 
WHERE member_id in (SELECT member_id FROM borrowing_book WHERE borrow_date BETWEEN '2019-1-1' and '2019-12-30')
-- Showing rows 0 - 2 (3 total, Query took 0.0017 seconds.)