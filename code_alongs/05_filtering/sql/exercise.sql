/* Uppgift
1. plocka ut jobbtitel, lönen, experience lvl och sortera högsta lön

2. räkna ut lönen i kr och omvandla till månadslön

3. plocka ut enbart juniora

4. utforska fler saker 
*/

-- 1
SELECT
  job_title,
  salary_usd,
  experience_level
FROM
  data_jobs
ORDER BY
  salary_usd DESC;

-- 2
ALTER TABLE data_jobs
ADD column salary_sek INTEGER;

ALTER TABLE data_jobs
ADD column salary_sek_monthly INTEGER;

UPDATE data_jobs
SET
  salary_sek = ROUND(salary_usd * 10.28);

UPDATE data_jobs
SET
 salary_sek_monthly = salary_sek / 12;

-- 3
SELECT * FROM data_jobs WHERE experience_level = 'EN';