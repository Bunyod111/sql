CREATE TABLE departments (
    id   INT PRIMARY KEY,
    name VARCHAR2(150)
);

CREATE TABLE employees (
    id             INT PRIMARY KEY,
    name           VARCHAR2(100),
    position       VARCHAR2(100),
    department_id  INT,
    FOREIGN KEY (department_id) REFERENCES departments(id) ON DELETE SET NULL
);