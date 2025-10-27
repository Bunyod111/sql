CREATE TABLE faculties (
    id   INT PRIMARY KEY,
    name VARCHAR2(255)
);

CREATE TABLE groups (
    id         INT PRIMARY KEY,
    name       VARCHAR2(100),
    faculty_id INT,
    FOREIGN KEY (faculty_id) REFERENCES faculties(id)
);

CREATE TABLE students (
    id       INT PRIMARY KEY,
    name     VARCHAR2(100),
    group_id INT,
    FOREIGN KEY (group_id) REFERENCES groups(id)
);

CREATE TABLE teachers (
    id   INT PRIMARY KEY,
    name VARCHAR2(100)
);

CREATE TABLE courses (
    id         INT PRIMARY KEY,
    name       VARCHAR2(255),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);

CREATE TABLE student_courses (
    student_id INT,
    course_id  INT,
    grade      INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id),
    CHECK (grade >= 1 AND grade <= 5)
);