alter table recenzii add constraint recenzii_punct_lucru_fk
foreign key (punct_lucru_id)
references puncte_lucru(id);

alter table recenzii add constraint recenzii_client_fk
foreign key (client_id)
references clienti(id);