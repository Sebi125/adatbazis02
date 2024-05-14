SELECT TOP 5 Diagnozis, COUNT(*) AS Gyakorisag
FROM Orvosi_nyilvantartas
GROUP BY Diagnozis
ORDER BY Gyakorisag DESC;