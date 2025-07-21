---How many runners signed up for each 1 week period?

SELECT DATEPART(YEAR, registration_date) AS year,
       DATEPART(WEEK, registration_date) AS week,
       COUNT(*) AS runner_signups
FROM burger_runner
GROUP BY DATEPART(YEAR, registration_date), DATEPART(WEEK, registration_date)
ORDER BY year, week;
