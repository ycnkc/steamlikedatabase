SELECT TOP 5 u.Username, COUNT(l.GameID) AS GamesOwned
FROM USERS u
JOIN LIBRARY l ON u.UserID = l.UserID
GROUP BY u.Username
ORDER BY GamesOwned DESC;
