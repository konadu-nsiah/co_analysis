-- checking states with co concentration above 1.5
SELECT STATE, DAILY_AQI_VALUE AS AQI
FROM co2_data
WHERE Daily_Max_8_hour_CO_Concentration >= 1.5;

-- checking number of complete data recorded versus imcomplete data

SELECT COUNT(PERCENT_COMPLETE)
FROM co2_data
WHERE PERCENT_COMPLETE = 100;

SELECT COUNT(PERCENT_COMPLETE)
FROM co2_data
WHERE PERCENT_COMPLETE < 100

