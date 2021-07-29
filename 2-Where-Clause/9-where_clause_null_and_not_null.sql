SELECT
  COUNT(*) AS count1, -- the number of records 
  COUNT(dropoff_location) AS count2 -- the number of records where dropoff_location is not null
FROM
  `bigquery-public-data.chicago_taxi_trips.taxi_trips`


SELECT
  COUNT(*) AS count1, -- the number of records 
  COUNT(dropoff_location) AS count2 -- the number of records where dropoff_location is not null
FROM
  `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE
  dropoff_location IS NOT NULL


SELECT
  COUNT(*) AS count1, -- the number of records 
  COUNT(dropoff_location) AS count2 -- the number of records where dropoff_location is not null
FROM
  `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE
  dropoff_location IS NULL

