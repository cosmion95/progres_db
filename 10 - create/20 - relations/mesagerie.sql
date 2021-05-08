alter table mesagerie add constraint msg_angajat_fk
foreign key (angajat_id)
references angajati(id);

alter table mesagerie add constraint msg_cal_rez_fk
foreign key (rezervare_id)
references calendar_rezervari(id);

alter table mesagerie add constraint msg_client_fk
foreign key (client_id)
references clienti(id);