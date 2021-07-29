-- 1.
-- Consider the data set bigquery-public-data.new_york.citibike_trips , and the column tripduration which gives the length of the trip in seconds. Use distinct
-- tripduration and ORDER BY to find how long the longest ride was in seconds.

SELECT distinct tripduration
FROM `bigquery-public-data.new_york.citibike_trips`
ORDER BY tripduration desc
LIMIT 10

-- 2.
-- How many distinct birth_year values are there in the bigquery-public-data.new_york.citibike_trips data set?

SELECT count(distinct birth_year)
FROM `bigquery-public-data.new_york.citibike_trips`

-- 3.

Use the DISTINCT and ORDER BY on the table bigquery-public-data.new_york.citibike_trips , to find the smallest (oldest) birth_year.
SELECT DISTINCT birth_year
FROM `bigquery-public-data.new_york.citibike_trips`
ORDER BY birth_year ASC

-- 4.

Use DISTINCT and ORDERBY to find the largest (most recent) birth_year from the data set bigquery-public-data.new_york.citibike_trips .
SELECT DISTINCT birth_year
FROM `bigquery-public-data.new_york.citibike_trips`
ORDER BY birth_year DESC

-- 5.
-- What are all the possible values from the column usertype in the dataset bigquery-public-data.new_york.citibike_trips?
SELECT DISTINCT usertype FROM
`bigquery-public-data.new_york.citibike_trips`

-- 6.
-- What were the two dates of the most recent and oldest stoptimes in the dataset bigquery-public-data.new_york.citibike_trips ?

SELECT stoptime
FROM `bigquery-public-data.new_york.citibike_trips`
ORDER BY stoptime desc LIMIT 1

-- 7.
-- What are the distinct values from the column gender in the table bigquery-public-data.new_york.citibike_trips?

SELECT DISTINCT gender
FROM `bigquery-public-data.new_york.citibike_trips`
ORDER BY gender ASC

-- 8.
-- How many records would this query return?

SELECT
state
FROM
`bigquery-public-data.usa_names.usa_1910_current`
ORDER BY
state ASC
-- Probably a lot! It will return the same as using count(*) because there is no limit on the query.

