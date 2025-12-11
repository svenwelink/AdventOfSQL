SELECT GROUP_CONCAT(SUBSTRING(word, 1, 1)) 'Letter'
FROM clearing_messages 
JOIN reindeer  on reindeer_id  = reindeer.id 
WHERE name = 'Blitzen'
ORDER BY word_position asc
