SELECT TOP 1 elves.name, COUNT(1) 'DaysWithBlitzen'
FROM elves 
  JOIN elf_checkins ON elves.id = elf_id
  JOIN checkins ON checkin_date = work_date
  JOIN reindeer ON reindeer.id = reindeer_id
WHERE reindeer.name = 'Blitzen'
GROUP BY elves.name
ORDER BY 2 desc
