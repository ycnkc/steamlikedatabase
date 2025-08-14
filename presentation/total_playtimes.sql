SELECT g.Title, SUM(l.Playtime) AS TotalPlaytime
FROM LIBRARY l
JOIN GAMES g ON l.GameID = g.GameID
GROUP BY g.Title
ORDER BY TotalPlaytime DESC;
