-- Task0 create smart meter database table

-- How to create Database
create database smart_meter_database;

-- How to use database
use smart_meter_database;

-- create table Customers
create table Customers(
	CustomerId int primary key,
	Name varchar(25),
	Address varchar(100),
	Region varchar(5)
)

--create table SmartMeterReadings
create table SmartMeterReadings(
	MeterId varchar(100) primary key,
	CustomerId int,
	Location varchar(50),
	InstalledDate date,
	ReadingDateTime datetime,
	EnergyConsumed float,
	foreign key(CustomerId) references Customers(CustomerId)
)

-- Insert 4 entries in customers table
INSERT INTO Customers (CustomerId, Name, Address, Region) VALUES
(1, 'Amit Singh', '123 Main Street Banaras', 'East'),
(2, 'Anubroto', '456 Haridwar main road Uttarakhand', 'West'),
(3, 'Anubhav', '789 Pine Ln Delhi', 'North'),
(4, 'Ankit', '101 Hero Bahadrabad UttarPradesh', 'South');


--Insert 4 entries in SmartMeterReadings
INSERT INTO SmartMeterReadings (MeterId, CustomerId, Location, InstalledDate, ReadingDateTime, EnergyConsumed) VALUES
('SM-1', 1, '123 Main Street Banaras', '2023-01-15', '2025-09-09 08:30:00', 120.9),
('SM-2', 2, '456 Haridwar main road Uttarakhand', '2023-05-22', '2025-09-09 09:15:00',200.4 ),
('SM-3', 3, '789 Pine Ln Delhi', '2022-11-01', '2025-09-09 10:00:00', 222.1),
('SM-4', 4, '101 Hero Bahadreabad UttarPradesh', '2024-03-10', '2025-09-09 11:45:00', 456.2);

-- Display all the customers
select * 
from Customers

-- Display all the SmartMeterReadings
select *
from SmartMeterReadings

-- How to drop the table 
drop table Customers
drop table SmartMeterReadings