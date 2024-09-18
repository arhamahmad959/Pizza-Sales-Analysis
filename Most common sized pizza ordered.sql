## Identify the most common pizza size ordered.
## We need two tables "pizzas" and "order_details" so we need join beacuse the two informations required that is size and order count are in two different tables.
## We join the two tables based on the condition that pizza_id of both the tables should match.
## When we use COUNT on order_count then we also use GROUP By on pizzas.size
## We use ORDER BY on order_count. And use DESC to list in descending order and use LIMIT 1 to display only top value.

SELECT pizzas.size, COUNT(order_details.order_details_id) AS order_count
FROM pizzas JOIN order_details
ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size ORDER BY order_count DESC LIMIT 1;

## so most common sized pizza ordered is Large

## so we have the "medium" sized pizza of 15385 in numbers.