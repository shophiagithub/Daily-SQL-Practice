WITH cte AS 
(SELECT user_id,transaction_date,
RANK() OVER(
PARTITION BY user_id
ORDER BY transaction_date DESC) AS rank_num
FROM user_transactions)

SELECT transaction_date,user_id,
COUNT(user_id) AS purchase_count
FROM cte 
WHERE rank_num=1
GROUP BY transaction_date,user_id
ORDER BY transaction_date;
