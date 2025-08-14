SELECT TOP 1 G.Title, G.[Price], G.[ReleaseDate]
FROM LIBRARY L
JOIN GAMES G ON L.[GameID] = G.[GameID]
WHERE G.[ReleaseDate] = 2010 
GROUP BY G.Title, G.[Price], G.[ReleaseDate]
ORDER BY G.[Price] DESC;
