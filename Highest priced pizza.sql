## Identify the highest priced pizza
## We want to display highest priced pizza name and not its id or anything.
## So we choose table "pizza_types" which contains pizza names.
## And we choose price which is in table "pizza_types".
## We use ORDER BY query on Price to present price in descending order. Then we use limit 1 to display only the top priced pizza

## CODE:
## We select pizza names from pizza_types table and price from pizzas table, from the join of tables (pizza_types and pizzas) since the two required columns are in two different tables.
## Based on the condition that pizza_type_id of both tables should match.

SELECT pizza_types.name, pizzas.price      ## We select pizza name from "pizza_types" and pizza price from "pizzas".
FROM pizza_types INNER JOIN pizzas         ## We are applying join on both tables since we have "pizza_type_id" common in both the tables. Only difference is "pizza_type_id" values are not arranged in same order row-wise.
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC LIMIT 1