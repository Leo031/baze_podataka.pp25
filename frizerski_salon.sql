# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Leo380\Documents\GitHub\baze_podataka.pp25\frizerski_salon.sql
drop database if exists frizerski_salon;
create database frizerski_salon default charset utf8mb4;
use frizerski_salon;

create table djelatnica(
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban char(21) not null
);

create table musterija(
    sifra int not null primary key auto_increment,
    osoba int not null,
    usluga int not null,
    djelatnica int not null,
    termin datetime
);

create table usluga(
    sifra int not null primary key auto_increment,
    naziv_usluge varchar(50)not null,
    cijena decimal(18,2),
    trajanje datetime
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50)not null,
    prezime varchar(50) not null,
    email varchar(50),
    oib char(11) not null
);

alter table musterija add foreign key (djelatnica) references djelatnica(sifra);
alter table musterija add foreign key (usluga) references usluga(sifra);
alter table musterija add foreign key (osoba) references osoba(sifra);
alter table djelatnica add foreign key (osoba) references osoba(sifra);

insert into osoba(ime,prezime,email,oib)
values ('Marko', 'Marić','MarkoM@gmail.com', '25533399900');

insert into osoba(ime,prezime,email,oib)
values ('Josipa', 'Jozić', 'Jopa3422@gmail.com', '37814097084');

insert into usluga (naziv_usluge, cijena)
values ('brijanje', '20,90');

insert into usluga (naziv_usluge, cijena)
values ('Šišanje', '30,90');

insert into djelatnica (osoba, iban)
values (1, 'HR5825000093121192557');

insert into djelatnica (osoba, iban)
values (2, 'HR5724020066188884861');

insert into musterija (osoba,djelatnica,usluga,termin)
values (1,1,1, '2022-05-10 09:00:00');

insert into musterija (osoba,djelatnica,usluga,termin)
values (1,1,2, '2022-05-11 17:30:00');

insert into musterija (osoba,djelatnica,usluga,termin)
values (2,2,1, '2022-05-12 08:00:00');

