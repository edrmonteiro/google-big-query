SELECT
  COUNT(DISTINCT gender) AS distinct_gender_count,
  COUNT(DISTINCT year) AS distinct_year_count,
  COUNT(DISTINCT state) AS distinct_state_count,
  COUNT(DISTINCT name) AS distinct_name_count,
  COUNT(*) AS num_records,
  COUNT(name) AS cnt
FROM
  `bigquery-public-data.usa_names.usa_1910_2013`
  