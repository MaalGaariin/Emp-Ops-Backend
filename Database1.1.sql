CREATE DATABASE empops;
USE empops;

CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    second_name VARCHAR(50),
    last_name VARCHAR(50) NOT NULL,
    age INT,
    sex VARCHAR(10),
    salary DECIMAL(10, 2),
    employment_status VARCHAR(20),
    team VARCHAR(50),
    role VARCHAR(50)
);

CREATE TABLE leaves (
    leave_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    date DATE,
    reason VARCHAR(255),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

CREATE TABLE authentication (
    employee_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    account_status INT,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

CREATE TABLE announcement (
    announcement_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    title VARCHAR(255),
    image_url VARCHAR(255),
    text TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

