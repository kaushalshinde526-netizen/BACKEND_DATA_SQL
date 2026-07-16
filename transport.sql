DROP DATABASE IF EXISTS transport_db;

CREATE DATABASE IF NOT EXISTS transport_db;

USE transport_db;

CREATE TABLE IF NOT EXISTS vehicles
(
    vehicle_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    vehicle_name VARCHAR(20) NOT NULL
) AUTO_INCREMENT = 1001;

DESC vehicles;

ALTER TABLE vehicles
ADD COLUMN type ENUM('Car','Truck','Bus');

DESC vehicles;

ALTER TABLE vehicles
ADD COLUMN year YEAR;

DESC vehicles;

ALTER TABLE vehicles
ADD COLUMN features SET('AC','GPS','MusicSystem','Camera') BEFORE year;

DESC vehicles;

ALTER TABLE vehicles
ADD COLUMN mileage DECIMAL(5,2);

DESC vehicles;

ALTER TABLE vehicles
MODIFY vehicle_name VARCHAR(50);

DESC vehicles;

ALTER TABLE vehicles
CHANGE vehicle_name model_name VARCHAR(50) NOT NULL;

DESC vehicles;

ALTER TABLE vehicles
MODIFY type ENUM('Car','Truck','Bus','Cycle');

DESC vehicles;

ALTER TABLE vehicles
DROP COLUMN features;

DESC vehicles;

INSERT INTO vehicles (model_name, type, year, mileage)
VALUES
('Swift', 'Car', 2023, 22.50),
('Actros', 'Truck', 2021, 8.75),
('Volvo 9400', 'Bus', 2022, 5.90),
('Hero Sprint', 'Cycle', 2024, 0.00);

SELECT * FROM vehicles;
