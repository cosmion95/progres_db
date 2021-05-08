create table program(
    id number(10) not null,
    punct_lucru_id number(10) not null,
    zi_program_nr number(10) not null,
    ora_start number(10,6) not null,
    ora_final number(10,6) not null,
    constraint program_pk primary key (id),
    constraint program_uk unique (punct_lucru_id, zi_program_nr, ora_start)
);