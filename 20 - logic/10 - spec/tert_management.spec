CREATE OR REPLACE PACKAGE TERT_MANAGEMENT AS 

  procedure add_punct_lucru(p_tert number, p_denumire varchar2, p_telefon varchar2, p_domeniu number, p_localitate number, p_strada varchar2, p_nr_strada varchar2, p_cuvinte_cheie varchar2 default null, p_rata_prezenta varchar2 default null);
  procedure add_program(p_punct_lucru number, p_zi number, p_ora_start number, p_ora_final number);  
  procedure add_exceptie_program(p_punct_lucru number, p_data date, p_ora_start number, p_ora_final number);
  procedure add_tip_rezervare(p_punct_lucru number, p_denumire varchar2, p_durata number, p_validare_automata varchar2, p_creat_de number);
  procedure add_angajat(p_punct_lucru number, p_nume varchar2, p_prenume varchar2, p_username varchar2, p_parola varchar2, p_functie varchar2, p_telefon varchar2, p_manager varchar2 default 'N');
  function get_puncte_lucru(p_localitate number, p_domeniu number, p_cuvinte_cheie varchar2) return clob;
  function verifica_cuvinte_cheie(p_denumire_punct varchar2, p_cuvinte_punct varchar2, p_cuvinte_cautate varchar2) return varchar2;
  
  function get_program_punct(p_punct number) return clob;
  --intoarce programul de lucru al punctului incepand de azi si mergand pana la nr max zile stabilite la nivelul punctului
  
  function get_urmatoarea_zi_lucratoare(p_punct number) return varchar2;
  -- intoarce data urmatoarei zi lucratoare a punctului de lucru din momentul apelului
  
  function get_procent_ocupare(p_punct number, p_data varchar2) return varchar2;
  -- intoarce cat % de ocupat este punctul de lucru la data transmisa
  
  function get_program_neeligibil(p_punct number) return clob;
  -- intoarce datele, orele si durata rezervarilor validate la punct
  -- pauzele de la program(exceptii program) si zilele nelucratoare
  
    function get_tipuri_rezervare(p_punct number) return clob;
  -- intoarce toate tipurile de rezervari definite la punctul de lucru

END TERT_MANAGEMENT;
/
