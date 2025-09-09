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

