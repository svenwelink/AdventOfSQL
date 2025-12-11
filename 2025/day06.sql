SELECT DISTINCT t.name
FROM production_logs pl
JOIN production_summary ps ON pl.toy_id = ps.toy_id 
JOIN toys  t ON ps.toy_id = t.id
GROUP BY t.name
HAVING SUM(quantity ) <> MIN(expected_total)
