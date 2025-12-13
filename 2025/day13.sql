SELECT COUNT(1) 'childerNaugthyMoreThenOnce'
FROM (
  SELECT child_id, count(1) 'times_naughty'
  FROM behaviour_events 
  GROUP BY child_id 
  HAVING times_naughty > 1) timesNaughty
