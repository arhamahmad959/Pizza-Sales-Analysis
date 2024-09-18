## Identify the most common pizza quantity ordered.

SELECT quantity, COUNT(order_details_id)
FROM order_details GROUP BY quantity

## By this we get the frequency of quantity 1, quantity 2, quantity 3 and quantity 4
## We see that the quantity 1 pizza is most ordered.