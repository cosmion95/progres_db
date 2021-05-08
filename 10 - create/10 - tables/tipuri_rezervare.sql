create table tipuri_rezervare(
 id number(10) not null,
 punct_lucru_id number(10) not null,
 denumire varchar2(64) not null,
 validare_automata varchar2(1) default 'N' not null,
 durata number(10) not null,
 creat_de number(10) not null,
 creat_la date default sysdate not null,
 constraint tipuri_rezervare_pk primary key (id),
 constraint tipuri_rezervare_valid check (validare_automata in ('D', 'N'))
);