WITH OrvosokBetegszam AS (
    SELECT o.ID, o.Nev, o.Szakterulet, COUNT(ony.PaciensID) AS Betegszam
    FROM Orvosok o
    LEFT JOIN Orvosi_nyilvantartas ony ON o.ID = ony.OrvosID
    GROUP BY o.ID, o.Nev, o.Szakterulet
),
AtlagBetegszam AS (
    SELECT AVG(Betegszam) AS Atlag
    FROM OrvosokBetegszam
)
SELECT o.Nev, o.Szakterulet, o.Betegszam, ab.Atlag
FROM OrvosokBetegszam o, AtlagBetegszam ab
WHERE o.Betegszam > ab.Atlag;