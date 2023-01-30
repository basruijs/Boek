-- Database: boek

DROP DATABASE IF EXISTS boek;

CREATE DATABASE boek
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United Kingdom.1252'
    LC_CTYPE = 'English_United Kingdom.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	
create table filiaal(
	filiaalnr int primary key,
	adres varchar(30),
	plaats varchar(30),
	telnr varchar(30)
	
);

create table opslag(
	opslagnr int primary key,
	filiaalnr int,
	boeknr int,
	aantal int
);

create table boek(
	boeknr int primary key,
	ISBN int,
	uitgavejaar int,
	titel varchar(30),
	auteurnr int,
	uitgevernr int,
	prijs money
);

create table auteur(
	auteurnr int primary key,
	naam varchar(30),
	adres varchar(30),
	geboortejaar int,
	url varchar(255)
);
-- Van de uitgever willen we een naam, adres, plaats, telefoonnummer en 
-- URL ( website van de uitgever ).
create table uitgever(
	uitgevernr int primary key,
	naam varchar(30),
	adres varchar(30),
	plaats varchar(30),
	telnr varchar(30),
	url varchar(255)
);

-- Een klant kan alleen boeken toevoegen aan een winkelmandje zodra 
-- de klant een online
-- account heeft. Een account heeft een email, naam, telefoonnummer, adres en plaats
create table klant(
	klantnr int primary key,
	email varchar(30),
	naam varchar(30),
	telnr varchar(30),
	adres varchar(30),
	plaats varchar(30)
);

create table bestelling (
	bestelnr int primary key,
	boeknr int,
	wagennr int
);

create table wagen (
	wagennr int primary key,
	klantnr int
);



alter table boek 
add foreign key (auteurnr) references auteur(auteurnr);

alter table boek 
add foreign key (uitgevernr) references uitgever(uitgevernr);

alter table bestelling 
add foreign key (boeknr) references boek(boeknr);

alter table bestelling 
add foreign key (wagennr) references wagen(wagennr);

alter table wagen 
add foreign key (klantnr) references klant(klantnr);

alter table opslag 
add foreign key (filiaalnr) references filiaal(filiaalnr);

alter table opslag 
add foreign key (boeknr) references boek(boeknr);

alter table bestelling
add aantal int; 
