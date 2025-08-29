SELECT e.user_id
FROM emails e
INNER JOIN texts t
ON e.email_id=t.email_id
WHERE t.signup_action='Confirmed' 
AND DATE_ADD(signup_date,INTERVAL 1 DAY)=action_date;
