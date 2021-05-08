alter table puncte_lucru add constraint punct_lucru_tert_fk
foreign key (tert_id)
references terti(id);

alter table puncte_lucru add constraint punct_lucru_localitate_fk
foreign key (localitate_id)
references localitati(id);

alter table puncte_lucru add constraint punct_lucru_domeniu_fk
foreign key (domeniu_id)
references domenii(id);