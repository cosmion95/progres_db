create table judete(
    id number(10) not null,
    denumire varchar2(64) not null,
    prescurtare varchar2(2) not null,
    constraint judete_pk primary key (id),
    constraint judete_uk unique (denumire)
);