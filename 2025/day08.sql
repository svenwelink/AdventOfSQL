SELECT string_agg(letter, '') 'Text'
FROM teleport_sequence ts
JOIN runes r ON ts.rune_id = r.id 
ORDER BY position 
