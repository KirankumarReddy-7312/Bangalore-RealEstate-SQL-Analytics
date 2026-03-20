SQL Analysis Queries

This file contains advanced SQL queries used to analyze real estate data across multiple Bangalore locations.

-- 1. Location-wise Average Price
SELECT location, AVG(price) AS avg_price
FROM all_properties
GROUP BY location
ORDER BY avg_price DESC; 

-- 2. Top 3 Expensive Locations
SELECT location, MAX(price) AS max_price
FROM all_properties
GROUP BY location
ORDER BY max_price DESC
LIMIT 3;

-- 3. Property Type Demand
SELECT property_type, COUNT(*) AS total_properties
FROM all_properties
GROUP BY property_type
ORDER BY total_properties DESC;

-- 4. Average Price per Sqft
SELECT location, AVG(price/area_sqft) AS price_per_sqft
FROM all_properties
GROUP BY location
ORDER BY price_per_sqft DESC;

-- 5. Top 5 Costliest Properties (Window Function)
SELECT *
FROM (
    SELECT location, price,
    RANK() OVER (ORDER BY price DESC) AS rank_no
    FROM all_properties
) ranked
WHERE rank_no <= 5;

-- 6. Cheapest Properties
SELECT *
FROM all_properties
ORDER BY price ASC
LIMIT 5;

-- 7. Bedroom-wise Demand
SELECT bedrooms, COUNT(*) AS total
FROM all_properties
GROUP BY bedrooms
ORDER BY total DESC;

-- 8. Properties Above Average Price
SELECT *
FROM all_properties
WHERE price > (SELECT AVG(price) FROM all_properties);

-- 9. Location with Highest Average Area
SELECT location, AVG(area_sqft) AS avg_area
FROM all_properties
GROUP BY location
ORDER BY avg_area DESC;

-- 10. Count of Properties per Location
SELECT location, COUNT(*) AS total_properties
FROM all_properties
GROUP BY location
ORDER BY total_properties DESC;

-- 11. Price Distribution (Case Statement)
SELECT 
  CASE 
    WHEN price < 20000 THEN 'Low'
    WHEN price BETWEEN 20000 AND 30000 THEN 'Medium'
    ELSE 'High'
  END AS price_category,
  COUNT(*) AS total
FROM all_properties
GROUP BY price_category;

-- 12. Running Total of Prices (Window Function)
SELECT location, price,
SUM(price) OVER (ORDER BY price) AS running_total
FROM all_properties;
