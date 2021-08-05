SELECT
  major_category,
  SUM(value) AS num_crimes
FROM
  `bigquery-public-data.london_crime.crime_by_lsoa`
GROUP BY
  major_category
ORDER BY
  num_crimes DESC

  