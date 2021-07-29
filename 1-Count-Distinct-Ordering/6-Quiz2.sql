/*

1.
Consider the data set bigquery-public-data.new_york.citibike_trips , and the column tripduration which gives the length of the trip in seconds. Use distinct
tripduration and ORDER BY to find how long the longest ride was in seconds.
2.
How many distinct birth_year values are there in the bigquery-public-data.new_york.citibike_trips data set?
3.
Use the DISTINCT and ORDER BY on the table bigquery-public-data.new_york.citibike_trips , to find the smallest (oldest) birth_year.
4.
Use DISTINCT and ORDERBY to find the largest (most recent) birth_year from the data set bigquery-public-data.new_york.citibike_trips .
5.
What are all the possible values from the column usertype in the dataset bigquery-public-data.new_york.citibike_trips?
6.
What were the two dates of the most recent and oldest stoptimes in the dataset bigquery-public-data.new_york.citibike_trips ?
7.
What are the distinct values from the column gender in the table bigquery-public-data.new_york.citibike_trips?
8.
How many records would this query return?
*/
SELECT
state
FROM
`bigquery-public-data.usa_names.usa_1910_current`
ORDER BY
state ASC

