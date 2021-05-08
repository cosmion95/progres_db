 create table coduri(
    id number(10) not null, 
	cod varchar2(32) not null, 
	succes varchar2(1) default 'D' not null, 
	eroare varchar2(1) default 'N' not null,
    constraint coduri_pk primary key (id)
   );