SELECT p.name, SUM(w.salary * (DATE_PART('YEAR', AGE(p.finish_date, p.start_date)) * 12 + DATE_PART('month', AGE(p.finish_date, p.start_date)))) AS price
FROM project_worker AS pw
JOIN project AS p
    ON pw.project_id = p.id
JOIN worker AS w
    ON pw.worker_id = w.id
GROUP BY p.name
ORDER BY price DESC;