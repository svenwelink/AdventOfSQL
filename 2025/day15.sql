SELECT TOP 1 pa.present, COALESCE(quantity, 0) - PresentCount 'PresentsAfterAssignments'
FROM (
  SELECT present, COUNT(1) 'PresentCount'
  FROM present_assignments 
  GROUP BY present
) pa
LEFT JOIN inventory i ON i.present = pa.present
ORDER BY 2 ASC
