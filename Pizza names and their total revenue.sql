## Q10)- Determine the top 3 most ordered pizza types based on revenue (total Price)
## We will do quantity multiplied by price as price is per quantity.

SELECT pizza_types.name, order_details.quantity * pizzas.price AS revenue
FROM pizza_types JOIN pizzas
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id