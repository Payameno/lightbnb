SELECT properties.id AS property, title, cost_per_night, AVG(property_reviews.rating) AS average_rating
FROM properties 
LEFT JOIN property_reviews on properties.id = property_id
WHERE city = 'Vancouver'
AND property_reviews.rating >= 4
GROUP BY properties.id
ORDER BY cost_per_night ASC
LIMIT 10;