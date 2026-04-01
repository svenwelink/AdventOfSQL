SELECT F.Region, COUNT(C.Child_id) 'ChildrenCount'
FROM families  F
JOIN children  C ON F.family_id  = C.family_id 
GROUP BY F.region 
ORDER BY 2 desc
