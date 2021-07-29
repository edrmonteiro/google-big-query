-- Write queries to figure out the following questions. All the questions deal with the dataset bigquery-public-data.austin_bikeshare.bikeshare_trips .
-- 1.
-- How many unique rides involved the bike with a bikeid of 446.

SELECT COUNT(*) AS num_rides
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE bikeid='446'

-- 2.
-- For the bike with bikeid='446', what was the time of its longest ride in minutes?

SELECT duration_minutes
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE bikeid = '446'
ORDER BY duration_minutes DESC
LIMIT 1

-- 3.
-- How many bike rides started at the station Zilker Park West.

SELECT count(*) AS num_rides
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE start_station_name = "Zilker Park West"

-- 4.
-- How many bike rides started at "Capital Metro HQ - East 5th at Broadway" and ended at "ACC - West & 12th Street".

SELECT COUNT(*) AS num_rides
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE start_station_name = "Capital Metro HQ - East 5th at Broadway"
AND end_station_name = "ACC - West & 12th Street"

-- 5.
-- How many bike rides started and ended at the same location? HINT: You can use a where clause and set the start location = end location.

SELECT COUNT(*) AS num_rides
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE start_station_name = end_station_name

-- 6.
-- How many rides had a trip duration of exactly one hour or less?

SELECT COUNT(*) AS num_rides
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE duration_minutes <= 60

-- 7.
-- How many bike rides had a trip duration between 1 and 2 hours (including both 1 and 2 hour trips)?

SELECT COUNT(*) AS num_rides
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE duration_minutes >= 60 AND duration_minutes <= 120

-- 8.
-- How many bike rides were strictly greater than 3 hours?

SELECT COUNT(*) AS num_rides
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE duration_minutes > 3*60

-- 9.
-- Consider the following two types of bike rides:
-- Started at "ACC - West & 12th Street" and ended at "Zilker Park West"
-- Started at "Nueces @ 3rd" and ended at "Toomey Rd @ South Lamar"
-- Of all these types of bike rides, what was the shortest trip duration in minutes?

SELECT duration_minutes
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE (start_station_name = "ACC - West & 12th Street" AND end_station_name = "Zilker Park West")
OR (start_station_name = "Nueces @ 3rd" AND end_station_name = "Toomey Rd @ South Lamar")
ORDER BY duration_minutes ASC LIMIT 1

-- 10.
-- The subscriber_type column is a string type column. You can see all the different distinct strings in this column from this query:

SELECT
DISTINCT subscriber_type
FROM
`bigquery-public-data.austin_bikeshare.bikeshare_trips`

-- How many of these distinct strings contain the pattern "B-cycle".
-- You could count them manually but that is not a scalable solution.
-- You can answer this question using a LIKE statement.

SELECT COUNT(DISTINCT subscriber_type) AS num_subscriber_type
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE subscriber_type LIKE '%B-cycle%'

-- 11.
-- Consider all the bike rides with a subscriber_type that starts with the letter "W". How many bike rides is this?

SELECT count(*)
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE subscriber_type LIKE 'W%'

-- 12.
-- How many bike rides meet the following conditions all together:
-- subscriber_type column contains the pattern string "Member"
-- start_station_id is 3792
-- end_station_name is "23rd & Rio Grande"
-- The duration is between 128 and 539 minutes (but not including 128 and 539).

SELECT COUNT(*) FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
WHERE subscriber_type LIKE '%Member%'
AND start_station_id = 3792
AND end_station_name = "23rd & Rio Grande"
AND duration_minutes > 128
AND duration_minutes < 539
