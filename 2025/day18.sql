SELECT SUM(shipment_id) 'answer' 
FROM (
  SELECT name, 
    RANK() OVER(PARTITION BY Name ORDER BY priority desc, shipment_id) 'HighestPriority' 
  FROM shipments s
  JOIN categories c ON s.category_id= c.category_id
  WHERE weight < max_weight
  ) A
WHERE HighestPriority = 1
