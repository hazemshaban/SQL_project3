-- question (1)
SELECT name ,JOIN_date
FROM member 
WHERE join_date >='2000-9-1';

-- question (2)
SELECT *
FROM member 
WHERE join_date BETWEEN '1995-10-1' AND '2019-10-1';

-- question (3)
SELECT *
FROM book 
WHERE (price BETWEEN 15 AND 20) or book.pub_id in (SELECT pub_id FROM publisher WHERE name='Oxford' );
-- anthor solution
SELECT * 
FROM book 
LEFT JOIN publisher on book.pub_id=publisher.pub_id
WHERE  price BETWEEN '15' AND '20' or name='Oxford';


-- question (4)
SELECT title FROM BOOK 
RIGHT JOIN BORROWING_BOOK 
ON BOOK.book_id=BORROWING_BOOK.book_id 
RIGHT JOIN MEMBER 
ON MEMBER.member_id=BORROWING_BOOK.member_id 
WHERE name = 'Scot Reinger';

-- question (5)
SELECT name 
FROM member 
WHERE member_id in (SELECT member_id FROM borrowing_book WHERE borrow_date BETWEEN '2019-1-1' and '2019-12-30')

