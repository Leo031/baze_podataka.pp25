# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Leo380\Documents\edunovapp25\zupanija.sql
drop database if exists regionalna_samouprava;
create database regionalna_samouprava default charset utf8mb4;
use regionalna_samouprava;

create table zupanija (
sifra int not null primary key auto_increment,
naziv varchar(50),
zupan varchar(50)
);

create table opcina (
    sifra int not null primary key auto_increment,
    zupanija int not null,
    naziv varchar(30)
);
alter table opcina add foreign key (zupanija) references zupanija(sifra);

insert into zupanija (naziv)
values ('Osječko-baranjska županija');


insert into zupanija (naziv)
values ('Dubrovačko-neretvanska');

insert into zupanija (naziv, zupan)
values ('Zagrebačka', 'Željko Jukić');

insert into opcina (zupanija, naziv)
values (1, 'Vuka');
insert into opcina (zupanija,naziv)
values (1,'Tenja');

insert into opcina (zupanija,naziv)
values (2,'Općina Ploče');

insert into opcina (zupanija,naziv)
values (2, 'Metković');
insert into opcina(zupanija,naziv)
values(3,'Dubrava');