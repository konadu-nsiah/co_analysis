-- checking states with co concentration above 1.5
SELECT  DISTINCT CBSA_NAME
FROM co2_data
ORDER BY Date;

-- Utilising CTE to find the average daily AQI value and maximum 8-hour CO concentration for each state for each month based on the completeness of the data.
-- The average daily aqi value over each month in any instance of whether the data was complete or not provides values which fall under Good in terms of level of
WITH AQI_Month AS(
SELECT
STATE,
EXTRACT(MONTH FROM Date) as month,
AVG(Daily_Max_8_hour_CO_Concentration) AS monthly_CO_concentration,
AVG(DAILY_AQI_VALUE) AS Monthly_AQI
FROM  co2_data
WHERE STATE = 'Alaska' AND DAILY_OBS_COUNT = '24'-- prints out the values for each state specified
GROUP BY month
)
SELECT
month,
STATE,
Monthly_AQI,
monthly_CO_concentration
FROM AQI_Month;


-- Utilizing CTE to check for the number of complete data recorded versus imcomplete data
-- Daily observations counts is directly proportional to the Percent complete. Based on the hours of observations in a day the percentage complete was calculated.
WITH complete_data AS(
SELECT 
COUNT(PERCENT_COMPLETE) as Complete_percentage,
COUNT(DAILY_OBS_COUNT) as Complete_observation
FROM co2_data
WHERE PERCENT_COMPLETE = 100 AND DAILY_OBS_COUNT = 24

),
incomplete_data AS
(
SELECT 
COUNT(PERCENT_COMPLETE) as incomplete_percentage,
COUNT(DAILY_OBS_COUNT) as incomplete_observation
FROM co2_data
WHERE PERCENT_COMPLETE < 100 AND DAILY_OBS_COUNT < 24
)
SELECT Complete_percentage, Complete_observation,incomplete_percentage, incomplete_observation
FROM complete_data, incomplete_data




