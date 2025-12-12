SELECT TOP 1 tl.sig_hash
FROM teleport_log tl
LEFT JOIN known_beings kb on tl.sig_hash = kb.sig_hash 
WHERE kb.id IS NULL 
ORDER BY energy DESC
