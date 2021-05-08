create table angajati(
 id number(10) not null,
 punct_lucru_id number(10) not null,
 nume varchar2(64) not null,
 prenume varchar2(64) not null,
 username varchar2(32) not null,
 parola varchar2(64) not null,
 telefon varchar2(64) not null,
 manager varchar2(1) default 'N' not null,
 functie varchar2(64) not null,
 constraint angajati_pk primary key (id),
 constraint angajati_manager check (manager in ('D', 'N'))
);