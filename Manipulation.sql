select * FROM Concerts;

SELECT i.kind, c.band, h.Instruments_idInstruments FROM Concerts_has_Instruments
JOIN Concerts c on c.idConcerts = h.Concerts_idConcerts
JOIN Instruments i on i.idInstruments = h.Instruments_idInstruments 
WHERE c.band = "RedHotChilliPeppers" and i.kind = "drums";	

