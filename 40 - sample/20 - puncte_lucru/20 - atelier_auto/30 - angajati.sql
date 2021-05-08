declare
    v_punct_lucru number(10);
begin
    select id into v_punct_lucru from puncte_lucru where denumire = 'Matei Auto Service';
    insert into angajati(id, punct_lucru_id, nume, prenume, username, parola, telefon, functie, manager)
        values(progres_id.nextval, v_punct_lucru, 'Matei', 'Gheorghe', 'm_gheorghe', 'parola', '0712345678', 'mecanic', 'D');
    insert into angajati(id, punct_lucru_id, nume, prenume, username, parola, telefon, functie, manager)
        values(progres_id.nextval, v_punct_lucru, 'Ionescu', 'Dragos', 'i_dragos', 'parola', '0712345678', 'mecanic ajutor', 'N');
end;

commit;
/