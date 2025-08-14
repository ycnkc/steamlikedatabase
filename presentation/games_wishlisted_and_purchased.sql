SELECT G.Title, COUNT(DISTINCT L.UserID) AS Purchasers, COUNT(DISTINCT W.UserID) AS Wishlisters
FROM Games G
LEFT JOIN Library L ON G.GameID = L.GameID
LEFT JOIN Wishlist W ON G.GameID = W.GameID
GROUP BY G.GameID, G.Title
ORDER BY Wishlisters DESC, Purchasers DESC;
