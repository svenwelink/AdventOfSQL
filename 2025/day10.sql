SELECT creature,  COUNT(1) 'fragmentCount', SUM(CASE WHEN sig_hash IS NULL THEN 0 ELSE 1 END) AS 'fragmentInVOIDCount'
FROM creature_traits ct
LEFT JOIN rune_fragments rf on ct.fragment  = rf.fragment 
WHERE (sig_hash = 'VOID-7F3C' OR sig_hash is null)
GROUP BY Creature
HAVING fragmentCount = fragmentInVOIDCount
