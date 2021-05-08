create table mesagerie(
 id number(10) not null,
 rezervare_id number(10) not null,
 client_id number(10) not null,
 angajat_id number(10),
 mesaj varchar2(128),
 citit_client varchar2(1) default 'N' not null,
 constraint mesagerie_pk primary key (id),
 constraint mesagerie_citit_client check (citit_client in ('D', 'N'))
);