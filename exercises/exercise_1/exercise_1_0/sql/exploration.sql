SELECT * FROM read_csv_auto('data/salaries.csv');

SELECT
  MIN(salary) as lowest,
  ROUND(AVG(salary)) as average,
  MAX(salary) as highest
FROM read_csv_auto('data/salaries.csv')