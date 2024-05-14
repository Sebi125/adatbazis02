SELECT ugyfelek.nev, ugyfelek.email
FROM ugyfelek
JOIN berletek ON ugyfelek.ugyfel_id = berletek.ugyfel_id
WHERE '2024-05-20' BETWEEN berletek.mettol AND berletek.meddig;

--Az ügyfél neve és e-mail címe, akinek van aktív bérlete a megadott dátumra