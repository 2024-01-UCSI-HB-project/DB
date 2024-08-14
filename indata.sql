-- 데이터베이스 선택
USE test_db1;

-- Users 테이블에 더미 데이터 삽입
INSERT INTO Users (name, email, department, id, password) VALUES
('John Doe', 'john@example.com', 'Sales', 'jD12', '1234'),
('Jane Smith', 'jane@example.com', 'Marketing', 'JSM123', '5678'),
('Alice Johnson', 'alice@example.com', 'Development', 'AJD019', '0258');

-- Products 테이블에 더미 데이터 삽입
INSERT INTO Products (name, stock, color) VALUES
('Product A', 100, 'Red'),
('Product B', 200, 'Blue'),
('Product C', 300, 'Green');

-- Orders 테이블에 더미 데이터 삽입 (count 컬럼을 사용하여 수정)
INSERT INTO Orders (user_id, count, print_type, toner_type) VALUES
(1, 2, 'Color', 'Laser'),
(2, 1, 'Black & White', 'Inkjet'),
(3, 1, 'Color', 'Laser');

-- OrderItems 테이블에 더미 데이터 삽입
INSERT INTO OrderItems (order_id, product_id, quantity) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 1);
