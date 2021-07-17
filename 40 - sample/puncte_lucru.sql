insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Agora', '0265353221', (select id from domenii where denumire='Cosmetic'), (select id from localitati where denumire = 'Tarnaveni'), 'Victoriei', '12', 'Masaj', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'BeautyCenter', '0265385221', (select id from domenii where denumire='Cosmetic'), (select id from localitati where denumire = 'Tarnaveni'), 'Justitiei', '25', 'Salon', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'CleoNice', '0235353221', (select id from domenii where denumire='Cosmetic'), (select id from localitati where denumire = 'Tarnaveni'), 'Eroilor', '122', 'Unghii', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Loveness', '0265789221', (select id from domenii where denumire='Cosmetic'), (select id from localitati where denumire = 'Tarnaveni'), 'Piata Avram Iancu', '2', 'Epilare', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'WomanHot', '0265145221', (select id from domenii where denumire='Cosmetic'), (select id from localitati where denumire = 'Tarnaveni'), 'Armoniei', '75', 'Tratamente#Faciale', 50, 60, 60);

insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'La Voievozi', '0758787447', (select id from domenii where denumire='HoReCa'), (select id from localitati where denumire = 'Tarnaveni'), 'Strada Bazinelor', '66', 'Bere', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Castelul Vechi', '0751389987', (select id from domenii where denumire='HoReCa'), (select id from localitati where denumire = 'Tarnaveni'), 'Murelor', '13', 'Carne', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Teo', '0758478777', (select id from domenii where denumire='HoReCa'), (select id from localitati where denumire = 'Tarnaveni'), 'Stramba', '10', 'Pizza', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Hanul 7 Cai Frumosi', '0265312213', (select id from domenii where denumire='HoReCa'), (select id from localitati where denumire = 'Tarnaveni'), 'Putna', '99', 'Ciorba', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Glamour', '0764457112', (select id from domenii where denumire='HoReCa'), (select id from localitati where denumire = 'Tarnaveni'), 'Centrala', '124', 'Cappucino', 50, 60, 60);

insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'BCR', '0263323178', (select id from domenii where denumire='Bancar'), (select id from localitati where denumire = 'Tarnaveni'), 'Pavel Rusu', '1', 'Credit', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'ING', '0212221145', (select id from domenii where denumire='Bancar'), (select id from localitati where denumire = 'Tarnaveni'), 'Agricultorilor', '214', 'Card', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Banca Taraneasca', '0265178777', (select id from domenii where denumire='Bancar'), (select id from localitati where denumire = 'Tarnaveni'), 'Muzelor', '74', 'Bani', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'AloeBank', '021232215', (select id from domenii where denumire='Bancar'), (select id from localitati where denumire = 'Tarnaveni'), 'Investitorilor', '33', 'Datorie', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'BancaTransilvania', '0265323145', (select id from domenii where denumire='Bancar'), (select id from localitati where denumire = 'Tarnaveni'), 'Parcul Mare', '21', 'Credit#Cu#Buletinul', 50, 60, 60);

insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'AutoBass', '0725547713', (select id from domenii where denumire='Automotive'), (select id from localitati where denumire = 'Tarnaveni'), 'Aviatorilor', '12', 'Reparatii#Muzica', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Import Auto Daniel', '0756503777', (select id from domenii where denumire='Automotive'), (select id from localitati where denumire = 'Tarnaveni'), '1 Mai', '44', 'Vulcanizare', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Bavaria Motors', '0723541154', (select id from domenii where denumire='Automotive'), (select id from localitati where denumire = 'Tarnaveni'), 'Cosminilor', '24', 'Reparatii#Casetofoane#Spalare#Interior', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Best Mecanisc', '0265441224', (select id from domenii where denumire='Automotive'), (select id from localitati where denumire = 'Tarnaveni'), 'Aleea Peana', '303', 'Schimb#Ulei', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Formula One', '0722444444', (select id from domenii where denumire='Automotive'), (select id from localitati where denumire = 'Tarnaveni'), 'Piata Universitatii', '1', 'Tunning', 50, 60, 60);

insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Clinica Ava', '0723312322', (select id from domenii where denumire='Medical'), (select id from localitati where denumire = 'Tarnaveni'), 'Pasajul Mimozelor', '61', 'Tratamente#Laser', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Anatolia', '0254412999', (select id from domenii where denumire='Medical'), (select id from localitati where denumire = 'Tarnaveni'), 'Parcul Tineretului', '109', 'Ginecologie', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Spectrum Dental', '0235554321', (select id from domenii where denumire='Medical'), (select id from localitati where denumire = 'Tarnaveni'), 'Castanilor', '271', 'Durere#Dinti', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Dr Heart', '0723115983', (select id from domenii where denumire='Medical'), (select id from localitati where denumire = 'Tarnaveni'), 'Mirajului', '66', 'Urologie', 50, 60, 60);
insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima, minim_timp_estimat, zile_rezervari_max)
    values(progres_id.nextval, (select x.id from (select id, rownum from terti) x where rownum <= 1), 'Ton Med', '0765123321', (select id from domenii where denumire='Medical'), (select id from localitati where denumire = 'Tarnaveni'), 'Viilor', '10', 'Oncologie', 50, 60, 60);





