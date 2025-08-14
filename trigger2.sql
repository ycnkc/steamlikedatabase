CREATE TRIGGER PreventReviewWithoutLibrary
ON REVIEWS
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @UserID VARCHAR(50);
    DECLARE @GameID VARCHAR(10);

    SELECT @UserID = UserID, @GameID = GameID FROM inserted;

    IF NOT EXISTS (SELECT 1 FROM LIBRARY WHERE UserID = @UserID AND GameID = @GameID)
    BEGIN
        RAISERROR('You cannot review a game that is not in your library.', 16, 1);
    END
    ELSE
    BEGIN
        
        INSERT INTO REVIEWS (UserID, GameID, ReviewText, Rating, DateReviewed)
        SELECT UserID, GameID, ReviewText, Rating, DateReviewed FROM inserted;
    END
END;
