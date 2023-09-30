SELECT w.name, w.salary
FROM worker AS w
WHERE w.salary IN (
    SELECT MAX(salary) 
    FROM worker
    );