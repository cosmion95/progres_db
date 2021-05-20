create table puncte_lucru(
 id number(10) not null,
 tert_id number(10) not null,
 denumire varchar2(128) not null,
 domeniu_id number(10) not null,
 localitate_id number(10) not null,
 strada varchar2(128) not null,
 nr_strada varchar2(16) not null,
 telefon varchar2(64) not null,
 cuvinte_cheie varchar2(256),
 rata_prezenta_minima number(10) default 50,
 minim_timp_estimat number(10) default 30 not null,
 zile_rezervari_max number(10) default 60
 constraint puncte_lucru_pk primary key (id)
);