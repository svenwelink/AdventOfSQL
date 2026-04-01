SELECT  SA.name
FROM storage_areas SA
JOIN unloaded_items UI ON SA.area_id = UI.area_id 
GROUP BY SA.name, min_quantity
HAVING SUM(UI.quantity) > min_quantity
ORDER BY SA.name 
