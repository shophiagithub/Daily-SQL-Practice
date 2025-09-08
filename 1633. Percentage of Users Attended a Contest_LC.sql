# Write your MySQL query statement below
SELECT r.contest_iD,
ROUND((COUNT(r.user_id)/(SELECT COUNT(user_id) FROM Users))*100,2) AS percentage
FROM users u
JOIN Register r ON u.user_id=r.user_id
GROUP BY r.contest_id
ORDER BY percentage DESC,contest_id ASC;
