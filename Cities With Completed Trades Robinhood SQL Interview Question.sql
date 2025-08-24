SELECT city,
COUNT(status) AS total_orders
FROM trades t 
INNER JOIN users u 
ON t.user_id=u.user_id
WHERE status='Completed'
GROUP BY u.city
ORDER BY total_orders DESC
LIMIT 3;
