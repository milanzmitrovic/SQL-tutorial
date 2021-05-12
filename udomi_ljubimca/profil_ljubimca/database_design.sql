
create schema if not exists profil_ljubimca_schema;

create table profil_ljubimca_schema.tip(id serial primary key , ime varchar(50));

create table profil_ljubimca_schema.velicina(id serial primary key , ime varchar(50));

create table profil_ljubimca_schema.pol(id serial primary key , ime varchar(50));

create table profil_ljubimca_schema.starost(id serial primary key , ime varchar(50));

create table profil_ljubimca_schema.vakcinisan(id serial primary key , ime varchar(50));

create table profil_ljubimca_schema.zdravlje(id serial primary key , ime varchar(50));

create table profil_ljubimca_schema.karakter(id serial primary key , ime varchar(50));

create table profil_ljubimca_schema.posebne_navike(id serial primary key , ime varchar(50));

create table profil_ljubimca_schema.dobar_za_zivot_sa(id serial primary key , ime varchar(50));

create table profil_ljubimca_schema.nije_dobar_za_zivot_sa(id serial primary key , ime varchar(50));


create table profil_ljubimca_schema.transakciona_tabela(id serial primary key ,
                                                        ime_ljubimca varchar(50),
                                                        naziv_udruzenja varchar(50),
                                                        mesto_grad varchar(50),
                                                        tip_id int references profil_ljubimca_schema.tip(id),
                                                        velicina_id int references profil_ljubimca_schema.velicina(id),
                                                        pol_id int references profil_ljubimca_schema.pol(id),
                                                        starost_id int references profil_ljubimca_schema.starost(id),
                                                        vakcinisan_id int references profil_ljubimca_schema.vakcinisan(id),
                                                        zdravlje_id int references profil_ljubimca_schema.zdravlje(id),
                                                        karakter_id int references profil_ljubimca_schema.karakter(id),
                                                        posebne_navike_id int references profil_ljubimca_schema.posebne_navike(id),
                                                        dobar_za_zivot_sa_id int references profil_ljubimca_schema.dobar_za_zivot_sa(id),
                                                        nije_dobar_za_zivot_sa_id int references profil_ljubimca_schema.nije_dobar_za_zivot_sa(id)

                                                       );




insert into profil_ljubimca_schema.tip ( ime)
values ('Pas'),
       ('Mačka'),
       ('Ostalo')
       ;

insert into profil_ljubimca_schema.velicina (ime)
values ('Mali'),
       ('Srednji'),
       ('Veliki')
       ;
insert into profil_ljubimca_schema.pol (ime)
values ('Muški'),
       ('Ženski');


insert into profil_ljubimca_schema.starost (ime)
values ('Junior'),
       ('Adult'),
       ('Senior');


insert into profil_ljubimca_schema.vakcinisan (ime)
values ('Da'),
       ('Ne');

insert into profil_ljubimca_schema.zdravlje (ime)
values ('Sterilisan'),
       ('Posebne potrebe');

insert into profil_ljubimca_schema.karakter (ime)
values ('Hiperaktivan'),
       ('Agresivan'),
       ('Društven'),
       ('Plašljiv'),
       ('Smiren');


insert into profil_ljubimca_schema.posebne_navike (ime)
values ('Da'),
       ('Ne');

insert into profil_ljubimca_schema.dobar_za_zivot_sa (ime)
values ('Decom'),
       ('Psima'),
       ('Mačkama');

insert into profil_ljubimca_schema.nije_dobar_za_zivot_sa (ime)
values ('Decom'),
       ('Psima'),
       ('Mačkama');


-------------

insert into profil_ljubimca_schema.transakciona_tabela ( ime_ljubimca, naziv_udruzenja, mesto_grad, tip_id,
                                                        velicina_id, pol_id, starost_id, vakcinisan_id, zdravlje_id,
                                                        karakter_id, posebne_navike_id, dobar_za_zivot_sa_id,
                                                        nije_dobar_za_zivot_sa_id)
values ('Janko', 'Beta', 'Beograd',1,1,1,1,1,1,1,1,1,1),
       ('Zare','Beta', 'Novi Sad', 2,2,1,2,2,2,2,2,2,2);

-- Query that returns structured info about entered animals
select t1.id,
       t1.ime_ljubimca,
       t1.naziv_udruzenja,
       t1.mesto_grad,
       tip.ime as tip_zivotinje,
       velicina.ime as velicina_zivotinje,
       pol.ime as pol_zivotinje,
       starost.ime as starost_zivotinje,
       vakcinisan.ime as vakcinisan_da_ne,
       zdravlje.ime as zdravlje_zivotinje,
       karakter.ime as karakter_zivotinje,
       posebne_navike.ime as posebne_navike_zivotinje,
       dobar_za_zivot_sa.ime as zivotinja_dobra_za_zivot_sa,
       nije_dobar_za_zivot_sa.ime as zivotinja_nije_dobra_za_zivot_sa

from profil_ljubimca_schema.transakciona_tabela as t1
left join profil_ljubimca_schema.tip
on t1.tip_id = tip.id
left join profil_ljubimca_schema.velicina
on t1.velicina_id = velicina.id
left join profil_ljubimca_schema.pol
on t1.pol_id = pol.id
left join profil_ljubimca_schema.starost
on t1.starost_id = starost.id
left join profil_ljubimca_schema.vakcinisan
on t1.vakcinisan_id = vakcinisan.id
left join profil_ljubimca_schema.zdravlje
on t1.zdravlje_id = zdravlje.id
left join profil_ljubimca_schema.karakter
on t1.karakter_id = karakter.id
left join profil_ljubimca_schema.posebne_navike
on t1.posebne_navike_id = posebne_navike.id
left join profil_ljubimca_schema.dobar_za_zivot_sa
on t1.dobar_za_zivot_sa_id = dobar_za_zivot_sa.id
left join profil_ljubimca_schema.nije_dobar_za_zivot_sa
on t1.nije_dobar_za_zivot_sa_id = nije_dobar_za_zivot_sa.id



