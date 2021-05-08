create table exceptii_program(
 id number(10) not null,
 punct_lucru_id number(10) not null,
 data date not null,
 ora_start number(10,6) not null,
 ora_final number(10,6) not null,
 constraint exceptii_program_pk primary key (id)
);