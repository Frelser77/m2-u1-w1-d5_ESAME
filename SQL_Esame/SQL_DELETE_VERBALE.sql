-- PROCEDURE PER ELIMINARE UN VERBALE
CREATE PROCEDURE DeleteVerbale @IDVerbale INT
AS
BEGIN TRY

DELETE FROM Verbale
WHERE idVerbale = @IDVerbale

    IF @@ROWCOUNT = 0
        THROW 50001, 'Il Verbale con l''ID specificato non esiste o è già stato eliminato.', 1;
END TRY
BEGIN CATCH
    -- l'errore originale che è stato catturato dal CATCH
    THROW;
END CATCH
GO
