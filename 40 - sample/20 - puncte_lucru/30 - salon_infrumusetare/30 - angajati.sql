declare
    v_punct_lucru number(10);
begin
    select id into v_punct_lucru from puncte_lucru where denumire = 'Beauty Center';
    insert into angajati(id, punct_lucru_id, nume, prenume, username, parola, telefon, functie, manager)
        values(progres_id.nextval, v_punct_lucru, 'Popescu', 'Darius', 'p_darius', 'parola', '0712345678', '', 'N');
    insert into angajati(id, punct_lucru_id, nume, prenume, username, parola, telefon, functie, manager)
        values(progres_id.nextval, v_punct_lucru, 'Stoica', 'Larisa', 's_larisa', 'parola', '0712345678', '', 'N');
    insert into angajati(id, punct_lucru_id, nume, prenume, username, parola, telefon, functie, manager)
        values(progres_id.nextval, v_punct_lucru, 'Ardelean', 'Elena', 'a_elena', 'parola', '0712345678', '', 'D');
    insert into angajati(id, punct_lucru_id, nume, prenume, username, parola, telefon, functie, manager)
        values(progres_id.nextval, v_punct_lucru, 'Muresan', 'Francesca', 'm_francesca', 'parola', '0712345678', '', 'N');
end;

commit;
/