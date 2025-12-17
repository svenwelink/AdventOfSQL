SELECT TOP 1 Name, POWER(f.x - np.x, 2) + POWER(f.y - np.y, 2) 'Distance'
FROM facilities f
JOIN north_pole np ON f.id IS NOT NULL
ORDER BY 2 ASC
