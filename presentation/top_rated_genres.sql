SELECT TOP 10 g.Genre, AVG(gm.Rating) AS AverageRating
FROM GAMES g
JOIN LIBRARY l ON g.GameID = l.GameID
JOIN GAMES gm ON l.GameID = gm.GameID
GROUP BY g.Genre
ORDER BY AverageRating DESC;
