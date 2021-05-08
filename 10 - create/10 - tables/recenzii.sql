create table recenzii(
 id number(10) not null,
 punct_lucru_id number(10) not null,
 client_id number(10) not null,
 recenzie varchar2(256) not null,
 creat_la date default sysdate not null,
 constraint review_pk primary key (id)
);