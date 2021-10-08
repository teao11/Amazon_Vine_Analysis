WITH
first_point AS (
	SELECT *
	FROM vine_table
	WHERE total_votes > 20
)
,
second_point AS (
	SELECT *
	FROM first_point
	WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5
),
yes_final AS (
	SELECT *
	FROM second_point
	WHERE vine = 'Y'
),
no_final AS (
	SELECT *
	FROM second_point
	WHERE vine = 'N'
)
SELECT
	'YES' AS type_vote,
	COUNT(DISTINCT review_id) AS count_all,
	COUNT(DISTINCT CASE WHEN star_rating = 5 THEN review_id ELSE NULL END) AS five_star
FROM yes_final

UNION ALL

SELECT
	'NO' AS type_vote,
	COUNT(DISTINCT review_id) AS count_all,
	COUNT(DISTINCT CASE WHEN star_rating = 5 THEN review_id ELSE NULL END) AS five_star
FROM no_final
