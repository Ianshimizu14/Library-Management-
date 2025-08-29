-- Insert Books
INSERT INTO Books (title, author, genre, published_year) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925),
('To Kill a Mockingbird', 'Harper Lee', 'Classic', 1960),
('1984', 'George Orwell', 'Dystopian', 1949),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937);

-- Insert Members
INSERT INTO Members (first_name, last_name, join_date) VALUES
('Alice', 'Johnson', '2023-01-15'),
('Bob', 'Smith', '2023-02-20'),
('Charlie', 'Brown', '2023-03-10');

-- Insert Borrowed Books
INSERT INTO Borrowed_Books (member_id, book_id, borrow_date, return_date) VALUES
(1, 2, '2023-03-01', '2023-03-15'),
(2, 1, '2023-03-05', NULL),
(3, 3, '2023-03-07', '2023-03-20');
