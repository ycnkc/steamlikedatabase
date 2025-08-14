SELECT TOP 5 g.Title, SUM(l.Playtime) AS TotalPlaytime
FROM LIBRARY l
JOIN GAMES g ON l.GameID = g.GameID
JOIN USERS u ON l.UserID = u.UserID
WHERE u.Gender = 'F'
GROUP BY g.Title
ORDER BY TotalPlaytime DESC;
