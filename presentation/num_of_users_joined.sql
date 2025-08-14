SELECT YEAR(AccountCreationDate) AS JoinYear, COUNT(*) AS TotalUsers
FROM USERS
GROUP BY YEAR(AccountCreationDate)
ORDER BY JoinYear ASC;
