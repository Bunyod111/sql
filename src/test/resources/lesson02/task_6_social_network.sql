CREATE TABLE users (
    id         INT PRIMARY KEY,
    name       VARCHAR2(100),
    email      VARCHAR2(255),
    created_at DATE,
    UNIQUE(email)
);

CREATE TABLE posts (
    id         INT PRIMARY KEY,
    user_id    INT,
    text       VARCHAR2(4000),
    created_at DATE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE comments (
    id         INT PRIMARY KEY,
    post_id    INT,
    user_id    INT,
    text       VARCHAR2(1000),
    created_at DATE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE
);

CREATE TABLE likes (
    user_id INT,
    post_id INT,
    PRIMARY KEY (user_id, post_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE
);