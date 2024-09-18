## Calcualte the total revenue generated from pizza sales
## For that we have to do quantity * Price
## We have pizza price for pizza_id in "pizza" table and we have quantity ordered in "order_detail".
## So we have to apply Join query because the two things required to calculate the total revenue generated are in two different tables.

SELECT
SUM(order_details.quantity * pizzas.price) AS total_sales
FROM order_details JOIN pizzas
ON pizzas.pizza_id = order_details.pizza_id

## So the total revenue generated is 817860.