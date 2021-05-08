declare
    v_punct_lucru number(10);
begin
    select id into v_punct_lucru from puncte_lucru where denumire = 'Cabinet Veterinar Popescu';
    insert into program(id, punct_lucru_id, zi_program_nr, ora_start, ora_final)
        values(progres_id.nextval, v_punct_lucru, (select nr_zi from zile_program where denumire = 'Luni'), 9.30, 18);
    insert into program(id, punct_lucru_id, zi_program_nr, ora_start, ora_final)
        values(progres_id.nextval, v_punct_lucru, (select nr_zi from zile_program where denumire = 'Marti'), 9, 17.30);
    insert into program(id, punct_lucru_id, zi_program_nr, ora_start, ora_final)
        values(progres_id.nextval, v_punct_lucru, (select nr_zi from zile_program where denumire = 'Miercuri'), 8, 12);
    insert into program(id, punct_lucru_id, zi_program_nr, ora_start, ora_final)
        values(progres_id.nextval, v_punct_lucru, (select nr_zi from zile_program where denumire = 'Miercuri'), 13.45, 19.30);
    insert into program(id, punct_lucru_id, zi_program_nr, ora_start, ora_final)
        values(progres_id.nextval, v_punct_lucru, (select nr_zi from zile_program where denumire = 'Joi'), 9.30, 18);
    insert into program(id, punct_lucru_id, zi_program_nr, ora_start, ora_final)
        values(progres_id.nextval, v_punct_lucru, (select nr_zi from zile_program where denumire = 'Vineri'), 9.30, 18);
end;

commit;
/