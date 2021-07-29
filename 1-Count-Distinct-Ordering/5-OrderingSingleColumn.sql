-- we wanted to return the distinct set of years, starting with the most recent,from the USA names data set we would run this query:
SELECT
  DISTINCT year
FROM
  `bigquery-public-data.usa_names.usa_1910_current`
ORDER BY
  year DESC

--if we wanted to return a list of the first 10 names sorted in alphabetical order we could execute this query
SELECT
  DISTINCT name
FROM
  `bigquery-public-data.usa_names.usa_1910_current`
ORDER BY
  name ASC
LIMIT
  10

--If we wanted to see the last 100 names we could execute
SELECT
  DISTINCT name
FROM
  `bigquery-public-data.usa_names.usa_1910_current`
ORDER BY
  name DESC
LIMIT
  100

