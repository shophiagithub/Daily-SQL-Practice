SELECT
  platform,
  ROUND(AVG(CASE 
    WHEN engagement_rate>=8.0 THEN 1
    ELSE 0
  END),2) AS avg_high_engagement,
  ROUND(AVG(CASE 
    WHEN engagement_rate<8.0 THEN 1
    ELSE 0
  END),2) AS avg_low_engagement
FROM marvel_avengers
GROUP BY platform;
