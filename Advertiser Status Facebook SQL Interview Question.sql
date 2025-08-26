SELECT
  COALESCE(a.user_id, d.user_id) AS user_id,
  CASE
    WHEN a.user_id IS NULL THEN 'NEW'
    WHEN d.paid IS NULL THEN 'CHURN'
    WHEN d.paid IS NOT NULL AND a.status = 'CHURN' THEN 'RESURRECT'
    ELSE 'EXISTING'
  END AS new_status
FROM advertiser a
LEFT JOIN daily_pay d ON a.user_id = d.user_id

UNION

SELECT 
  COALESCE(a.user_id, d.user_id) AS user_id,
  CASE
    WHEN a.user_id IS NULL THEN 'NEW'
    WHEN d.paid IS NULL THEN 'CHURN'
    WHEN d.paid IS NOT NULL AND a.status = 'CHURN' THEN 'RESURRECT'
    ELSE 'EXISTING'
  END AS new_status
FROM advertiser a
RIGHT JOIN daily_pay d ON a.user_id = d.user_id

ORDER BY user_id;
