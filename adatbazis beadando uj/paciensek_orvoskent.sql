SELECT o.Nev AS Orvos_neve, COUNT(i.OrvosID) AS Paciensek_szama
FROM Orvosok o
LEFT JOIN Idopontok i ON o.ID = i.OrvosID
GROUP BY o.Nev;