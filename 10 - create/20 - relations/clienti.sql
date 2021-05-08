alter table clienti add constraint clienti_localitati_fk
foreign key (localitate_id)
references localitati(id);