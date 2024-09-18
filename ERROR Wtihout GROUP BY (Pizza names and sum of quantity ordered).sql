## List the most common ordered pizza types along with their quantity
## We need two columns "quantity" in order details table and "names" of pizza in pizza table.
## There are no matching columns in "order_detail table" and "names table" as in order_detail table we have "pizza_id" and in pizza_types table we only have pizza_type_id.
## But in pizzas table we have both "pizza_id" and "pizza_type_id". So pizzas table is in center linking both "order_detail" table and "pizza_types" table.
## So "pizzas" table works as a center to link both "order_details" and "pizza_types'.
## We JOIN "pizzas" and "pizza_types" table based on matching column "pizza_type_id". which links to "pizza_id" in pizzas table.
## We JOIN "order_details" and "pizzas" table based on matching column "pizza_id".

## CODE:
## We select names from "pizza_types' and "quantity" from "order_details", from join of tables (JOIN of pizzas and pizza_types(on condition pizza_type_id of pizzas and pizza_type_id of pizza_types should match) + JOIN of pizzas and order_details (on condition that pizza_id of pizzas and pizza_id of order_detail should match))
## If we want the count of quantity then we simply use SUM on (order_details.quantity). But SUM is an aggregate query so without using groupby we can't use aggreagte query.
## Therefore it will show error

SELECT pizza_types.name, SUM(order_details.quantity)
FROM pizza_types JOIN pizzas
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details
ON order_details.pizza_id = pizzas.pizza_id;