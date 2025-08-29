SELECT message_id,
sent_date + INTERVAL 2 DAY AS add_2_days,
sent_date - INTERVAL 3 DAY AS minus_3_days,
sent_date + INTERVAL 2 HOUR AS add_2_hours,
sent_date - INTERVAL 10 MINUTE AS add_10_min
FROM messages
LIMIT 2;
