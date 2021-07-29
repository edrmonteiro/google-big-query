-- Equal Operator
-- Filter on records where the string column, in this case minor_category, is an exact match of the given string “Harassment”.

SELECT
  COUNT(*) AS num_crimes
FROM
  `bigquery-public-data.london_crime.crime_by_lsoa`
WHERE
  minor_category = "Harassment"

-- Not Equal Operator
-- Filter on records where the string column, in this case minor_category, is not an exact match of the given string “Harassment”.

SELECT
  COUNT(*) AS num_crimes
FROM
  `bigquery-public-data.london_crime.crime_by_lsoa`
WHERE
  minor_category != "Harassment"

-- IN statement
-- Filter on records where the string column, in this case minor_category, is within a given list of strings (“Harassment”, “Assault with Injury”).

SELECT
 COUNT(*) AS num_crimes
FROM
 `bigquery-public-data.london_crime.crime_by_lsoa`
WHERE
 minor_category in ("Harassment", "Assault with Injury")

-- The above query is the same as using multiple OR statements:

SELECT
  COUNT(*) AS num_crimes
FROM
  `bigquery-public-data.london_crime.crime_by_lsoa`
WHERE
  minor_category = 'Harassment' or minor_category = 'Assault with Injury'

-- Like Statement
-- A common technique is to search for a specific pattern within a string column. - You can look for a pattern anywhere in the string by using like '%pattern%' - You can look for a pattern at the end of the string by using like '%pattern' - You can look for a pattern at the start of the string by using like 'pattern%' - The pattern given is any pattern of characters and it’s case sensitive.
-- Here is an example of returning distinct list of records from the minor_category column that contain the pattern Drug anywhere in the string. This query returns Possession Of Drugs, Other Drugs, Drug Trafficking.

SELECT
  distinct minor_category
FROM
  `bigquery-public-data.london_crime.crime_by_lsoa`
WHERE
  minor_category like '%Drug%'

-- Here is an example of returning distinct list of records from the minor_category column that contain the pattern Drug at the start of the string. This query returns Drug Trafficking.

SELECT
  distinct minor_category
FROM
  `bigquery-public-data.london_crime.crime_by_lsoa`
WHERE
  minor_category like 'Drug%'

-- Here is an example of returning distinct list of records from the minor_category column that contain the pattern Drugs at the end of the string. This query returns Possession Of Drugs, Other Drugs.

SELECT
  distinct minor_category
FROM
  `bigquery-public-data.london_crime.crime_by_lsoa`
WHERE
  minor_category like '%Drugs'

-- Here is an example of returning distinct list of records from the minor_category column that contain the pattern eh anywhere in the string. Run this query in Big Query to see the records it will return as it will help your understanding.

SELECT
  distinct minor_category
FROM
  `bigquery-public-data.london_crime.crime_by_lsoa`
WHERE
  minor_category like '%eh%'

-- Often when looking for a pattern, we lower case the column in which we are looking. This way we can just use lower case in our like statement. This example used the lower function which lowers the case of the string column. We will work with these functions more in future videos. Run this query in Big Query to see the records it will return as it will help your understanding.

SELECT
  distinct minor_category
FROM
  `bigquery-public-data.london_crime.crime_by_lsoa`
WHERE
    lower(minor_category) like '%motor%'