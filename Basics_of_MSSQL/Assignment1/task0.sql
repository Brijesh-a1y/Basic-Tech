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
	MeterId int primary key,
	CustomerId int,
	Location varchar(50),
	InstalledDate date,
	ReadingDateTime datetime,
	EnergyConsumed float,
	foreign key(CustomerId) references Customers(CustomerId)
)

-- Insert 4 entries in customers table
INSERT INTO Customers (CustomerId, Name, Address, Region) VALUES
(101, 'Amit Singh', '123 Main Street Banaras', 'East'),
(102, 'Anubroto', '456 Haridwar main road Uttarakhand', 'West'),
(103, 'Anubhav', '789 Pine Ln Delhi', 'North'),
(104, 'Ankit', '101 Hero Bahadrabad UttarPradesh', 'South');


--Insert 4 entries in SmartMeterReadings
INSERT INTO SmartMeterReadings (MeterId, CustomerId, Location, InstalledDate, ReadingDateTime, EnergyConsumed) VALUES
(309, 101, '123 Main Street Banaras', '2023-01-15', '2025-09-09 08:30:00', 120.9),
(201, 102, '456 Haridwar main road Uttarakhand', '2023-05-22', '2025-09-09 09:15:00',200.4 ),
(301, 103, '789 Pine Ln Delhi', '2022-11-01', '2024-03-15 10:00:00', 15.50),
(305, 104, '101 Hero Bahadreabad UttarPradesh', '2024-03-10', '2024-06-20 14:30:00', 45);

-- Display all the customers
select * 
from Customers

-- Display all the SmartMeterReadings
select *
from SmartMeterReadings

-- How to drop the table 
drop table Customers
drop table SmartMeterReadings


--task1
-- Fetch all smart meter reading where energy consumed is between 10 and 50 kwh
select *
from SmartMeterReadings
where EnergyConsumed>=10 and EnergyConsumed<=50

-- Fetch all smart meter reading where readingdatetime is b/w '2024-01-01' and '2024-12-31'

select*
from SmartMeterReadings
where ReadingDateTime>='2024-01-01' and ReadingDateTime<='2024-12-31'



-- Fetch all smart meter reading Exclude meter installed after '2024-06-30'

select *
from SmartMeterReadings
where InstalledDate<='2024-06-30'



-- Average energy consumed per reading
select avg(EnergyConsumed) as AverageEnergyConsumed
from SmartMeterReadings


-- maximum energy consumed in a single reading
select max(EnergyConsumed) as Maximum_Energy_Consumed
from SmartMeterReadings

--only include reading from current year
select *
from SmartMeterReadings
where year(ReadingDateTime) = 2025



