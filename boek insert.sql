-- Filiaal
-- Rokin 9, Amsterdam, 0205231481
-- Oudegracht 112-b, Utrecht, 0302335200
-- Coolsingel 129, Den Haag, 0104132070
-- Kerkstraat 27, 's-hertogenbosch, 0733020100

insert into filiaal values (0, 'Rokin 9', 'Amsterdam', '0205231481');
insert into filiaal values (1, 'Oudegracht 112-b', 'Utrecht', '0302335200');
insert into filiaal values (2, 'Coolsingel 129', 'Den Haag', '0104132070');
insert into filiaal values (3, 'Kerkstraat 27', '''s-hertogenbosch', '0205231481');

insert into auteur values (0, 'Naam Achternaam', 'Straatnaam 1', 2000, 'https://nl.wikipedia.org/wiki/Auteur');
insert into auteur values (1, 'Naam2 Achternaam', 'Straatnaam 3', 2001, 'https://nl.wikipedia.org/wiki/Auteur');
insert into auteur values (2, 'Naam3 Achternaam', 'Straatnaam 5', 2002, 'https://nl.wikipedia.org/wiki/Auteur');
insert into auteur values (3, 'Naam4 Achternaam', 'Straatnaam 7', 2003, 'https://nl.wikipedia.org/wiki/Auteur');
insert into auteur values (4, 'Naam5 Achternaam', 'Straatnaam 9', 2004, 'https://nl.wikipedia.org/wiki/Auteur');
insert into auteur values (5, 'Naam6 Achternaam', 'Straatnaam 11', 2005, 'https://nl.wikipedia.org/wiki/Auteur');
insert into auteur values (6, 'Naam7 Achternaam', 'Straatnaam 13', 2006, 'https://nl.wikipedia.org/wiki/Auteur');
insert into auteur values (7, 'Naam8 Achternaam', 'Straatnaam 15', 2007, 'https://nl.wikipedia.org/wiki/Auteur');
insert into auteur values (8, 'Naam9 Achternaam', 'Straatnaam 17', 2008, 'https://nl.wikipedia.org/wiki/Auteur');

insert into uitgever values (0, 'Uitgever1', 'Straatnaam 2', 'Plaatsnaam', '15', 'https://nl.wikipedia.org/wiki/Uitgeverij');
insert into uitgever values (1, 'Uitgever2', 'Straatnaam 4', 'Plaatsnaam', '15', 'https://nl.wikipedia.org/wiki/Uitgeverij');
insert into uitgever values (2, 'Uitgever3', 'Straatnaam 6', 'Plaatsnaam', '15', 'https://nl.wikipedia.org/wiki/Uitgeverij');
insert into uitgever values (3, 'Uitgever4', 'Straatnaam 8', 'Plaatsnaam', '16', 'https://nl.wikipedia.org/wiki/Uitgeverij');
insert into uitgever values (4, 'Uitgever5', 'Straatnaam 10', 'Plaatsnaam', '15', 'https://nl.wikipedia.org/wiki/Uitgeverij');
insert into uitgever values (5, 'Uitgever6', 'Straatnaam 12', 'Plaatsnaam', '15', 'https://nl.wikipedia.org/wiki/Uitgeverij');
insert into uitgever values (6, 'Uitgever7', 'Straatnaam 14', 'Plaatsnaam', '15', 'https://nl.wikipedia.org/wiki/Uitgeverij');
insert into uitgever values (7, 'Uitgever8', 'Straatnaam 16', 'Plaatsnaam', '15', 'https://nl.wikipedia.org/wiki/Uitgeverij');
insert into uitgever values (8, 'Uitgever9', 'Straatnaam 18', 'Plaatsnaam', '15', 'https://nl.wikipedia.org/wiki/Uitgeverij');

insert into boek values (0, 0, 2000, 'boek 0', 0, 0, 0.50);
insert into boek values (1, 1, 2001, 'boek 1', 1, 1, 1.50);
insert into boek values (2, 2, 2002, 'boek 2', 2, 2, 2.52);
insert into boek values (3, 3, 2003, 'boek 3', 3, 3, 3.53);
insert into boek values (4, 4, 2004, 'boek 4', 4, 4, 4.54);
insert into boek values (5, 5, 2005, 'boek 5', 5, 5, 5.55);
insert into boek values (6, 6, 2006, 'boek 6', 6, 6, 6.56);
insert into boek values (7, 7, 2007, 'boek 7', 7, 7, 7.57);
insert into boek values (8, 8, 2008, 'boek 8', 8, 8, 8.58);
insert into boek values (9, 8, 2011, 'boek 11', 8, 8, 11.58);

insert into opslag values (0, 0, 0, 13);
insert into opslag values (1, 1, 1, 21);
insert into opslag values (2, 2, 2, 45);
insert into opslag values (3, 3, 3, 32);
insert into opslag values (4, 0, 4, 64);
insert into opslag values (5, 1, 5, 17);
insert into opslag values (6, 2, 6, 65);
insert into opslag values (7, 3, 7, 33);

insert into opslag values (8, 0, 8, 26);
insert into opslag values (9, 1, 9, 75);
insert into opslag values (10, 2, 0, 33);
insert into opslag values (11, 3, 1, 56);
insert into opslag values (12, 0, 2, 84);
insert into opslag values (13, 1, 3, 57);
insert into opslag values (14, 2, 4, 36);
insert into opslag values (15, 3, 5, 76);


-- a_devries@adelaarsnest.nl, Arend de Vries, 0612345678, Adelaarsnest 12, Haarlem
-- bboer@boeren.nl, Bert Boer, 0623456789, Mesthoop 1, Dorp
-- c_kordaat@gmail.com, Cornelis Kordaat, 0634567890, Kerkstraat 11, Utrecht

insert into klant values (0, 'a_devries@adelaarsnest.nl', 'Arend de Vries', '0612345678', 'Adelaarsnest 12', 'Haarlem');
insert into klant values (1, 'bboer@boeren.nl', 'Bert Boe', '0623456789', 'Mesthoop 1', 'Dorp');
insert into klant values (2, 'c_kordaat@gmail.com', 'Cornelis Kordaat', '0634567890', 'Kerkstraat 11', 'Utrecht');

insert into wagen values (0, 0);
insert into bestelling values (0, 0, 0, 1);

insert into bestelling values (1, 1, 0, 1);

insert into wagen values (1, 1);
insert into bestelling values (2, 2, 1, 4);

insert into wagen values (2, 2);
insert into bestelling values (3, 0, 2, 3);


insert into bestelling values (4, 2, 0, 1);

