SELECT ugyfelek.nev, COUNT(foglalas.foglalas_id) AS foglalasok_szama
FROM ugyfelek
LEFT JOIN foglalas ON ugyfelek.ugyfel_id = foglalas.ugyfel_id
GROUP BY ugyfelek.nev;

--Az összes foglalás számának meghatározása ügyfél szerint: