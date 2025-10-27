CREATE TABLE customers (
    id    INT PRIMARY KEY,
    name  VARCHAR2(100),
    email VARCHAR2(255),
    UNIQUE (email)
);

CREATE TABLE orders (
    id          INT PRIMARY KEY,
    amount      NUMBER(10, 2),
    order_date  DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);