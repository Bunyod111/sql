CREATE TABLE locations (
    city_name   VARCHAR2(100),
    region_name VARCHAR2(100),
    PRIMARY KEY (city_name)
);

CREATE TABLE products (
    id    INT PRIMARY KEY,
    name  VARCHAR2(255),
    price NUMBER(10, 2)
);

CREATE TABLE customers (
    id            INT PRIMARY KEY,
    name          VARCHAR2(255),
    email         VARCHAR2(255),
    customer_city VARCHAR2(100),
    FOREIGN KEY (customer_city) REFERENCES locations(city_name)
);

CREATE TABLE orders (
    id          INT PRIMARY KEY,
    order_date  DATE,
    customer_id INT,
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