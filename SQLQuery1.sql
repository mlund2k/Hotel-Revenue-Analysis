WITH hotels AS (
SELECT * FROM dbo.[2018]
UNION
SELECT * FROM dbo.[2019]
UNION
SELECT * FROM dbo.[2020])

SELECT hotel AS [Hotel Type],
	arrival_date_year AS Year,
	ROUND(SUM((stays_in_week_nights+stays_in_weekend_nights)*adr),0) AS Revenue
FROM hotels
GROUP BY hotel, arrival_date_year
ORDER BY hotel, year
