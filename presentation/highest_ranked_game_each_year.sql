WITH RankedGames AS (
    SELECT 
        Title,
        Genre,
        Rating,
        ReleaseDate AS ReleaseYear,
        RANK() OVER (PARTITION BY ReleaseDate ORDER BY Rating DESC) AS Rank
    FROM GAMES
    WHERE Rating IS NOT NULL
)
SELECT ReleaseYear, Title, Genre, Rating
FROM RankedGames
WHERE Rank = 1
ORDER BY ReleaseYear ASC;
