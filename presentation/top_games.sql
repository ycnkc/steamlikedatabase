SELECT TOP 10 g.Title, AVG(r.Rating) AS AverageRating
FROM GAMES g
LEFT JOIN REVIEWS r ON g.GameID = r.GameID
GROUP BY g.Title
HAVING AVG(r.Rating) IS NOT NULL
ORDER BY AverageRating DESC;
