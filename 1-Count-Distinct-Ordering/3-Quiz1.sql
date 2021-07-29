/*
Write SQL queries and check the results in the Big Query Console for each of these questions.
1.
How many rows are in the data set bigquery-public-data.new_york.311_service_requests ?
2.
In the data set, bigquery-public-data.new_york.311_service_requests , how many total records are there in the agency_name column?
3.
In the data set, bigquery-public-data.new_york.311_service_requests , how many distinct agency names are there in the agency_name column?
4.
Which of the following queries will execute without any errors:
a)
*/
SELECT
COUNT(DISTINCT city) AS distinct_city_count
COUNT(city) AS number_city_records
FROM
`bigquery-public-data.new_york.311_service_requests`
--b)
SELECT
COUNT(DISTINCT city) AS distinct_city_count,
COUNT(city) AS number_city_records
FROM
`bigquery-public-data.new_york.311_service_requests`
--c)
SELECT
COUNT(DISTINCT city) AS distinct_city_count,
COUNT(city) AS number_city_records,
FROM
`bigquery-public-data.new_york.311_service_requests`
--d)
SELECT
COUNT(DISTINCT city), AS distinct_city_count,
COUNT(city) AS number_city_records
FROM
`bigquery-public-data.new_york.311_service_requests`
--e)

SELECT
COUNT(DISTINCT city) AS distinct_city_count,
COUNT(city) AS number_city_records
FROM
bigquery-public-data.new_york.311_service_requests
--5.
Which of the following data sets has the most rows?
bigquery-public-data.nppes.healthcare_provider_taxonomy_code_set
bigquery-public-data.ncaa_basketball.mbb_historical_teams_seasons

