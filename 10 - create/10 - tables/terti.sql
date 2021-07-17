create table terti(
 id number(10) not null,
 nume varchar2(64) not null,
 prenume varchar2(64) not null,
 cnp_cif varchar2(32) not null,
 denumire_societate varchar2(128),
 parola varchar2(64) not null,
 constraint terti_pk primary key (id)
);