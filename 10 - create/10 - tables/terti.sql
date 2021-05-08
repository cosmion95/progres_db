create table terti(
 id number(10) not null,
 nume varchar2(64) not null,
 prenume varchar2(64) not null,
 email varchar2(64) not null,
 username varchar2(32) not null,
 parola varchar2(64) not null,
 constraint terti_pk primary key (id),
 constraint terti_email_uk unique key (email)
);