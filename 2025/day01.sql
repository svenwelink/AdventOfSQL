SELECT name
FROM reindeer 
WHERE id NOT IN (
  SELECT reindeer_id
  FROM checkins 
  WHERE checkin_date = '2025-12-01')
