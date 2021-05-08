insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima)
values(progres_id.nextval, (select id from terti where nume = 'Popescu' and prenume = 'Ion'), 'Cabinet Veterinar Popescu', '0725379537',
        (select id from domenii where denumire = 'Medical'), (select id from localitati where denumire = 'Tarnaveni'), 'str. Florilor', '18A', '#veterinar#cabinet#animale#', 50);

commit;
/