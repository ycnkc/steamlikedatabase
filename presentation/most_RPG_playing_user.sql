SELECT TOP 1
    L.UserID,
    SUM(L.Playtime) AS TotalRPGPlaytime
FROM 
    LIBRARY L
JOIN 
    GAMES G ON L.GameID = G.GameID
WHERE 
    G.Genre = 'RPG'
GROUP BY 
    L.UserID
ORDER BY 
    TotalRPGPlaytime DESC;
