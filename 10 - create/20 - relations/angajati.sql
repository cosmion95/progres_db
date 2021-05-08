alter table angajati add constraint angajati_punct_lucru_fk
foreign key (punct_lucru_id)
references puncte_lucru(id);
