CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;


-- Create the Authors table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL
);



-- Create the Books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(authod_id)
);


-- Create the customer table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215),
    address TEXT
);


-- Create the Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT
    order_date DATE
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


--Create the orderdetail table
CREATE TABLE OrderDetails (
    orderdetail_id INT PRIMARY KEY AUTO_INCREMENT,
    quantity DOUBLE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)

)
