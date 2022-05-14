# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Leo380\Documents\GitHub\baze_podataka.pp25\zupanija.sql
drop database if exists regionalna_samouprava;
create database regionalna_samouprava default charset utf8mb4;
use regionalna_samouprava;

create table zupanija(
sifra int not null primary key auto_increment,
naziv varchar(50),
zupan varchar(50)
);

create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    zupanija int not null
);

create table mjesto(
    sifra  int not null primary key auto_increment,
    opcina int not null,
    naziv varchar(50),
    zupanija int not null
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int not null,
    naziv varchar(50)
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);
alter table zupan add foreign key (zupanija) references zupanija(sifra);

insert into zupanija (naziv)
values ('Splitsko-dalmatinska zupanija');

insert into zupanija (naziv)
values ('Istarska');

insert into zupanija (naziv, zupan)
values ('Zadarska', 'Božidar Longin');

insert into opcina (zupanija, naziv)
values (1, 'Seget');
insert into opcina (zupanija,naziv)
values (1,'Jelsa');
insert into opcina (zupanija, naziv)
values (1,'Dugi rat');


insert into opcina (zupanija,naziv)
values (2,'Fažana');
insert into opcina (zupanija,naziv)
values (2, 'Medulin');
insert into opcina(zupanija,naziv)
values(2,'Motovun');

insert into opcina (zupanija,naziv)
values (3,'Posedarje');
insert into opcina (zupanija,naziv)
values (3, 'Vrsi');
insert into opcina(zupanija,naziv)
values(3,'Škabrnja');

insert into mjesto (zupanija,opcina,naziv)
values (1,1, 'Bristivica');
insert into mjesto (zupanija,opcina,naziv)
values (1,2, 'Vrisnik');
insert into mjesto (zupanija,opcina,naziv)
values (1,3, 'Jesenice');

insert into mjesto (zupanija,opcina,naziv)
values (2,1, 'Fažana');
insert into mjesto (zupanija,opcina,naziv)
values (2,2, 'Valbandon');

insert into mjesto (zupanija,opcina,naziv)
values (3,1, 'Grgurice');
insert into mjesto (zupanija,opcina,naziv)
values (3,2, 'Poljica');
insert into mjesto (zupanija,opcina,naziv)
values (3,3, 'Prkos');
