SELECT TOP 5 Gyogyszer, COUNT(*) AS Gyakorisag
FROM Receptek
GROUP BY Gyogyszer
ORDER BY Gyakorisag DESC;