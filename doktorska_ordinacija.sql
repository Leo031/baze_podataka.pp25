# linija koja pocinje s hash (shift+3)
# ovo je SQL skripta
# naredba za izvodenje  
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Leo380\Documents\edunovapp25\doktorska_ordinacija.sql

drop database if exists doktorska_ordinacija;
create database doktorska_ordinacija;
use doktorska_ordinacija;

create table doktorska_ordinacija(
    naziv varchar(50),
    lijecenje varchar(50),
    cijena varchar(50),
    certificiran char(10)
);

create table medicinska_sestra(
    ime varchar(50),
    prezime varchar(50),
    email varchar(50),
    oib char(10)
);

create table Pacijent(
    ime varchar(50),
    prezime varchar(50),
    kontakt varchar(50),
    broj_ugovora char(10)
);

create table usluga(
    naziv varchar(50),
    trajanje varchar(50),
    cijena varchar(50),
    broj_ugovora char(10)
);

