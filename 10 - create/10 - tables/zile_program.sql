create table zile_program(
    nr_zi number(10) not null,
    denumire varchar2(32) not null,
    lucratoare varchar2(1) default 'D' not null,
    ordine number(10) not null,
    constraint zile_program_pk primary key (nr_zi),
    constraint zile_program_lucr check (ordine in ('D', 'N'))
);