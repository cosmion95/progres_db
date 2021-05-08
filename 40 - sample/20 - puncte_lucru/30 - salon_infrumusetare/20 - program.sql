declare
    v_punct_lucru number(10);
begin
    select id into v_punct_lucru from puncte_lucru where denumire = 'Beauty Center';
    for zi in (select nr_zi from zile_program where lucratoare = 'D') loop
        insert into program(id, punct_lucru_id, zi_program_nr, ora_start, ora_final)
            values(progres_id.nextval, v_punct_lucru, zi.nr_zi, 8, 20);
    end loop;
end;

commit;
/