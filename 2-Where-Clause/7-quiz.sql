/*
For all the questions in this quiz, please use the data from the following table:
bigquery-public-data.chicago_taxi_trips.taxi_trips
In this quiz you will practice where clauses on a TIMESTAMP field.
You will also practice the extract function to extract a feature (such as hour for example) from a TIMESTAMP column. In this quiz you will also be counting taxi trips.
You can use the column unique_key, which is a unique identifier for each trip, along with count distinct to count the number of taxi trips in a given scenario. For
example:
*/

SELECT COUNT(DISTINCT unique_key) AS num_trips
FROM `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE extract(week from trip_start_timestamp) = 52

-- 1.
-- How many taxi trips started on 2015-12-31?
-- 2.
-- How many taxi trips started between 2015-12-23 and 2015-12-27? Include these two dates in your query.
-- 3.
-- How many trips started in the hours of (9,10,11,12) for all the years in the dataset except for 2016? That is, exclude any trip in the year 2016 from your answer.
-- 4.
-- How many trips started within the 9th hour of the day (i.e. hour = 9) on October 31st from all the years strictly before 2017?
-- 5.
-- Using only the years 2014 and 2016, how many trips started in the 16th week all together from both these two years?

