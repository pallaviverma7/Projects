/*

Queries used for Power BI Project

*/




--1.
with hotels as(
SELECT * FROM dbo.['2018$']
UNION
SELECT *FROM dbo.['2019$']
UNION
SELECT *FROM dbo.['2020$'])

SELECT * FROM hotels
LEFT JOIN market_segment$
ON hotels.market_segment = market_segment$.market_segment
LEFT JOIN meal_cost$
ON hotels.meal = meal_cost$.meal



--queries to use while adding new column to calculate revenue

--2.
Revenue = (stays_in_weekend_nights + stays_in_week_nights)*adr *Discount


--query while creating new measure

--3.
Total nights = sum(stays_in_week_nights) + sum(stays_in_weekend_nights)


--queries to check data according with the columns 
--4.
SELECT arrival_date_year,
hotel,
round(sum((stays_in_weekend_nights + stays_in_week_nights)*adr ),2)
FROM hotels
group by arrival_date_year,hotel