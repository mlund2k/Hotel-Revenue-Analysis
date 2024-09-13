-- Since each of the 2018, 2019, and 2020 datasets contain the same schema, I can union them into a single common table expression (CTE) to perform analysis on a single dataset:
WITH hotels AS (
SELECT * FROM dbo.[2018]
UNION
SELECT * FROM dbo.[2019]
UNION
SELECT * FROM dbo.[2020])

-- Using this temporary table, I then want to join the extra tables on meal and market segment to combine additional information about the meals ordered and market segment associated with each reservation:
SELECT * FROM hotels
LEFT JOIN dbo.market_segment AS market
ON market.market_segment = hotels.market_segment
LEFT JOIN dbo.meal_cost AS meal
ON meal.meal = hotels.meal

-- [Query 1 Results]()

-- I want to create a column for revenue that can be compared between each type of hotel in each year to investigate the first business objective early:
SELECT hotel AS [Hotel Type],
	arrival_date_year AS Year,
	ROUND(SUM((stays_in_week_nights+stays_in_weekend_nights)*adr),0) AS Revenue
FROM hotels
GROUP BY hotel, arrival_date_year
ORDER BY hotel, year

-- [Query 2 Results]()
