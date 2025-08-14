SELECT u.Username, COUNT(g.GameID) AS GamesOwned
FROM USERS u
LEFT JOIN LIBRARY l ON u.UserID = l.UserID
LEFT JOIN GAMES g ON l.GameID = g.GameID
GROUP BY u.Username;
