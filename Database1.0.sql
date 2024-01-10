
-- Create the empops database
CREATE DATABASE IF NOT EXISTS empops;
USE empops;

-- Create the employee table
CREATE TABLE IF NOT EXISTS employee (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
    sex VARCHAR(10),
    salary DECIMAL(10, 2),
    employment_status VARCHAR(20)
);

-- Create the authentication table
CREATE TABLE IF NOT EXISTS authentication (
    employee_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    account_status INT
);

-- Create the announcement table
CREATE TABLE IF NOT EXISTS announcement (
    title VARCHAR(255) PRIMARY KEY,
    image VARCHAR(255),
    text TEXT
);
