insert into puncte_lucru(id, tert_id, denumire, telefon, domeniu_id, localitate_id, strada, nr_strada, cuvinte_cheie, rata_prezenta_minima)
values(progres_id.nextval, (select id from terti where nume = 'Matei' and prenume = 'Gheorghe'), 'Matei Auto Service', '0712345678',
        (select id from domenii where denumire = 'Automotive'), (select id from localitati where denumire = 'Tarnaveni'), 'str. Transilvaniei', '4', '#mecanic#auto#reparatii#vehicule#autoturisme', 50);

commit;
/