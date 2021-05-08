alter table program add constraint prog_zile_prog_fk
foreign key (zi_program_nr)
references zile_program(nr_zi);

alter table program add constraint prog_punct_lucru_fk
foreign key (punct_lucru_id)
references puncte_lucru(id);