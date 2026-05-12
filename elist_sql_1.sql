-- What is the date of the earliest and latest order, returned in one query?
SELECT
  MIN(purchase_ts) AS earliest_order,
  MAX(purchase_ts) AS lates_order
FROM core.order_status;

-- What is the average order value for purchases made in USD? What about average order value for purchases made in USD in 2019?
SELECT 
  ROUND(AVG(usd_price),2) AS aov_usd
FROM `core.orders`
WHERE currency = 'USD'
AND EXTRACT (year FROM purchase_ts) = 2019;

-- Return the id, loyalty program status, and account creation date for customers who made an account on desktop or mobile. Rename the columns to more descriptive names.
SELECT 
  id AS customer_id,
  loyalty_program AS is_loyality_customer,
  created_on AS account_creation_date
FROM core.customers
WHERE account_creation_method IN ("desktop", "mobile");

-- What are all the unique products that were sold in AUD on website, sorted alphabetically?
SELECT DISTINCT
  product_name AS product
FROM core.orders
WHERE currency = 'AUD'
AND purchase_platform = "website"
ORDER BY product_name;

-- What are the first 10 countries in the North American region, sorted in descending alphabetical order?
SELECT
country_code AS countries
FROM `core.geo_lookup`
WHERE region = "NA"
ORDER BY 1 DESC
LIMIT 10;

-- What is the total number of orders by shipping month, sorted from most recent to oldest?
SELECT
  date_trunc(ship_ts, month) AS shipping_month,
  COUNT (DISTINCT order_id) AS total_nr_of_orders
FROM `core.order_status`
GROUP BY ship_ts
ORDER BY ship_ts DESC;

-- What is the average order value by year? Can you round the results to 2 decimals?
SELECT
  extract(year from purchase_ts) as year,
  ROUND(AVG(usd_price), 2) AS AOV
FROM `core.orders`
GROUP BY purchase_ts
ORDER BY purchase_ts;

-- Create a helper column `is_refund`  in the `order_status`  table that returns 1 if there is a refund, 0 if not. Return the first 20 records.
SELECT *,
  CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0
  END AS is_refund
FROM `core.order_status`
LIMIT 20;

-- Return the product IDs and product names of all Apple products.
SELECT
product_id AS id,
product_name AS product
FROM `core.suppliers`
WHERE product_name LIKE '%Apple%' 
OR product_name ='Macbook Air Laptop';

-- Calculate the time to ship in days for each order and return all original columns from the table.
SELECT *,
DATE_DIFF(ship_ts, purchase_ts, day) AS shipping_days
FROM `core.order_status`;
