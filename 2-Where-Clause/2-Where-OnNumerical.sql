-- Equal Operator
-- Return the number of records where the tripduration was equal to 432 seconds.

SELECT
  count(*) as num_bike_rides
FROM
  `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE
    tripduration = 432 
Not Equal Operator

-- Return the number of records where the tripduration was not equal to 432 seconds.

SELECT
  COUNT(*) AS num_bike_rides
FROM
  `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE
  tripduration != 432

-- Less Than
-- Return the number of records where the tripduration was less than 300 seconds.

SELECT
  COUNT(*) AS num_bike_rides
FROM
  `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE
  tripduration < 300

-- Less Than Or Equal
-- Return the number of records where the tripduration was less than or equal to 300 seconds.

SELECT
  COUNT(*) AS num_bike_rides
FROM
  `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE
  tripduration <= 300

-- Greater Than
-- Return the number of records where the tripduration was greater than 24 hours.

SELECT
  COUNT(*) AS num_bike_rides
FROM
  `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE
  tripduration > 24*60*60

-- Greater Than Or Equal
-- Return the number of records where the tripduration was greater than or equal 24 hours.

SELECT
  COUNT(*) AS num_bike_rides
FROM
  `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE
  tripduration >= 24*60*60

-- Combining Multiple Conditions using AND
-- Return the number of records where the tripduration was between 5 hours and 9 hours i.e. greater than or equal to 5 hours and less than or equal to 9 hours.

SELECT
  COUNT(*) AS num_bike_rides
FROM
  `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE
  tripduration >= 5*60*60 AND tripduration <= 9*60*60

-- Combining Multiple Conditions using both AND & OR
-- Return the number of records where the tripduration was between 1 hour and 3 hours OR between 5 and 8 hours. Notice the use of parenthesis around the two statements separated by OR. You need these brackets when chaining together AND and OR conditions within the same clause.

SELECT
  COUNT(*) AS num_bike_rides
FROM
  `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE
  (tripduration >= 1*60*60 AND tripduration <= 3*60*60)
  OR 
  (tripduration >= 5*60*60 AND tripduration <= 8*60*60)

-- IN statement
-- the IN statement can be used to provide a list within a condition. In this example we are counting the records where the tripduration is in the list (60,120).

SELECT
  COUNT(*) AS num_bike_rides
FROM
  `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE
    tripduration IN (60,120)

-- The above query is the same as saying the tripduration is 60 or the trip duration is 120.
-- For example, this query which uses multiple OR statements,

SELECT
  COUNT(*) AS num_bike_rides
FROM
  `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE
    tripduration = 60 or tripduration = 120 or tripduration = 180 or tripduration = 240

-- can be replaced with a query using an IN statement that is easier to write/read.

SELECT
  COUNT(*) AS num_bike_rides
FROM
  `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE
    tripduration IN (60,120,180,240)

-- NOT IN Statement
-- although we did not cover an example in the video (we will do examples in other videos) you can also use use a NOT IN clause. For example, you can do the negation of the above query. Count the number of records where the trip duration was not one of (60,120,180,240).

SELECT
  COUNT(*) AS num_bike_rides
FROM
  `bigquery-public-data.new_york_citibike.citibike_trips`
WHERE
    tripduration NOT IN (60,120,180,240)

