-- PROCEDURA PER CALCOLARE IL TOT PUNTI DECURTATI IN BASE ALLA DATA PASSATA DA FUORI
CREATE PROCEDURE TotDecurtamentoPuntiInData @ThisDate DATE
AS
BEGIN
	SELECT SUM(DecurtamentoPunti) AS TotDecurtamentoPuntiInDate 
	FROM Verbale
	WHERE DataViolazione = @ThisDate
END
GO
