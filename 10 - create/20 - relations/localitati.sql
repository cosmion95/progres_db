alter table localitati add constraint localitati_judet_fk
foreign key (judet_id)
references judete(id);