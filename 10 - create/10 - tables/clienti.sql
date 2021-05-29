create table clienti(
 id number(10) not null,
 localitate_id number(10) not null,
 nume varchar2(64) not null,
 prenume varchar2(64) not null,
 email varchar2(64) not null,
 parola varchar2(256) not null,
 salt varchar2(64) not null,
 telefon varchar2(64) not null,
 rata_prezenta number(3) default 100 not null,
 cont_valid varchar2(1) default 'N',
 constraint clienti_pk primary key (id),
 constraint clienti_email_uk unique (email),
 constraint clienti_user_uk unique (username),
 constraint clienti_cont_v check (cont_valid in ('D', 'N'))
);