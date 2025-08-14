SELECT SUM(Playtime) AS TotalPlaytime
FROM Library
JOIN Users ON Library.UserID = Users.UserID
WHERE Users.Gender = 'F';
