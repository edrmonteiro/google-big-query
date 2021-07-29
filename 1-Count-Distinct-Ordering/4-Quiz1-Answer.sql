--Write SQL queries and check the results in the Big Query Console for each of these questions.
--1.
--How many rows are in the data set bigquery-public-data.new_york.311_service_requests ?
select count(*) from `bigquery-public-data.new_york.311_service_requests`
--2.
--In the data set, bigquery-public-data.new_york.311_service_requests , how many total records are there in the agency_name column?
select count(agency_name) from `bigquery-public-data.new_york.311_service_requests`
--3.
--In the data set, bigquery-public-data.new_york.311_service_requests , how many distinct agency names are there in the agency_name column?
SELECT COUNT(distinct agency_name) FROM `bigquery-public-data.new_york.311_service_requests`
--4. Which of the following queries will execute without any errors:
--e)
--This was is in the wrong one because the quotes are missing around the table name. It should be `bigquery-public-data.new_york.311_service_requests`
SELECT
COUNT(DISTINCT city) AS distinct_city_count,
COUNT(city) AS number_city_records
FROM
bigquery-public-data.new_york.311_service_requests
--5.
--Which of the following data sets has the most rows?
bigquery-public-data.nppes.healthcare_provider_taxonomy_code_set
bigquery-public-data.ncaa_basketball.mbb_historical_teams_seasons
--You can get the solution by checking the results of
select count(*) from `bigquery-public-data.nppes.healthcare_provider_taxonomy_code_set`
select count(*) from `bigquery-public-data.ncaa_basketball.mbb_historical_teams_seasons`
--and seeing which one has more records. At the time of writing this the second table, bigquery-publicdata.ncaa_basketball.mbb_historical_teams_seasons , had a lot more records.

