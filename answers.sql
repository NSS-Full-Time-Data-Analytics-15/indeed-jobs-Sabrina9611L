SELECT *
FROM data_analyst_jobs;

--- Q1 1793

SELECT COUNT (*)
FROM data_analyst_jobs;

--- Q2 ExxonMobil

SELECT *
FROM data_analyst_jobs
LIMIT 10;

--- Q3 21, 27

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location in ('TN');

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location in ('TN','KY');

--- Q4 3

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location in ('TN')
AND star_rating > 4;

--- Q5 151

SELECT COUNT (*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 and 1000;

--- Q6 NE

SELECT DISTINCT location AS state, 
AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY 1
ORDER BY avg_rating DESC;

--- Q7 881

SELECT COUNT (DISTINCT title)
FROM data_analyst_jobs;

--- Q8 230

SELECT COUNT (DISTINCT title) 
FROM data_analyst_jobs
WHERE location = 'CA';

--- Q9 40

SELECT DISTINCT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY 1;

SELECT COUNT (DISTINCT company)
FROM data_analyst_jobs
WHERE review_count > 5000;

--- Q10 American Express 4.199

SELECT DISTINCT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY 1
ORDER BY avg_rating DESC;

--- Q11 1669

SELECT title
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%'

SELECT COUNT (title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';

--- Q12 4, Tableau

SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%'
AND title NOT ILIKE '%Analytics%';

SELECT COUNT (title)
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%'
AND title NOT ILIKE '%Analytics%';

--- Bonus Internet and Software (62), Banks and Financial Services (61), Consulting and Business Services (57), Health Care (52)

SELECT domain AS industry, COUNT (*) AS count_hard_to_fill
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%'
AND domain IS NOT null 
AND days_since_posting > 21
GROUP BY 1
ORDER BY count_hard_to_fill DESC
LIMIT 4;