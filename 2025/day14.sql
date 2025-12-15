SELECT CASE WHEN TimesNaughty = 0 THEN 'Toy' 
    WHEN TimesNaughty = 1 THEN 'Book' 
    ELSE 'Coal' END AS 'Present',
  COUNT(CASE WHEN TimesNaughty = 0 THEN 'Toy' 
    WHEN TimesNaughty = 1 THEN 'Book' 
    ELSE 'Coal' END ) AS 'Children'
FROM (
  SELECT c.id , 
    SUM(CASE WHEN be.id IS NULL THEN 0 ELSE 1 END) 'TimesNaughty'
  FROM children c
  LEFT JOIN behaviour_events be ON be.child_id = c.id 
  GROUP BY c.id)
GROUP BY CASE WHEN TimesNaughty = 0 THEN 'Toy' 
  WHEN TimesNaughty = 1 THEN 'Book' 
  ELSE 'Coal' END 
ORDER BY 2 DESC
