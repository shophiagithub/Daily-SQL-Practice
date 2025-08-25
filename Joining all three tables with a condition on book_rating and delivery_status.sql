SELECT g.book_title,
g.book_rating,
o.order_date,
d.delivery_status
FROM goodreads g
JOIN orders o ON 
g.book_id=o.book_id
AND book_rating>4.0
JOIN deliveries d
ON o.order_id=d.order_id
AND delivery_status='Delivered';
