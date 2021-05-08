alter table exceptii_program add constraint exceptii_prog_punct_lucru_fk
foreign key (punct_lucru_id)
references puncte_lucru(id);