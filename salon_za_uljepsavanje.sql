# linija koja pocinje s hash (shift+3)
# ovo je SQL skripta
# naredba za izvodenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Leo380\Documents\edunovapp25\salon_za_uljepsavanje.sql

drop database if exists salon_za_uljepsavanje;
create database salon_za_uljepsavanje;
use salon_za_uljepsavanje;

create table salon_za_uljepsavanje(
    naziv varchar(50),
    adresa varchar(50),
    usluga varchar(50),
    cijena char(10)
);

create table dijelatnica(
    ime varchar(50),
    prezime varchar(50),
    dob varchar(50),
    iban char(10)
);

create table korisnik(
    ime varchar(50),
    prezime varchar(50),
    oib char(10)
);

create table usluga(
    naziv varchar(50),
    trajanje varchar(50),
    cijena varchar(50),
    broj_ugovora char(10)
);