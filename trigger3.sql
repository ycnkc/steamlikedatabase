CREATE TRIGGER PreventDuplicateWishlist
ON WISHLIST
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM LIBRARY L
        INNER JOIN INSERTED I ON L.UserID = I.UserID AND L.GameID = I.GameID
    )
    BEGIN
        
        RAISERROR ('The game is already in the user''s library and cannot be added to the wishlist.', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        
        INSERT INTO WISHLIST (WishlistID, UserID, GameID, DateAdded)
        SELECT WishlistID, UserID, GameID, DateAdded
        FROM INSERTED;
    END
END;
