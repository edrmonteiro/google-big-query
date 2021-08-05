SELECT
  name,
  SUM(number) AS num_people
FROM
  `bigquery-public-data.usa_names.usa_1910_2013`
WHERE
  gender = 'F'
GROUP BY
  name
HAVING
  num_people > 500000
ORDER BY
  num_people DESC
LIMIT
  100


