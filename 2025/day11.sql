SELECT weapon, 
  SUM(CASE WHEN type = 'weakness' THEN 1 ELSE 0 END ) 'n_weakness',
  SUM(CASE WHEN type = 'forbidden' THEN 1 ELSE 0 END ) 'n_forbidden'
FROM weapon_properties wp
LEFT JOIN creature_weaknesses cw on wp.property = cw.property 
GROUP BY weapon
HAVING n_weakness = (
  SELECT COUNT(1)
  FROM creature_weaknesses 
  WHERE type = 'weakness')
AND n_forbidden = 0
