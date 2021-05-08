create table localitati(
    id number(10) not null,
    judet_id number(10) not null,
    denumire varchar2(64) not null,
    cod_postal varchar2(16) not null,
    latitudine number(10,6) not null,
    longitudine number(10,6) not null,
    constraint localitate_pk primary key (id),
    constraint localitate_uk unique (judet_id, denumire)
);