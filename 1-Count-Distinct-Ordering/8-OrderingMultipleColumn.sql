SELECT
  DISTINCT 
  borough,
  major_category,
  minor_category
FROM
  `bigquery-public-data.london_crime.crime_by_lsoa`
ORDER BY
  borough,
  major_category,
  minor_category

  