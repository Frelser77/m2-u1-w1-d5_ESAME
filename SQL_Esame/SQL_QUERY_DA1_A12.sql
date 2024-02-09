 
-- #1# CONTEGGIO VERBALI TRASCRITTI
-- SELECT COUNT(*) AS TotVerbali 
-- FROM Verbale;
-- FINE

--#2# CONTEGGIO VERBALI RAGGRUPPATI PER ANAGRAFE
-- SELECT fk_IDAnagrafica, COUNT(*) AS TotVerbaliAnagrafica
-- FROM Verbale
-- GROUP BY fk_IDAnagrafica;
-- FINE


-- #3#  CONTEGGIO VERBALI RGGRUPPATI PER TIPO DI VIOLAZIONE
-- SELECT fk_idViolazione, COUNT(*) AS TotVerbaliPerViolazione
-- FROM Verbale
-- GROUP BY fk_idViolazione;
-- FINE


-- #4# TOT PUNTI DECURTATI PER OGNI ANAGRAFE
-- SELECT fk_IDAnagrafica, SUM(DecurtamentoPunti) AS TotPuntiDecurtati
-- FROM Verbale
-- GROUP BY fk_IDAnagrafica;
-- FINE

--#5# DATI PER I RESIDENTI A PALERMO
/*SELECT A.Cognome, A.Nome, V.DataViolazione, V.IndirizzoViolazione, V.Importo, V.DecurtamentoPunti
FROM Verbale AS V
LEFT JOIN Anagrafica AS A ON 
V.fk_IDAnagrafica = A.idAnagrafica
WHERE A.Città = 'Palermo';*/
--FINE

-- #6# VIOLAZIONE AVVENUTA TRA IL FEBRAIO 2018 E LUGLIO 2018
/*SELECT A.Cognome, A.Nome, V.DataViolazione, V.IndirizzoViolazione, V.Importo, V.DecurtamentoPunti
FROM Verbale AS V
LEFT JOIN Anagrafica AS A ON 
V.fk_IDAnagrafica = A.idAnagrafica
WHERE V.DataViolazione BETWEEN '2018-02-01' AND '2018-07-31 23:59:59';*/
-- FINE

-- #7# TOTALE IMPORT IPER OGNI ANAGRAFICO
/* SELECT fk_idAnagrafica, SUM(Importo) AS TotImportoDaPagare
FROM Verbale 
GROUP BY fk_idAnagrafica */
-- FINE

-- #8# TUTTI GLI ANAGRAFICI RESIDENTI A PALERMO
-- SELECT * FROM Anagrafica
-- WHERE Città = 'Palermo'
-- FINE

--#9# DATAVAVIOLAZIONE IMPORTO E DECURTAMENTO PUNTI RELATIVI A UNA CERTA DATA primo gennaio 2020
/* SELECT V.DataViolazione, V.Importo, V.DecurtamentoPunti
FROM Verbale AS V 
INNER JOIN Anagrafica AS A ON
V.DataViolazione >= '20200101'*/
-- FINE

-- #10# CONTEGGIO VIOLAZIONI CONTESTATE RAGGRUPPATE PER NOMINATIVO AGENTE
/* SELECT Nominativo_Agente, COUNT(IdVerbale) AS TotVerbaliPerAgente
FROM Verbale
GROUP BY Nominativo_Agente; */
-- FINE

-- #11# DATI PER LE VIOLAZIONI CON DECURTAMENTOPUNTI SUPERIORE A 5 
/* SELECT A.Cognome, A.Nome, V.IndirizzoViolazione, V.DataViolazione, V.Importo, V.DecurtamentoPunti
FROM Verbale AS V
LEFT JOIN Anagrafica AS A ON 
V.fk_IDAnagrafica = A.idAnagrafica
WHERE DecurtamentoPunti > 5 */
-- FINE

-- #12# DATI ANAGRAFICI PER TUTTE LE VIOLAZIONI CHE SUPERANO I 1400€
/* SELECT A.Cognome, A.Nome, V.IndirizzoViolazione, V.DataViolazione, V.Importo, V.DecurtamentoPunti
FROM Verbale AS V
LEFT JOIN Anagrafica AS A ON 
V.fk_IDAnagrafica = A.idAnagrafica
WHERE Importo > 1400.0000 */


 