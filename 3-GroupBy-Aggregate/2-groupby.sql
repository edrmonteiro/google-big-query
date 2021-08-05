-- Grouping By Column Returns Unique List
SELECT
    payment_type
FROM
    TABLE
GROUP BY
    payment_type
ORDER BY
    payment_type

-- Aggregate Functions
-- MAX
-- we find the maximum trip_total for each of the three payment_type groups.

SELECT
    payment_type,
    MAX(trip_total) as max_trip_total
FROM
    TABLE
GROUP BY
    payment_type
ORDER BY
    payment_type

-- MIN
-- similar to the MAX except that it returns the minimum value of the numeric column.
SELECT
    payment_type,
    MIN(trip_total) as min_trip_total
FROM
    TABLE
GROUP BY
    payment_type
ORDER BY
    payment_type


-- AVG
-- The AVG function computes the average value for the numeric column.
SELECT
    payment_type,
    AVG(trip_total) as avg_trip_total
FROM
    TABLE
GROUP BY
    payment_type
ORDER BY
    payment_type

-- SUM
-- The SUM function computes the sum of all the values for the numeric column.

SELECT
    payment_type,
    SUM(trip_total) as sum_trip_total
FROM
    TABLE
GROUP BY
    payment_type
ORDER BY
    payment_type

-- COUNT
-- The count(*) function counts the number of records/rows.

SELECT
    payment_type,
    count(distinct unique_key) as num_trips
FROM
    TABLE
GROUP BY
    payment_type
ORDER BY
    payment_type


-- Using Multiple Aggregation Functions in Single Query
-- You can use multiple aggregate functions within a single query.
-- When grouping by a single column, all the aggregate functions get applied across the same groups for the column.
-- Run this query in Big Query and make sense of the results:

SELECT
  payment_type,
  COUNT(DISTINCT unique_key) AS num_trips,
  SUM(trip_total) AS sum_trip_total,
  AVG(trip_total) AS avg_trip_total,
  MAX(trip_total) AS max_trip_total,
  MIN(trip_total) AS min_trip_total
FROM
  `bigquery-public-data.chicago_taxi_trips.taxi_trips`
GROUP BY
  payment_type
ORDER BY
  payment_type

-- Group By and Where Clause Together
-- The WHERE clause comes before the GROUP BY
-- The WHERE clause gets applied first to the table to filter it, then the GROUP BY and Aggregates get applied.
-- you can also order by one of the aggregated results. Here we order by num_trips
SELECT
  payment_type,
  COUNT(DISTINCT unique_key) AS num_trips,
  SUM(trip_total) AS sum_trip_total,
  AVG(trip_total) AS avg_trip_total,
  MAX(trip_total) AS max_trip_total,
  MIN(trip_total) AS min_trip_total
FROM
  `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE
  payment_type IN ('Cash', 'Credit Card')
GROUP BY
  payment_type
ORDER BY
  num_trips DESC

-- Applying a Filter on Top of the Aggregated Results Using HAVING
-- the HAVING statement can only be used when performing a GROUP BY.
-- It is essentially like performing a WHERE CLAUSE after the Aggregation is applied to the different groups.
-- For example, suppose we wanted to calculate the number of trips for each payment_type. However, when returning the aggregated results we only want to return records for which the total number of trips was greater than 300,000. Then we could use a HAVING statement like this:
SELECT
  payment_type,
  COUNT(DISTINCT unique_key) AS num_trips
FROM
  `bigquery-public-data.chicago_taxi_trips.taxi_trips`
GROUP BY
  payment_type
HAVING
  num_trips > 300000
ORDER BY
  num_trips DESC