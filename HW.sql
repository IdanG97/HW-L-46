CREATE TABLE user (
    user_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    zip_code VARCHAR(5)
);

INSERT INTO User (user_id, first_name, last_name, city, zip_code) VALUES
(1, 'George', 'Bond', 'Kiriat Ata', 29383),
(2, 'Thomas', 'Perry', 'Tel-Aviv', 98683),
(3, 'James', 'Attias', 'Haifa', 27364),
(4, 'John', 'Newman' ,'Atlit', 98733),
(6, 'Jennifer', 'Danker', 'Ashkelon', 98677),
(7, 'Aaron', 'Ohayon', 'Ashkelon', 98677),
(8, 'Eli', 'Abitbol', 'Ashkelon', 98677),
(9, 'Dudi', 'Levy', 'Ashkelon', 98677),
(10, 'Hary', 'Adams' , 'Eilat', 81812)

CREATE TABLE book (
    id INT NOT NULL PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    writer_id INT,
    type VARCHAR(20),
    price INT
);

INSERT INTO book (id, title, writer_id, type, price) VALUES
(1, 'A Smile in the Mind', 1, 'Fiction', 56),
(2, 'Agents of The East', 2, 'Thriller', 23),
(3, 'Border with A Goal', 4, 'Biography', 5),
(4, 'Union of Dreams', 5, 'Drama', 15),
(5, 'Calling the Mountains', 6, 'Adventure', 24),
(6, 'Changing the Castle', 7, 'Fantasy', 17);

-- 1
SELECT * FROM book;

-- 2
SELECT * FROM book
WHERE price > 20;

-- 3
SELECT * FROM book
ORDER BY price ASC;

-- 4
SELECT * FROM book
WHERE price BETWEEN 5 AND 25;

-- 5
SELECT * FROM book
WHERE title LIKE 'A%';

-- 6
SELECT AVG(price) AS average_price FROM book;

-- 7
SELECT DISTINCT city FROM user;

-- 8
SELECT * FROM user
WHERE first_name LIKE '%i%';
