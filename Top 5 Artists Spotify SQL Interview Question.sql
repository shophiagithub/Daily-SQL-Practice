WITH cte AS 
(SELECT a.artist_name,
DENSE_RANK() OVER(
ORDER BY COUNT(g.song_id) DESC
) AS artist_rank
FROM global_song_rank g
JOIN songs s ON g.song_id=s.song_id
JOIN artists a ON s.artist_id=a.artist_id
WHERE rank<=10
GROUP BY a.artist_name)

SELECT artist_name,artist_rank
FROM cte 
WHERE artist_rank<=5;
