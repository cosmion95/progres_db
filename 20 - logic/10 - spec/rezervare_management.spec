CREATE OR REPLACE PACKAGE REZERVARE_MANAGEMENT AS 

    function verifica_program_lucru(p_punct_lucru number, p_data date, p_durata number) return varchar2;
    function verifica_rezervari_existente(p_punct_lucru number, p_data date) return varchar2;
    function verifica_durata_rezervare(p_punct_lucru number, p_data date, p_durata number) return varchar2;
    procedure inregistrare_rezervare(p_client number, p_punct_lucru number, v_data varchar2, p_tip_rezervare number, p_mesaj varchar2);
    procedure validare_rezervare(p_angajat number, p_rezervare number, v_data varchar2, p_durata number, p_tip_rezervare number, p_rezervat_la number);
    procedure confirmare_rezervare_valida(p_client number, p_rezervare number);
    procedure anulare_client(p_rezervare number, p_client number, p_motiv varchar2);
    procedure anulare_angajat(p_rezervare number, p_angajat number, p_motiv varchar2);
    procedure marcare_neprezentat(p_rezervare number);
  
    function verificare_timp_ales(p_punct number, v_data varchar2, p_tip number) return varchar2;
    -- verifica daca data si ora aleasa de utilizator sunt valide
    -- incearca sa gaseasca o ora valida daca exista si sa o intoarca inapoi catre utilizator

END REZERVARE_MANAGEMENT;
/