SELECT TOP 5 G.Title, G.[Price]
FROM LIBRARY L
JOIN GAMES G ON L.[GameID] = G.[GameID]
GROUP BY G.Title, G.[Price]
ORDER BY G.[Price] ASC;
