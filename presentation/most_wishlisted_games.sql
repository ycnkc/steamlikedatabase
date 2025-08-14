SELECT G.GameID, G.Title, COUNT(W.UserID) AS TotalWishlists
FROM Wishlist W
JOIN Games G ON W.GameID = G.GameID
GROUP BY G.GameID, G.Title
ORDER BY TotalWishlists DESC;
