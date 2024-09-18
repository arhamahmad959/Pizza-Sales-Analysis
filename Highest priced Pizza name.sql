## Q9)- Join relevant tables to find the category wise distribution of pizzas
## We have to find the number of pizzas in each category.

SELECT category, COUNT(name)
FROM pizza_types
GROUP BY category