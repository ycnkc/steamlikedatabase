SELECT Genre, AVG(Playtime) AS AveragePlaytime
FROM Library
JOIN Games ON Library.GameID = Games.GameID
GROUP BY Genre
ORDER BY AveragePlaytime DESC;
