# linija koja pocinje s hash (shift+3)
# ovo je SQL skripta
# naredba za izvodenje  
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Leo380\Documents\edunovapp25\dj_vrtic.sql

drop database if exists dj_vrtic;
create database dj_vrtic;
use dj_vrtic;
       
 create table skupina(
 sifra int not null primary key auto_increment,
 naziv varchar(50) not null,
 ucionica varchar(50),
 djeca int,
 odgajateljica int
 );

create table djeca(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
ime_roditelja varchar(50) not null,
dob char(3),
skupina int
);

create table odgajateljica(
sifra int not null primary key auto_increment,
ime varchar(50) not null,
prezime varchar(50) not null,
sprema int not null,
email varchar(100) not null,
iban varchar(50) not null,
brojmobitela varchar(50) not null,
skupina int
);

create table sprema(
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
stupanj varchar(50),
kvalifikaciskiokvir varchar(50)
);

alter table djeca add foreign key (skupina) references skupina(sifra);
alter table odgajateljica add foreign key (sifra) references skupina(sifra);
alter table odgajateljica add foreign key (sprema) references sprema(sifra); 
