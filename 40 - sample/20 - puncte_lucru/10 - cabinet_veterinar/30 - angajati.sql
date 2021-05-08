declare
    v_punct_lucru number(10);
begin
    select id into v_punct_lucru from puncte_lucru where denumire = 'Cabinet Veterinar Popescu';
    insert into angajati(id, punct_lucru_id, nume, prenume, username, parola, telefon, functie, manager)
        values(progres_id.nextval, v_punct_lucru, 'Cezar', 'Eugen', 'c_eugen', 'parola', '0712345678', 'doctor', 'N');
    insert into angajati(id, punct_lucru_id, nume, prenume, username, parola, telefon, functie, manager)
        values(progres_id.nextval, v_punct_lucru, 'Muntean', 'Patricia', 'm_patricia', 'parola', '0712345678', 'asistent', 'N');
    insert into angajati(id, punct_lucru_id, nume, prenume, username, parola, telefon, functie, manager)
        values(progres_id.nextval, v_punct_lucru, 'Costea', 'Ramona', 'c_ramona', 'parola', '0712345678', 'doctor', 'N');
    insert into angajati(id, punct_lucru_id, nume, prenume, username, parola, telefon, functie, manager)
        values(progres_id.nextval, v_punct_lucru, 'Marin', 'Doru', 'm_doru', 'parola', '0712345678', 'asistent', 'N');
end;

commit;
/