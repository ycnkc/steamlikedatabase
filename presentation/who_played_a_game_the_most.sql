SELECT 
    u.Username,
    g.Title,
    l.Playtime AS TotalPlaytime
FROM 
    LIBRARY l
JOIN 
    USERS u ON l.UserID = u.UserID
JOIN 
    GAMES g ON l.GameID = g.GameID
WHERE 
    g.GameID = 'CYBERPUNK' 
ORDER BY 
    TotalPlaytime DESC;

