SELECT DISTINCT ugyfelek.nev, ugyfelek.email
FROM ugyfelek
LEFT JOIN uto_berlesv2 ON ugyfelek.ugyfel_id = uto_berlesv2.ugyfel_id
WHERE uto_berlesv2.ugyfel_id IS NULL;

--Az összes ügyfél neve és emailje, aki nem foglalt ütőt