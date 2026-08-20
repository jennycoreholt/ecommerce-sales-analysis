--What were the order counts, sales and AOV for Macbooks sold in North America for each quarter across all years?#
WITH quarterly_metrics AS (
  SELECT 
    DATE_TRUNC(purchase_ts, quarter) AS purchase_quarter,
    COUNT(DISTINCT o.id) AS order_count,
    ROUND(SUM(usd_price),2) AS sales,
    ROUND(AVG(usd_price),2) AS AOV,
  FROM `core.orders` AS o
  LEFT JOIN `core.customers` AS cus
    ON o.customer_id = cus.id
  LEFT JOIN `core.geo_lookup` AS geo
    ON geo.country_code = cus.country_code 
  WHERE lower(o.product_name) LIKE '%macbook%'
    AND region = 'NA'
  GROUP BY 1
  ORDER BY 1 DESC
)
SELECT ROUND(AVG(order_count)) AS avg_quarter_orders,
  ROUND(AVG(sales),2) AS avg_quarter_sales
FROM quarterly_metrics LIMIT 100;

--For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver? 
SELECT 
  geo.region,
  ROUND(AVG(DATE_DIFF(os.delivery_ts, os.purchase_ts,day)),1) AS time_to_deliver
FROM `core.order_status` AS os
LEFT JOIN `core.orders` AS o 
  ON o.id = os.order_id
LEFT JOIN `core.customers` AS cus 
  ON cus.id = o.customer_id
 LEFT JOIN `core.geo_lookup` AS geo
  ON geo.country_code = cus.country_code
WHERE (EXTRACT(year FROM o.purchase_ts) = 2022 AND o.purchase_platform = 'website')
  OR o.purchase_platform = "mobile"
GROUP BY 1
ORDER BY 2 DESC;

--What was the refund rate and refund count for each product overall? 
SELECT
  CASE
    WHEN o.product_name = '27in"" 4k gaming monitor' 
      THEN '27in 4K gaming monitor'
      ELSE product_name
  END AS product_name_clean,
  COUNT(DISTINCT(order_id)) AS total_orders,
  SUM(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refunds,
  ROUND(AVG(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) *100,2) AS refund_rate_pct
FROM `core.order_status` AS os
LEFT JOIN `core.orders` AS o 
  ON os.order_id = o.id 
GROUP BY 1
ORDER BY 4 DESC;

--Within each region, what is the most popular product? geo - country code / customers - id -> country_code / orders -> customer id 
WITH sales_by_product AS (
  SELECT 
    CASE WHEN o.product_name = '27in"" 4k gaming monitor' 
      THEN '27in 4K gaming monitor' 
      ELSE product_name 
    END AS product_clean,
    COUNT(DISTINCT o.id) AS order_count,
    geo.region,
  FROM `core.orders` AS o
  LEFT JOIN `core.customers` AS cus
    ON o.customer_id = cus.id
  LEFT JOIN `core.geo_lookup` AS geo
    ON geo.country_code = cus.country_code
  GROUP BY 1,3
)

SELECT 
  *,
  ROW_NUMBER() OVER (PARTITION BY region ORDER BY order_count DESC) AS order_ranking
FROM sales_by_product
QUALIFY ROW_NUMBER() OVER (PARTITION BY region ORDER BY order_count DESC) = 1
ORDER BY order_count DESC;

--How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers? 
SELECT 
  cus.loyalty_program,
  o.purchase_platform,
  ROUND(AVG(DATE_DIFF(o.purchase_ts, cus.created_on,day)),1) AS days_to_purchase,
  ROUND(AVG(DATE_DIFF(o.purchase_ts, cus.created_on,month)), 2) AS months_to_purchase,
  COUNT(*) AS row_count
FROM `core.customers` AS cus 
LEFT JOIN `core.orders` AS o 
  ON o.customer_id = cus.id
GROUP BY 1, 2;
