INSERT INTO Area (idArea, cardinal_location) 
VALUES (1,south),(2,north),(3,east),(4,west);

INSERT INTO Concerts (idConcerts, band, duration, time_play, Days_idDays, Area_idArea)
VALUES (1, RedHotChilliPeppers, 1.30  ,  2230 , 1, 1),
(2, RadioHead, 1.5  ,  2200 , 2, 1),
(3, Gorilaz, 1  ,  2100 , 1, 2),
(4, TalkingHeads , 0.5  ,  2100 , 2, 3),
(5, TheCure, 0.75 , 2000, 2, 4);

INSERT INTO Toilets (idToilets, Area_idArea)
VALUES (1,1), (2,1), (3,2), (4,2),(5,3), (6,3), (7,4), (8,4);

INSERT INTO Instruments (idInstruments, kind)
VALUES (1, guitar ), (2, drums), (3, bass), (4, guitar), (5, piano), (6,drums);

INSERT INTO Concerts_has_Instruments (Concerts_idConcerts, Instruments_idInstruments)
VALUES ((SELECT ID FROM Concerts WHERE Area_idArea = 1), 2),
((SELECT ID FROM Concerts WHERE Area_idArea = 2), 6);

INSERT INTO Tickets (name_surname , email, national_id)
VALUES ( "Peter Gabriel" , "petergabriel@yahoo.com" , 42555887), ( "Jorge Drexler" , "jorgedrexler@gmail.com" , 43787415), ("Pedro Smith", "pedrosmith@gmail.com" , 43787415);

INSERT INTO Days (idDays, date_and_month)
VALUES (1, 23/11/2022), (2, 25/11/2022);

INSERT INTO Tickets_has_Days (Tickets_idTickets, Days_idDays)
VALUES (1, 1), (1,2), (2,1);