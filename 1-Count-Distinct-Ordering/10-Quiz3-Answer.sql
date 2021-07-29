SELECT
  DISTINCT homeTeamName,
  awayTeamName
FROM
  `bigquery-public-data.baseball.schedules`
ORDER BY
  homeTeamName,
  awayTeamName

  