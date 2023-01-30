
--1
select boek.ISBN, boek.titel, sum(bestelling.aantal)
from boek 
inner join bestelling on bestelling.boeknr = boek.boeknr
inner join wagen on bestelling.wagennr = wagen.wagennr
inner join klant on wagen.klantnr = klant.klantnr
group by boek.isbn, boek.titel
;

--1
select klant.naam, klant.email, boek.titel, sum(bestelling.aantal)
from boek
inner join bestelling on bestelling.boeknr = boek.boeknr
inner join wagen on bestelling.wagennr = wagen.wagennr
inner join klant on wagen.klantnr = klant.klantnr
where klant.naam = 'Arend de Vries'
group by klant.naam, klant.email, boek.titel;

--1
select filiaal.adres, opslag.aantal, boek.titel
from boek
inner join opslag on opslag.boeknr = boek.boeknr
inner join filiaal on opslag.filiaalnr = filiaal.filiaalnr;

--1
select auteur.naam, uitgever.naam
from uitgever
inner join boek on boek.uitgevernr = uitgever.uitgevernr
inner join auteur on boek.auteurnr = auteur.auteurnr;

--1
select * from boek where titel like 'b%' OR titel like 'a%';


--1, viewer discretion is advised
--de driedubbele nesten zijn om money naar een string om te zetten, dan
--het £ teken van de string af te halen, en dan weer omzetten naar een double
--zodat van de double het gemiddelde berekend kan worden
--(Dat kan blijkbaar niet met money)
select uitgever.naam, avg(bloop.prijs)
from (select uitgevernr, cast(dubbelop.prijs as double precision) as prijs 
	  from (select uitgevernr, btrim(driedubbel.prijs, '£') as prijs 
	  			from (select uitgevernr, cast(boek.prijs as varchar(50)) as prijs 
	  					from boek 
	  					group by boek.prijs, uitgevernr) driedubbel  
	  				group by driedubbel.prijs, uitgevernr) dubbelop 
	  group by dubbelop.prijs, uitgevernr) bloop
left join uitgever on bloop.uitgevernr = uitgever.uitgevernr
group by uitgever.naam;

--7
select sum(bestelling.aantal) 
from bestelling
inner join boek on boek.boeknr = bestelling.boeknr
where boek.prijs > cast(10.00 as money);


