SELECT m.movie_title, s.show_time
FROM Shows s
JOIN Movie m ON s.movie_id = m.movie_id
WHERE s.theatre_id = 1
AND s.show_date = '2024-04-01'
ORDER BY show_time ASC;