# linija koja pocinje s hash (shift+3)
# ovo je SQL skripta
# naredba za izvodenje 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Leo380\Documents\edunovapp25\udruga_za_zastitu_zivotinja.sql
drop database if exists udruga_za_zastitu_zivotinja;
create database udruga_za_zastitu_zivotinja;
use udruga_za_zastitu_zivotinja;

create table udruga(
naziv varchar(50),
adresa varchar(50),
oib varchar(50),
usluga char(10)
);

create table osoba(
    ime varchar(50),
    prezime varchar(50),
    iban char(10)
);

create table sticenik(
    ime varchar(50),
    vrsta varchar(50),
    broj_cipa char(10)
);
create table usluga(
    naziv_usluge varchar(50),
    trajanje varchar(50),
    cijena char(10)
);