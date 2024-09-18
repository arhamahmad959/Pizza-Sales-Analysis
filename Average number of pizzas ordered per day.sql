## Q9)- Group the orders by date and calculate the average number of pizzas ordered per day.
## We need sum of quantities ordered in each date. So we need quantity column and order_date column, which are in order_details table and orders table respectively.

## CODE: 
## So we select "order_date" and "SUM(order_details.quantity)" from the JOIN of tables (orders and order_details based on the condition that orders.order_id = order_details.order_id).
## To get the average number of pizzas(quantity) ordered per day, we make the whole code as a subquery and name it as "order_quantity" and then we run select query in which we do avg(Sum_quantity_ordered) FROM the whole subquery.

SELECT avg(Sum_of_quantity)
FROM
(SELECT orders.order_date AS order_date, SUM(order_details.quantity) AS Sum_of_quantity
FROM orders JOIN order_details
ON orders.order_id = order_details.order_id
GROUP BY order_date) AS order_quantity ;