SELECT o.order_id,d.delivery_id,d.delivery_date,d.delivery_status
FROM orders o 
LEFT JOIN deliveries d 
ON o.order_id=d.order_id;
