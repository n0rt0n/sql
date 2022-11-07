SELECT fio FROM employees ORDER BY salary DESC LIMIT 1;
SELECT fio FROM employees ORDER BY fio ASC;
SELECT AVG(DATE_PART('year', NOW()) - DATE_PART('year', start_date)) AS exp_avg, seniority_level FROM employees GROUP BY seniority_level;
SELECT fio, salary FROM employees GROUP BY dep_id, fio, salary;
SELECT DISTINCT e.fio, d.name FROM employees e, deps d WHERE salary IN (SELECT max(salary) FROM employees GROUP BY dep_id) AND e.dep_id = d.id;
