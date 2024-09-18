## Q8)- Determine the maximum number of distribution of orders in which hour of the day.

## We have "hour" in "orders" table 


SELECT hour(order_time), COUNT(order_id)
FROM orders
GROUP BY hour(order_time)
ORDER BY COUNT(order_id) DESC;

## So we have maximum number of orders in 12th hour which is 2520 orders