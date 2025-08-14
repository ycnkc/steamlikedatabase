SELECT 
    AVG(G.[Price]) AS AveragePrice,
    MIN(G.[Price]) AS CheapestPrice,
    MAX(G.[Price]) AS MostExpensivePrice
FROM GAMES G;
