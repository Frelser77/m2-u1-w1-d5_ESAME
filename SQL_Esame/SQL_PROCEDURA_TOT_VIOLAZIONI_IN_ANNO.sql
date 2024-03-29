USE [ComuneDiOria]
GO
/****** Object:  StoredProcedure [dbo].[TotViolazioniInAnno]    Script Date: 09/02/2024 11:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- PROCEDURA PER CALCOLARE IL NUMERO DI VIOLAZIONI IN UN ANNO
ALTER PROCEDURE [dbo].[TotViolazioniInAnno] @Anno INT
AS
BEGIN
	SELECT * FROM Verbale 
	WHERE YEAR(DataViolazione) = @Anno
	ORDER BY DataViolazione ASC
END
