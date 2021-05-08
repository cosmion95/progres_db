alter table calendar_rezervari add constraint cal_rez_punct_lucru_fk
foreign key (punct_lucru_id)
references puncte_lucru(id);

alter table calendar_rezervari add constraint cal_rez_tip_rez_fk
foreign key (tip_rezervare_id)
references tipuri_rezervare(id);

alter table calendar_rezervari add constraint cal_rez_angajati_fk
foreign key (validata_de)
references angajati(id);

alter table calendar_rezervari add constraint cal_rez_angajati_fk
foreign key (anulata_de)
references angajati(id);

alter table calendar_rezervari add constraint cal_rez_client_fk
foreign key (client_id)
references clienti(id);