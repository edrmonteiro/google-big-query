-- Grouping By Multiple Columns
-- Recap of Group By Single Column Case

SELECT
    major_category,
    SUM(value) as num_crimes
FROM
    TABLE
GROUP BY
    major_category


-- Grouping By Multiple Columns

SELECT
    major_category,
    minor_category,
    SUM(value) as num_crimes
FROM
    TABLE
GROUP BY
    major_category,
    minor_category
