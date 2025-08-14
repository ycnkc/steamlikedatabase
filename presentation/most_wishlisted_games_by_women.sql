SELECT G.Title, COUNT(*) AS WishlistCount
FROM Wishlist W
JOIN Users U ON W.UserID = U.UserID
JOIN Games G ON W.GameID = G.GameID
WHERE U.Gender = 'F'
GROUP BY G.Title
ORDER BY WishlistCount DESC;
