-- 데이터베이스 생성
CREATE DATABASE test_db1;

-- 데이터베이스 선택
USE test_db1;

-- Users 테이블 생성
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    id VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(255) NOT NULL,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    department VARCHAR(100) NOT NULL
);

-- Orders 테이블 생성
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    count INT NOT NULL,
    print_type VARCHAR(50),
    toner_type VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Products 테이블 생성
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    stock INT NOT NULL,
    color VARCHAR(100) NOT NULL
);

-- OrderItems 테이블 생성 (주문 내역)
CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL CHECK (quantity > 0), -- 수량은 0보다 커야 함
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
