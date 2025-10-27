CREATE TABLE categories (
    id   INT PRIMARY KEY,
    name VARCHAR2(100) NOT NULL
);

CREATE TABLE products (
    id           INT PRIMARY KEY,
    name         VARCHAR2(255) NOT NULL,
    price        NUMBER(10, 2),
    category_id  INT,
    FOREIGN KEY (category_id) REFERENCES categories(id),
    CHECK (price >= 0)
);