CREATE OR REPLACE PACKAGE TERT_MANAGEMENT AS 

  procedure add_punct_lucru(p_tert number, p_denumire varchar2, p_telefon varchar2, p_domeniu number, p_localitate number, p_strada varchar2, p_nr_strada varchar2, p_cuvinte_cheie varchar2 default null, p_rata_prezenta varchar2 default null);
  procedure add_program(p_punct_lucru number, p_zi number, p_ora_start number, p_ora_final number);  
  procedure add_exceptie_program(p_punct_lucru number, p_data date, p_ora_start number, p_ora_final number);
  procedure add_tip_rezervare(p_punct_lucru number, p_denumire varchar2, p_durata number, p_validare_automata varchar2, p_creat_de number);
  procedure add_angajat(p_punct_lucru number, p_nume varchar2, p_prenume varchar2, p_username varchar2, p_parola varchar2, p_functie varchar2, p_telefon varchar2, p_manager varchar2 default 'N');

END TERT_MANAGEMENT;
/
