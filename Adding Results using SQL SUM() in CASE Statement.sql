SELECT
  platform,
  SUM(CASE 
    WHEN followers>=500000 THEN 1
    ELSE 0
  END) AS high_engagement_followers_sum,
  SUM(CASE 
    WHEN followers<500000 THEN 1
    ELSE 0
  END) AS low_engagement_followers_sum
FROM marvel_avengers
GROUP BY platform;
