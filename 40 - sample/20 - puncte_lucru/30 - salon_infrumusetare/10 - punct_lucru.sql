insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima)
values(progres_id.nextval, (select id from terti where nume = 'Voda' and prenume = 'Albert'), 'Beauty Center', '0787654321',
        (select id from domenii where denumire = 'Cosmetic'), (select id from localitati where denumire = 'Tarnaveni'), 'str. Frumusetii', '8', '#salon#infrumusetare#manichiura#pedichiura#coafura', 50);

commit;
/