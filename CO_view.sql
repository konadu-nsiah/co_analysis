-- created a view to merge the separate tables together
CREATE VIEW CO2_DATA 
AS
SELECT 
alabama.Date, alabama.Source, alabama.Site_ID, alabama.POC, alabama.Daily_Max_8_hour_CO_Concentration, alabama.UNITS, alabama.DAILY_AQI_VALUE, alabama.Site_Name, alabama.DAILY_OBS_COUNT, alabama.PERCENT_COMPLETE, alabama.AQS_PARAMETER_CODE, alabama.AQS_PARAMETER_DESC, alabama.CBSA_CODE, alabama.CBSA_NAME, Alabama.STATE_CODE, alabama.STATE, alabama.COUNTY_CODE, alabama.COUNTY, alabama.SITE_LATITUDE, alabama.SITE_LONGITUDE
FROM co2.alabama
UNION
SELECT 
alaska.Date, alaska.Source, alaska.Site_ID, alaska.POC, alaska.Daily_Max_8_hour_CO_Concentration, alaska.UNITS, alaska.DAILY_AQI_VALUE, alaska.Site_Name, alaska.DAILY_OBS_COUNT, alaska.PERCENT_COMPLETE, alaska.AQS_PARAMETER_CODE, alaska.AQS_PARAMETER_DESC, alaska.CBSA_CODE, alaska.CBSA_NAME, alaska.STATE_CODE, alaska.STATE, alaska.COUNTY_CODE, alaska.COUNTY, alaska.SITE_LATITUDE, alaska.SITE_LONGITUDE
FROM co2.alaska
UNION
SELECT
arizona.Date, arizona.Source, arizona.Site_ID, arizona.POC, arizona.Daily_Max_8_hour_CO_Concentration, arizona.UNITS, arizona.DAILY_AQI_VALUE, arizona.Site_Name, arizona.DAILY_OBS_COUNT, arizona.PERCENT_COMPLETE, arizona.AQS_PARAMETER_CODE, arizona.AQS_PARAMETER_DESC, arizona.CBSA_CODE, arizona.CBSA_NAME, arizona.STATE_CODE, arizona.STATE, arizona.COUNTY_CODE, arizona.COUNTY, arizona.SITE_LATITUDE, arizona.SITE_LONGITUDE
FROM co2.arizona
UNION
SELECT
arkansas.Date, arkansas.Source, arkansas.Site_ID, arkansas.POC, arkansas.Daily_Max_8_hour_CO_Concentration, arkansas.UNITS, arkansas.DAILY_AQI_VALUE, arkansas.Site_Name, arkansas.DAILY_OBS_COUNT, arkansas.PERCENT_COMPLETE, arkansas.AQS_PARAMETER_CODE, arkansas.AQS_PARAMETER_DESC, arkansas.CBSA_CODE, arkansas.CBSA_NAME, arkansas.STATE_CODE, arkansas.STATE, arkansas.COUNTY_CODE, arkansas.COUNTY, arkansas.SITE_LATITUDE, arkansas.SITE_LONGITUDE
FROM co2.arkansas
UNION
SELECT
califonia.Date, califonia.Source, califonia.Site_ID, califonia.POC, califonia.Daily_Max_8_hour_CO_Concentration, califonia.UNITS, califonia.DAILY_AQI_VALUE, califonia.Site_Name, califonia.DAILY_OBS_COUNT, califonia.PERCENT_COMPLETE, califonia.AQS_PARAMETER_CODE, califonia.AQS_PARAMETER_DESC, califonia.CBSA_CODE, califonia.CBSA_NAME, califonia.STATE_CODE, califonia.STATE, califonia.COUNTY_CODE, califonia.COUNTY, califonia.SITE_LATITUDE, califonia.SITE_LONGITUDE
FROM co2.califonia
UNION
SELECT
colorado.Date, colorado.Source, colorado.Site_ID, colorado.POC, colorado.Daily_Max_8_hour_CO_Concentration, colorado.UNITS, colorado.DAILY_AQI_VALUE, colorado.Site_Name, colorado.DAILY_OBS_COUNT, colorado.PERCENT_COMPLETE, colorado.AQS_PARAMETER_CODE, colorado.AQS_PARAMETER_DESC, colorado.CBSA_CODE, colorado.CBSA_NAME, colorado.STATE_CODE, colorado.STATE, colorado.COUNTY_CODE, colorado.COUNTY, colorado.SITE_LATITUDE, colorado.SITE_LONGITUDE
FROM co2.colorado
UNION
SELECT
florida.Date, florida.Source, florida.Site_ID, florida.POC, florida.Daily_Max_8_hour_CO_Concentration, florida.UNITS, florida.DAILY_AQI_VALUE, florida.Site_Name, florida.DAILY_OBS_COUNT, florida.PERCENT_COMPLETE, florida.AQS_PARAMETER_CODE, florida.AQS_PARAMETER_DESC, florida.CBSA_CODE, florida.CBSA_NAME, florida.STATE_CODE, florida.STATE, florida.COUNTY_CODE, florida.COUNTY, florida.SITE_LATITUDE, florida.SITE_LONGITUDE
FROM co2.florida
UNION
SELECT
indiana.Date, indiana.Source, indiana.Site_ID, indiana.POC, indiana.Daily_Max_8_hour_CO_Concentration, indiana.UNITS, indiana.DAILY_AQI_VALUE, indiana.Site_Name, indiana.DAILY_OBS_COUNT, indiana.PERCENT_COMPLETE, indiana.AQS_PARAMETER_CODE, indiana.AQS_PARAMETER_DESC, indiana.CBSA_CODE, indiana.CBSA_NAME, indiana.STATE_CODE, indiana.STATE, indiana.COUNTY_CODE, indiana.COUNTY, indiana.SITE_LATITUDE, indiana.SITE_LONGITUDE
FROM co2.indiana
UNION
SELECT
kansas.Date, kansas.Source, kansas.Site_ID, kansas.POC, kansas.Daily_Max_8_hour_CO_Concentration, kansas.UNITS, kansas.DAILY_AQI_VALUE, kansas.Site_Name, kansas.DAILY_OBS_COUNT, kansas.PERCENT_COMPLETE, kansas.AQS_PARAMETER_CODE, kansas.AQS_PARAMETER_DESC, kansas.CBSA_CODE, kansas.CBSA_NAME, kansas.STATE_CODE, kansas.STATE, kansas.COUNTY_CODE, kansas.COUNTY, kansas.SITE_LATITUDE, kansas.SITE_LONGITUDE
FROM co2.kansas
UNION
SELECT
massachusetts.Date, massachusetts.Source, massachusetts.Site_ID, massachusetts.POC, massachusetts.Daily_Max_8_hour_CO_Concentration, massachusetts.UNITS, massachusetts.DAILY_AQI_VALUE, massachusetts.Site_Name, massachusetts.DAILY_OBS_COUNT, massachusetts.PERCENT_COMPLETE, massachusetts.AQS_PARAMETER_CODE, massachusetts.AQS_PARAMETER_DESC, massachusetts.CBSA_CODE, massachusetts.CBSA_NAME, massachusetts.STATE_CODE, massachusetts.STATE, massachusetts.COUNTY_CODE, massachusetts.COUNTY, massachusetts.SITE_LATITUDE, massachusetts.SITE_LONGITUDE
FROM co2.massachusetts
UNION
SELECT
texas.Date, texas.Source, texas.Site_ID, texas.POC, texas.Daily_Max_8_hour_CO_Concentration, texas.UNITS, texas.DAILY_AQI_VALUE, texas.Site_Name, texas.DAILY_OBS_COUNT, texas.PERCENT_COMPLETE, texas.AQS_PARAMETER_CODE, texas.AQS_PARAMETER_DESC,texas.CBSA_CODE, texas.CBSA_NAME, texas.STATE_CODE, texas.STATE, texas.COUNTY_CODE, texas.COUNTY, texas.SITE_LATITUDE, texas.SITE_LONGITUDE
FROM co2.texas;







