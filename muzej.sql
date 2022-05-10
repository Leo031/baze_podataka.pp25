# linija koja pocinje s hash (shift+3)
# ovo je SQL skripta
# naredba za izvodenje  
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Leo380\Documents\edunovapp25\muzej.sql

drop database if exists muzej;
create database muzej;
use muzej;

create table muzej(
    naziv varchar(50),
    adresa varchar(50),
    oib char(10)
);

create table izlozba(
    naziv varchar(50),
    trajanje varchar(50),
    broj_izlozbe char(10)
);

create table korisnik(
    ime varchar(50),
    prezime varchar(50),
    email varchar(50),
    obi char(10)
);
create table sponzor(
    naziv varchar(50),
    oib varchar(50),
    email char(10)
);