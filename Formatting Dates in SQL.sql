-- FORMATTING DATES
SELECT message_id,
sent_date,
DATE_FORMAT(sent_date,'%Y-%m-%d %H:%i:%s') AS formatted_iso8601,
DATE_FORMAT(sent_date,'%Y-%m-%d %h:%i:%s %p') AS formatted_12hr,
DATE_FORMAT(sent_date,'%M %D,%Y') AS formatted_longmonth,
DATE_FORMAT(sent_date,'%b %d,%Y') AS formatted_shortmonth,
DATE_FORMAT(sent_date,'%d %M %Y') AS formatted_daymonthyear,
DATE_FORMAT(sent_date,'%M') AS formatted_month,
DATE_FORMAT(sent_date,'%W') AS formatted_dayofweek
FROM messages
LIMIT 1;
