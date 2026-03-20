-- Average price by location
SELECT location, AVG(price) AS avg_price
FROM all_properties
GROUP BY location
ORDER BY avg_price DESC;

-- Top 5 expensive properties
SELECT location, price
FROM (
    SELECT location, price,
    RANK() OVER (ORDER BY price DESC) AS rnk
    FROM all_properties
) ranked
WHERE rnk <= 5;

-- Property type demand
SELECT property_type, COUNT(*) AS total
FROM all_properties
GROUP BY property_type
ORDER BY total DESC;

-- Price per sqft
SELECT location, AVG(price/area_sqft) AS price_per_sqft
FROM all_properties
GROUP BY location;
