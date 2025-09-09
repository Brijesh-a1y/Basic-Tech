-- Task2

-- Average energy consumed per reading
select avg(EnergyConsumed) as AverageEnergyConsumed
from SmartMeterReadings


-- maximum energy consumed in a single reading
select max(EnergyConsumed) as Maximum_Energy_Consumed
from smartMeterReadings


--only include reading from current year
select *
from SmartMeterReadings
where year(ReadingDateTime) = 2025  