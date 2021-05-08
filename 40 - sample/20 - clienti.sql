insert into clienti(id, nume, prenume, email, username, parola, telefon, localitate_id)
    values(progres_id.nextval, 'Marginean', 'Georgiana', 'm_georgiana', 'm_georgiana@email.com', 'parola', '0712345678', (select id from localitati where denumire = 'Tarnaveni'));
insert into clienti(id, nume, prenume, email, username, parola, telefon, localitate_id)
    values(progres_id.nextval, 'Truta', 'Dacian', 't_dacian', 't_dacian@email.com', 'parola', '0712345678', (select id from localitati where denumire = 'Tarnaveni'));
insert into clienti(id, nume, prenume, email, username, parola, telefon, localitate_id)
    values(progres_id.nextval, 'Ujica', 'Leonard', 'u_leonard', 'u_leonard@email.com', 'parola', '0712345678', (select id from localitati where denumire = 'Tarnaveni'));
insert into clienti(id, nume, prenume, email, username, parola, telefon, localitate_id)
    values(progres_id.nextval, 'Florea', 'Roberta', 'f_roberta', 'f_roberta@email.com', 'parola', '0712345678', (select id from localitati where denumire = 'Tarnaveni'));
insert into clienti(id, nume, prenume, email, username, parola, telefon, localitate_id)
    values(progres_id.nextval, 'Avram', 'Horea', 'a_horea', 'a_horea@email.com', 'parola', '0712345678', (select id from localitati where denumire = 'Tarnaveni'));

commit;
/