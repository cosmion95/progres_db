create table domenii(
    id number(10) not null,
    denumire varchar2(128) not null,
    icon_id number(10) not null,
    font_family varchar2(32) not null,
    constraint domeniu_pk primary key (id)
);