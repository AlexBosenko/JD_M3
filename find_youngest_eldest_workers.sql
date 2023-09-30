SELECT 'YOUNGEST' AS type, w.name, w.birthday AS birthday
FROM worker AS w
WHERE w.birthday IN (
    SELECT MAX(birthday)
    FROM worker
)
UNION
SELECT 'ELDEST', w.name, w.birthday AS birthday
FROM worker AS w
WHERE w.birthday IN (
    SELECT MIN(birthday)
    FROM worker
)
ORDER BY birthday DESC;