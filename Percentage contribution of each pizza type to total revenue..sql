## Q11)- Calculate the percentage contribution of each pizza type to total revenue.

## We will do quantity multiplied by price to get the revenue generated by each category. Then we divide it by the total revenue generated which then mutliplied by 100 and name it as revenue.
## For total revenue we write the same code as we write in total revenue file.

SELECT pizza_types.category, (SUM(order_details.quantity * pizzas.price) / (SELECT
SUM(order_details.quantity * pizzas.price) AS total_sales
FROM order_details JOIN pizzas
ON pizzas.pizza_id = order_details.pizza_id))*100 AS revenue
FROM pizza_types JOIN pizzas
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY revenue DESC;

## Classic pizza contributes 26.905% in total revenue generated, which is the most.