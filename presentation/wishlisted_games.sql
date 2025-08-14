SELECT W.UserID, U.Username, G.GameID, G.Title, G.Price, G.Genre
FROM Wishlist W
JOIN Users U ON W.UserID = U.UserID
JOIN Games G ON W.GameID = G.GameID
ORDER BY G.Title ASC;
