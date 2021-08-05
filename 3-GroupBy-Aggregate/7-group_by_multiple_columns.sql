-- Grouping By Multiple Columns Examples

SELECT
  start_station_name,
  end_station_name,
  COUNT(DISTINCT trip_id) num_bike_rides,
  ROUND(AVG(duration_sec)/60,2) AS avg_trip_duration_minutes
FROM
  `bigquery-public-data.san_francisco.bikeshare_trips`
GROUP BY
  start_station_name,
  end_station_name
ORDER BY
  num_bike_rides desc

-- The number of fire_brigade_service_calls by incident_group by property_category by date_of_call.

SELECT
date_of_call,
incident_group,
property_category,
count(distinct incident_number) as num_calls
FROM
`bigquery-public-data.london_fire_brigade.fire_brigade_service_calls`
GROUP BY
date_of_call,
incident_group,
property_category

