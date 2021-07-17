-- inregistrare angajati test
begin
    for p in (select p.* from puncte_lucru p where not exists (select 1 from angajati where punct_lucru_id = p.id)) loop
        insert into angajati(id, punct_lucru_id, nume, prenume, username, parola, telefon, functie, manager)
        values(progres_id.nextval, p.id, 'angajat_test', 'angajat_test', 'angajat_test', 'parola', '0712345678', 'angajat_test', 'D');
    end loop;
end;

--inregistrare program standard aleator
declare
v_ore_pe_zi number(10);
v_ore_total_lucrate number(10);
v_ore_lucrate number(10);
v_ora_start number(10);
v_lucratoare number(10);
begin
  for p in (select p.id from puncte_lucru p where not exists (select 1 from program where punct_lucru_id = p.id)) loop
        for zi in (select nr_zi from zile_program) loop
            select dbms_random.value(0, 100) into v_lucratoare from dual;
            if v_lucratoare < 70 then
            select ceil(dbms_random.value(7,13)) into v_ore_pe_zi from dual;
            select ceil(dbms_random.value(4,9)) into v_ora_start from dual;
            v_ore_total_lucrate := 0;
            while v_ore_total_lucrate < v_ore_pe_zi loop
                select dbms_random.value(1,v_ore_pe_zi-v_ore_total_lucrate) into v_ore_lucrate from dual;
                if v_ore_total_lucrate + v_ore_lucrate + 1 = v_ore_pe_zi then
                    v_ore_lucrate := v_ore_lucrate + 1;
                end if;
                insert into program(id, punct_lucru_id, zi_program_nr, ora_start, ora_final)
                values(progres_id.nextval, p.id, zi.nr_zi, v_ora_start, (v_ora_start+v_ore_lucrate));
                v_ora_start := v_ora_start + v_ore_lucrate;
                v_ore_total_lucrate := v_ore_total_lucrate + v_ore_lucrate;
                if v_ore_total_lucrate+1 < v_ore_pe_zi then
                    v_ora_start := v_ora_start + 1;
                    v_ore_total_lucrate := v_ore_total_lucrate + 1;
                end if;
            end loop;
            end if;
        end loop;
    end loop;
end;

--generare exceptii de la program pe o perioada de 90 zile
declare
v_lucratoare number;
v_exceptie number;
v_ore_pe_zi number(10);
v_ore_total_lucrate number(10);
v_ore_lucrate number(10);
v_ora_start number(10);
begin
for p in (select p.* from puncte_lucru p) loop
        for zi in (with dates as (select sysdate + ROWNUM data_gasita
                          from dual 
                       connect by sysdate + ROWNUM <= sysdate+90)
        select d.data_gasita data_gasita from dates d) loop
            select count(*) into v_lucratoare from program where punct_lucru_id = p.id and zi_program_nr = to_number(to_char(zi.data_gasita, 'd'));
            if v_lucratoare is not null and v_lucratoare > 0 then
               select dbms_random.value(0, 100) into v_exceptie from dual;
               if v_exceptie < 20 then
               
                select ceil(dbms_random.value(7,13)) into v_ore_pe_zi from dual;
                select ceil(dbms_random.value(4,9)) into v_ora_start from dual;
                v_ore_total_lucrate := 0;
             while v_ore_total_lucrate < v_ore_pe_zi loop
                select dbms_random.value(1,v_ore_pe_zi-v_ore_total_lucrate) into v_ore_lucrate from dual;
                if v_ore_total_lucrate + v_ore_lucrate + 1 = v_ore_pe_zi then
                    v_ore_lucrate := v_ore_lucrate + 1;
                end if;
                insert into exceptii_program(id, punct_lucru_id, data, ora_start, ora_final)
                values(progres_id.nextval, p.id, zi.data_gasita, v_ora_start, (v_ora_start+v_ore_lucrate));
                v_ora_start := v_ora_start + v_ore_lucrate;
                v_ore_total_lucrate := v_ore_total_lucrate + v_ore_lucrate;
                if v_ore_total_lucrate+1 < v_ore_pe_zi then
                    v_ora_start := v_ora_start + 1;
                    v_ore_total_lucrate := v_ore_total_lucrate + 1;
                end if;
                end loop;
               end if;
            end if;
        end loop;
        end loop;
end;

--inregistrare tipuri rezervari
begin
    for p in (select p.* from puncte_lucru p where not exists (select 1 from tipuri_rezervare where punct_lucru_id = p.id)) loop
        insert into tipuri_rezervare(id, denumire, validare_automata, durata, punct_lucru_id, creat_de, creat_la)
        values(progres_id.nextval, p.denumire || ' - standard 1', 'D', 30, p.id, p.tert_id, sysdate);
        insert into tipuri_rezervare(id, denumire, validare_automata, durata, punct_lucru_id, creat_de, creat_la)
        values(progres_id.nextval, p.denumire || ' - standard 2', 'D', 60, p.id, p.tert_id, sysdate);
         insert into tipuri_rezervare(id, denumire, validare_automata, durata, punct_lucru_id, creat_de, creat_la)
        values(progres_id.nextval, p.denumire || ' - standard 3', 'D', 90, p.id, p.tert_id, sysdate);
         insert into tipuri_rezervare(id, denumire, validare_automata, durata, punct_lucru_id, creat_de, creat_la)
        values(progres_id.nextval, p.denumire || ' - standard 4', 'D', 120, p.id, p.tert_id, sysdate);
         insert into tipuri_rezervare(id, denumire, validare_automata, durata, punct_lucru_id, creat_de, creat_la)
        values(progres_id.nextval, p.denumire || ' - standard 5', 'D', 180, p.id, p.tert_id, sysdate);
        insert into tipuri_rezervare(id, denumire, validare_automata, durata, punct_lucru_id, creat_de, creat_la)
        values(progres_id.nextval, p.denumire || ' - standard 6', 'D', 240, p.id, p.tert_id, sysdate);
    end loop;
end;