-- List all books
SELECT * FROM Books;

-- List all members who joined after Feb 2023
SELECT * FROM Members
WHERE join_date > '2023-02-01';

-- Find which member borrowed "The Great Gatsby"
SELECT m.first_name, m.last_name, b.title
FROM Borrowed_Books bb
JOIN Members m ON bb.member_id = m.member_id
JOIN Books b ON bb.book_id = b.book_id
WHERE b.title = 'The Great Gatsby';

-- Find books not yet returned
SELECT m.first_name, m.last_name, b.title, bb.borrow_date
FROM Borrowed_Books bb
JOIN Members m ON bb.member_id = m.member_id
JOIN Books b ON bb.book_id = b.book_id
WHERE bb.return_date IS NULL;

-- Count how many books each member has borrowed
SELECT m.first_name, m.last_name, COUNT(bb.borrow_id) AS total_borrowed
FROM Borrowed_Books bb
JOIN Members m ON bb.member_id = m.member_id
GROUP BY m.member_id
ORDER BY total_borrowed DESC;
