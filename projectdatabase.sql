CREATE DATABASE IS436;

USE IS436;

-- Step 1: Create the User table
CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age INT,
    gender ENUM('Male', 'Female', 'Other')
);

-- Step 2: Create the HealthMetrics table, linked to User
CREATE TABLE HealthMetrics (
    metric_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    heart_rate INT,
    steps INT,
    sleep_duration FLOAT,
    calories INT,
    timestamp DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

-- Step 3: Create the WearableDevice table, linked to User
CREATE TABLE WearableDevice (
    device_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL UNIQUE,
    device_type VARCHAR(50),
    manufacturer VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

-- Step 4: Create the Goal table, linked to User
CREATE TABLE Goal (
    goal_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    goal_type ENUM('Steps', 'Calories', 'Exercise Duration') NOT NULL,
    target_value FLOAT NOT NULL,
    status ENUM('Active', 'Completed', 'Inactive') NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

-- Step 5: Create the HealthcareProvider table
CREATE TABLE HealthcareProvider (
    provider_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100),
    contact_info VARCHAR(150)
);

-- Step 6: Create the DataSharingConsent table, linking User and HealthcareProvider
CREATE TABLE DataSharingConsent (
    consent_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    provider_id INT NOT NULL,
    shared_data VARCHAR(255),
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (provider_id) REFERENCES HealthcareProvider(provider_id)
);

-- Sample Insert Statements

-- Insert into User table
INSERT INTO User (name, email, age, gender) 
VALUES 
('Alice Johnson', 'alice.j@example.com', 28, 'Female'),
('Bob Smith', 'bob.smith@example.com', 35, 'Male');

-- Insert into HealthMetrics table
INSERT INTO HealthMetrics (user_id, heart_rate, steps, sleep_duration, calories, timestamp) 
VALUES 
(1, 80, 12000, 7.2, 2300, NOW()),
(2, 70, 9000, 6.5, 2100, NOW());

-- Insert into WearableDevice table
INSERT INTO WearableDevice (user_id, device_type, manufacturer) 
VALUES 
(1, 'SmartWatch', 'Fitbit'),
(2, 'Fitness Tracker', 'Garmin');

-- Insert into Goal table
INSERT INTO Goal (user_id, goal_type, target_value, status) 
VALUES 
(1, 'Steps', 10000, 'Active'),
(2, 'Calories', 2000, 'Completed');

-- Insert into HealthcareProvider table
INSERT INTO HealthcareProvider (name, specialty, contact_info) 
VALUES 
('Dr. Emily Chen', 'Cardiology', 'emily.chen@healthcare.com'),
('Dr. James Lee', 'Endocrinology', 'james.lee@healthcare.com');

-- Insert into DataSharingConsent table
INSERT INTO DataSharingConsent (user_id, provider_id, shared_data) 
VALUES 
(1, 1, 'heart_rate, steps'),
(2, 2, 'calories, sleep_duration');
