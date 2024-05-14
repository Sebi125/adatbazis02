SELECT DISTINCT ugyfelek.*
FROM ugyfelek
JOIN foglalas ON ugyfelek.ugyfel_id = foglalas.ugyfel_id
WHERE foglalas.palya_id = 2
AND foglalas.mettol >= '2024-05-26 14:00'
AND foglalas.meddig <= '2024-06-23 20:00';

--Az összes ügyfél megjelenítése, akik foglalást végeztek a megadott pályán az adott időszakban