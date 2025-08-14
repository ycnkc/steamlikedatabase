SELECT TOP 1 U.Username, COUNT(A.AchievementID) AS TotalAchievements
FROM USERS U
JOIN ACHIEVEMENTS A ON U.UserID = A.UserID
GROUP BY U.Username
ORDER BY TotalAchievements DESC;
