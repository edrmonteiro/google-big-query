SELECT
  EXTRACT(hour FROM starttime) AS hour,
  count(*) as total_number_of_bike_rides
FROM
  `bigquery-public-data.new_york_citibike.citibike_trips`
where 
  starttime is not null  
GROUP BY
  hour
ORDER BY
  hour