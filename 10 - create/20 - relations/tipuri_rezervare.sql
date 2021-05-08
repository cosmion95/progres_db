alter table tipuri_rezervare add constraint tip_rez_punct_lucru_fk
foreign key (punct_lucru_id)
references puncte_lucru(id);