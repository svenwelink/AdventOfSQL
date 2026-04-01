SELECT region, SUM(score) 'TotalScore'
FROM (
  SELECT *
  FROM air_traffic 
  UNION ALL 
  SELECT * 
  FROM aurora_readings 
  UNION ALL 
  SELECT *
  FROM weather_stations 
  ) A
GROUP BY region
ORDER BY 2 desc
