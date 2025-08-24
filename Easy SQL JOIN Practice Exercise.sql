SELECT *
FROM trades 
JOIN users 
ON users.user_id=trades.user_id;
