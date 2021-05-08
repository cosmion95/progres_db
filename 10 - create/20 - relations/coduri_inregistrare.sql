alter table coduri_inregistrare add constraint cod_inreg_client_fk
foreign key (client_id)
references clienti(id);