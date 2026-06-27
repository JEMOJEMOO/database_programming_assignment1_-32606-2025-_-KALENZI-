-- ROW_NUMBER(): Assign a unique number to each order based on quantity ordered.

SELECT order_id,
       quantity_ordered,
       ROW_NUMBER() OVER (ORDER BY quantity_ordered DESC) AS row_num
FROM orders;



-- RANK(): Rank orders by quantity ordered.

SELECT order_id,
       quantity_ordered,
       RANK() OVER (ORDER BY quantity_ordered DESC) AS rank_no
FROM orders;






-- DENSE_RANK(): Rank orders without skipping numbers.

SELECT order_id,
       quantity_ordered,
       DENSE_RANK() OVER (ORDER BY quantity_ordered DESC) AS dense_rank_no
FROM orders;







-- PERCENT_RANK(): Show the relative ranking of each order.

SELECT order_id,
       quantity_ordered,
       PERCENT_RANK() OVER (ORDER BY quantity_ordered) AS percent_rank
FROM orders;








-- SUM() OVER(): Running total of quantities ordered.

SELECT order_id,
       quantity_ordered,
       SUM(quantity_ordered)
       OVER (ORDER BY order_id) AS running_total
FROM orders;









-- AVG() OVER(): Average quantity ordered.

SELECT order_id,
       quantity_ordered,
       AVG(quantity_ordered)
       OVER () AS average_quantity
FROM orders;









-- MIN() OVER(): Minimum quantity ordered.

SELECT order_id,
       quantity_ordered,
       MIN(quantity_ordered)
       OVER () AS minimum_quantity
FROM orders;







-- MAX() OVER(): Maximum quantity ordered.

SELECT order_id,
       quantity_ordered,
       MAX(quantity_ordered)
       OVER () AS maximum_quantity
FROM orders;










-- LAG(): Show the previous order quantity.

SELECT order_id,
       quantity_ordered,
       LAG(quantity_ordered)
       OVER (ORDER BY order_id) AS previous_quantity
FROM orders;









-- LEAD(): Show the next order quantity.

SELECT order_id,
       quantity_ordered,
       LEAD(quantity_ordered)
       OVER (ORDER BY order_id) AS next_quantity
FROM orders;






-- NTILE(): Divide orders into four groups.

SELECT order_id,
       quantity_ordered,
       NTILE(4)
       OVER (ORDER BY quantity_ordered DESC) AS quartile
FROM orders;








-- CUME_DIST(): Calculate cumulative distribution.

SELECT order_id,
       quantity_ordered,
       CUME_DIST()
       OVER (ORDER BY quantity_ordered) AS cumulative_distribution
FROM orders;




