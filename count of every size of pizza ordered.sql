## Identify the most common pizza size ordered.
## For this we need two tables "pizzas" and "order_details" so we need join.
## First we need size. and based on size, we create group to get count of order.

SELECT pizzas.size, COUNT(order_details.order_details_id) AS order_count
FROM pizzas JOIN order_details
ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;

## so we have the "L" sized pizza of 18526 in numbers.