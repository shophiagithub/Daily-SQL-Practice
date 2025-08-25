SELECT o.order_id,d.delivery_status
FROM orders o
INNER JOIN deliveries d ON 
o.order_id=d.order_id
AND d.delivery_status IN ('Delivered','Shipped');
