SELECT
  homeTeamName,
  ROUND(MAX(duration_minutes)/60,2) AS longest_game_hours,
  ROUND(MIN(duration_minutes)/60,2) AS shortest_game_hours,
  ROUND(AVG(duration_minutes)/60,2) avg_game_hours,
  MAX(attendance) AS largest_attendance,
  MIN(attendance) AS smallest_attendance,
  CAST(ROUND(AVG(attendance),0) AS INT64) AS avg_attendance
FROM
  `bigquery-public-data.baseball.schedules`
GROUP BY
  homeTeamName

  