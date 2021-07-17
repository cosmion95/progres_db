declare
v_procent_ocupare number(10);
v_ocupat number(10);
v_curent number(10);
v_lucratoare number(10);
v_inceput_program number(10);
v_sfarsit_program number(10);
v_ora_inceput_rezervare number(10);
v_tip_rezervare number(10);
v_ora_minut varchar2(32);
v_minut varchar2(10);
v_counter number(10) := 0;
v_angajat number(10);
cursor c_rez(p_id number) is
  select id, durata from calendar_rezervari 
  where punct_lucru_id = p_id and id = (select max(id) from calendar_rezervari where punct_lucru_id = p_id and validata = 'N'); 
r_rez c_rez%rowtype;
begin
    for p in (select p.* from puncte_lucru p) loop
        for zi in (with dates as (select sysdate + ROWNUM data_gasita
                          from dual 
                       connect by sysdate + ROWNUM <= sysdate+90)
        select d.data_gasita data_gasita from dates d) loop
            v_counter := 0;
            select count(*) into v_lucratoare from program where punct_lucru_id = p.id and zi_program_nr = to_number(to_char(zi.data_gasita, 'd'));
            if v_lucratoare is not null and v_lucratoare > 0 then
                select id into v_angajat from (select id from angajati where punct_lucru_id = p.id) where rownum < 2;
                select dbms_random.value(10, 80) into v_procent_ocupare from dual;
                v_ocupat := 0;
                while v_ocupat < v_procent_ocupare loop
                    if v_counter < 500 then
                    begin
                        select min(nvl(ep.ora_start, pr.ora_start)) into v_inceput_program 
                          from program pr left join exceptii_program ep on ep.punct_lucru_id = pr.punct_lucru_id and trunc(ep.data) = zi.data_gasita 
                         where pr.punct_lucru_id = p.id and pr.zi_program_nr = to_number(to_char(zi.data_gasita, 'd'));
                        select max(nvl(ep.ora_final, pr.ora_final)) into v_sfarsit_program 
                          from program pr left join exceptii_program ep on ep.punct_lucru_id = pr.punct_lucru_id and trunc(ep.data) = zi.data_gasita 
                         where pr.punct_lucru_id = p.id and pr.zi_program_nr = to_number(to_char(zi.data_gasita, 'd'));
                        select round(dbms_random.value(v_inceput_program, v_sfarsit_program)) into v_ora_inceput_rezervare from dual;
                        select id into v_tip_rezervare 
                         from (select id from tipuri_rezervare where punct_lucru_id = p.id order by dbms_random.random) where rownum < 2;
                        select minut into v_minut from (select minut from( select '00' minut from dual union select '30' minut from dual) 
                         order by dbms_random.random) where rownum < 2;
                        select to_char(zi.data_gasita, 'DD.MM.YYYY') || ' ' || to_char(v_ora_inceput_rezervare) || ':' 
                                || v_minut into v_ora_minut from dual;
                        rezervare_management.inregistrare_rezervare(55761, p.id, v_ora_minut, v_tip_rezervare, null);
                        commit;
                        open c_rez(p.id);
                        fetch c_rez into r_rez;
                        close c_rez;
                        rezervare_management.validare_rezervare(v_angajat, r_rez.id, v_ora_minut, r_rez.durata, v_tip_rezervare, null);
                        commit;
                        v_ocupat := tert_management.get_procent_ocupare_number(p.id, to_char(zi.data_gasita, 'DD.MM.YYYY'));
                    exception when others then
                        v_counter := v_counter + 1;
                    end;
                    else
                        v_ocupat := v_procent_ocupare;
                    end if;
                end loop;
            end if;
        end loop;
    end loop;
end;
 

