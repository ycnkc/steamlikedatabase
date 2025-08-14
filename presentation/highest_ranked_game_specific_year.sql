SELECT TOP 1 
    GameID,
    Title,
    Genre,
    Developer,
    Rating,
    ReleaseDate
FROM 
    GAMES 
WHERE 
    ReleaseDate = 2023 
ORDER BY 
    Rating DESC;
