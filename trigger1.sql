CREATE TRIGGER PreventDuplicateGameInWishlist
ON WISHLIST
AFTER INSERT
AS
BEGIN
    DECLARE @UserID INT, @GameID INT;
    
   
    SELECT @UserID = UserID, @GameID = GameID FROM INSERTED;

    IF EXISTS (SELECT 1 FROM LIBRARY WHERE UserID = @UserID AND GameID = @GameID)
    BEGIN
        DELETE FROM WISHLIST WHERE UserID = @UserID AND GameID = @GameID;

        RAISERROR('You cannot add a game to your wishlist that is already in your library.', 16, 1);
    END
END;
