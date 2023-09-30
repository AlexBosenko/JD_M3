WITH max_month_count AS (
    SELECT p.id, MAX(DATE_PART('YEAR', AGE(p.finish_date, p.start_date)) * 12 + DATE_PART('month', AGE(p.finish_date, p.start_date))) AS month_count
    FROM project AS p
    GROUP BY p.id
    ORDER BY MAX(DATE_PART('YEAR', AGE(p.finish_date, p.start_date)) * 12 + DATE_PART('month', AGE(p.finish_date, p.start_date))) DESC
    LIMIT 1
)
SELECT p.name, m.month_count
FROM project AS p
JOIN max_month_count AS m
    ON p.id = m.id;
