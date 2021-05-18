alter table client_tokens add constraint client_tokens_client_fk
foreign key (client_id)
references clienti(id);