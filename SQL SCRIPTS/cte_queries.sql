-- Simple CTE: Display products with low stock

WITH LowStock AS
(
    SELECT product_id,
           product_name,
           stock_quantity
    FROM products
    WHERE stock_quantity < 50
)
SELECT *
FROM LowStock;



-- Multiple CTEs: Show low-stock products together with supplier names

WITH LowStock AS
(
    SELECT product_id,
           product_name,
           supplier_id,
           stock_quantity
    FROM products
    WHERE stock_quantity < 50
),
SupplierInfo AS
(
    SELECT supplier_id,
           supplier_name
    FROM suppliers
)
SELECT l.product_name,
       l.stock_quantity,
       s.supplier_name
FROM LowStock l
JOIN SupplierInfo s
ON l.supplier_id = s.supplier_id;







-- Recursive query using Oracle CONNECT BY

SELECT LEVEL AS order_number
FROM dual
CONNECT BY LEVEL <= 10;






-- CTE with aggregation: Calculate total quantity sold for each product

WITH ProductSales AS
(
    SELECT product_id,
           SUM(quantity_ordered) AS total_sales
    FROM orders
    GROUP BY product_id
)
SELECT *
FROM ProductSales;






-- CTE with JOIN: Display product name, supplier, and total quantity sold

WITH ProductSales AS
(
    SELECT product_id,
           SUM(quantity_ordered) AS total_sales
    FROM orders
    GROUP BY product_id
)
SELECT p.product_name,
       s.supplier_name,
       ps.total_sales
FROM ProductSales ps
JOIN products p
ON ps.product_id = p.product_id
JOIN suppliers s
ON p.supplier_id = s.supplier_id;
