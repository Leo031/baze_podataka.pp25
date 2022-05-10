# linija koja pocinje s hash (shift+3)
# ovo je SQL skripta
# naredba za izvodenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Leo380\Documents\edunovapp25\urar.sql

drop database if exists urar;
create database urar;
use urar;

create table urar(
    ime varchar(50),
    prezime varchar(50),
    usluga varchar(50),
    segrt char(19)
);

create table segrt(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    iban char(10)
);

create table usluga(
    naziv varchar(50),
    cijena varchar(50),
    trajanje varchar(50),
    broj_ugovora char(10)
);

create table sat(
    marka varchar(50),
    stanje varchar(50),
    serijski_broj char(10)
);