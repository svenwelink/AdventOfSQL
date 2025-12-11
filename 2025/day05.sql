SELECT COUNT(1) 'DaysAboveZero'
FROM (
  SELECT reading_date, AVG(temp_celsius) 'AverageTemp'
  FROM temperature_readings 
  GROUP BY reading_date 
) A
WHERE AverageTemp > 0
