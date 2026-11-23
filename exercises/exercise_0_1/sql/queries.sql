-- a) Create a database file called hemnet.duckdb and ingest the data from the csv file into your database. Check!

-- b) Make a wildcard selection to checkout the data (use the asterisk symbol)
SELECT * FROM hemnet;

-- c) Find out how many rows there are in the table
SELECT COUNT(*) FROM hemnet;

-- d) Describe the table that you have ingested to see the columns and data types.
DESC hemnet;

-- e) Find out the 5 most expensive homes sold.
SELECT * FROM hemnet ORDER BY final_price DESC LIMIT 5;

-- f) Find out the 5 cheapest homes sold.
SELECT * FROM hemnet ORDER BY final_price ASC LIMIT 5;

-- g) Find out statistics on minimum, mean, median and maximum prices of homes sold.
SELECT
  MIN(final_price) AS lowest,
  AVG(final_price) AS mean,
  MEDIAN(final_price) as median,
  MAX(final_price) AS highest
FROM
  hemnet;

-- h) Find out statistics on minimum, mean, median and maximum prices of price per area.
SELECT
  MIN(price_per_area) AS lowest,
  AVG(price_per_area) AS mean,
  MEDIAN(price_per_area) as median,
  MAX(price_per_area) AS highest
FROM
  hemnet;

-- i) How many unique communes are represented in the dataset.
SELECT COUNT(DISTINCT commune) FROM hemnet;

-- j) How many percentage of homes cost more than 10 million?
SELECT
    100.0 * COUNT(*) FILTER (WHERE final_price > 10000000)
    / COUNT(*) AS percentage
FROM
    hemnet;