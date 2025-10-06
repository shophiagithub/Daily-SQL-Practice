WITH cte AS (SELECT category,product,
SUM(spend) AS total_spend,
DENSE_RANK() OVER(
PARTITION BY category
ORDER BY SUM(spend) DESC
) rank_num
FROM product_spend
WHERE YEAR(transaction_date)='2022'
GROUP BY category,product)

SELECT category,product,total_spend
FROM cte 
WHERE rank_num=1 OR rank_num=2;
