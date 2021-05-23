declare
    v_punct_lucru number(10);
begin
    select id into v_punct_lucru from puncte_lucru where denumire = 'Cabinet Veterinar Popescu';
    insert into tipuri_rezervare(id, denumire, validare_automata, durata, punct_lucru_id, creat_de, creat_la)
        values(progres_id.nextval, 'Consultare', 'D', 30, v_punct_lucru, (select tert_id from puncte_lucru where id = v_punct_lucru), sysdate);
    insert into tipuri_rezervare(id, denumire, validare_automata, durata, punct_lucru_id, creat_de, creat_la)
        values(progres_id.nextval, 'Vaccinare', 'D', 30, v_punct_lucru, (select tert_id from puncte_lucru where id = v_punct_lucru), sysdate);
    insert into tipuri_rezervare(id, denumire, validare_automata, durata, punct_lucru_id, creat_de, creat_la)
        values(progres_id.nextval, 'Sterilizare', 'D', 60, v_punct_lucru, (select tert_id from puncte_lucru where id = v_punct_lucru), sysdate);
end;

commit;
/