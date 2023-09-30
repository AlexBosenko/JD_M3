WITH max_client_project AS (
    SELECT p.client_id, COUNT(p.id) AS project_count
    FROM project AS p
    GROUP BY p.client_id
    HAVING COUNT(p.id) IN (
        SELECT COUNT(p.id) AS project_count
        FROM project AS p
        GROUP BY p.client_id
        ORDER BY COUNT(p.id) DESC
        LIMIT 1
    )
)
SELECT c.name, m.project_count
FROM client AS c
JOIN max_client_project AS m
    ON c.id = m.client_id;


