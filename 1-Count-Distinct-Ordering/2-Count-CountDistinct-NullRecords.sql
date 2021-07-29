SELECT
  COUNT(*) AS num_rows,
  COUNT(borough) AS borough_count,
  COUNT(DISTINCT borough) AS distinct_borough_count,
  COUNT(contributing_factor_vehicle_3) AS contributing_factor_vehicle_3_count,
  COUNT(contributing_factor_vehicle_1) AS contributing_factor_vehicle_1_count,
  COUNT(DISTINCT contributing_factor_vehicle_1) AS distinct_contributing_factor_vehicle_1_count
FROM
  `bigquery-public-data.new_york_mv_collisions.nypd_mv_collisions`