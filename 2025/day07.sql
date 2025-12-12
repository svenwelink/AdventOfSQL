SELECT TOP 1 SUBSTRING(error_code ,1, charindex("_", error_code , (charindex("_", error_code ) + 1)) - 1) 'ErrorCategory', COUNT(1)
FROM machine_errors 
GROUP BY 1 
ORDER BY 2 DESC
