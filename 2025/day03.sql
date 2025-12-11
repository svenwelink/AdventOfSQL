SELECT TOP 1 Location, COUNT(1) 'Visits'
FROM locations_visited 
JOIN reindeer  on reindeer_id  = id 
WHERE Name = 'Blitzen'
GROUP BY location 
ORDER BY 2 desc
