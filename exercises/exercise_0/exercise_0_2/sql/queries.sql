-- a) Create a database file called bike_join.duckdb and ingest the data from the csv file into your database. Check!

 -- b) The column order_id is the unique identifier of an order. How many unique orders are in the data?
 SELECT COUNT(DISTINCT order_id) FROM bike;

 -- c) A unique order can involve multiple products. The column product_id is the unique identifier of a product. How many unique products are in the data?
 SELECT COUNT(DISTINCT product_id) FROM bike;

-- d) For the product with product_name Surly Straggler - 2016, how many customers have ordered it? How much is the total sales value coming from these orders?
SELECT
  COUNT(DISTINCT customer_id) AS 'No of cust. who ordered Surly Straggler',
  ROUND(SUM(quantity*list_price*(1-discount))) AS 'Total sales value'
FROM
  bike
WHERE
  product_id = 10;

-- e) How many customers are coming from these cities: San Angelo, Orchard Park and Merrick?
SELECT
  COUNT(DISTINCT customer_id)
FROM
  bike
WHERE
  customer_city = 'San Angelo'
  OR customer_city = 'Orchard Park'
  OR customer_city = 'Merrick';

-- (Using IN instead)
SELECT
  COUNT(DISTINCT customer_id)
FROM
  bike
WHERE
  customer_city IN ('San Angelo', 'Orchard Park', 'Merrick');

-- f) Create a new column manager_name using the information below:
--  manager_id	  manager_name
--     1	       Amy Andersson
--     2	        Bill Berg
--     5	       Cathy Larsson
--     7	        Davis Lam

ALTER TABLE bike
ADD manager_name VARCHAR;

UPDATE bike
SET manager_name =
(CASE
    WHEN manager_id = 1 THEN 'Amy Andersson'
    WHEN manager_id = 2 THEN 'Bill Berg'
    WHEN manager_id = 5 THEN 'Cathy Larsson'
    WHEN manager_id = 7 THEN 'Davis Lam'
END);

SELECT manager_id, manager_name FROM bike;