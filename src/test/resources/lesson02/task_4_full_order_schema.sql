CREATE TABLE customers (
    id   INT PRIMARY KEY,
    name VARCHAR2(255)
);

CREATE TABLE products (
    id    INT PRIMARY KEY,
    name  VARCHAR2(255),
    price NUMBER(10, 2)
);

CREATE TABLE orders (
    id          INT PRIMARY KEY,
    customer_id INT,
    order_date  DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE TABLE order_items (
    order_id   INT,
    product_id INT,
    quantity   INT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);