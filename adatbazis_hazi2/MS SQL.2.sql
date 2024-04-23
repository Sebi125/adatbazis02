SELECT * FROM Ugyfel

CREATE user proba without login
grant SELECT ON Ugyfel to proba
execute AS user = 'proba'
SELECT * FROM Ugyfel
revert
SELECT * FROM Ugyfel