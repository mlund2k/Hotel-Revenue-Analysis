WITH hotels AS (
SELECT * FROM dbo.[2018]
UNION
SELECT * FROM dbo.[2019]
UNION
SELECT * FROM dbo.[2020])

SELECT * FROM hotels
LEFT JOIN dbo.market_segment AS market
ON market.market_segment = hotels.market_segment
LEFT JOIN dbo.meal_cost AS meal
ON meal.meal = hotels.meal