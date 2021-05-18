CREATE OR REPLACE PACKAGE CLIENT_MANAGEMENT AS 

  procedure register_client(p_nume varchar2, p_prenume varchar2, p_email varchar2, p_username varchar2, p_parola varchar2, p_telefon varchar2, p_localitate number); 
  procedure add_recenzie(p_client number, p_punct_lucru number, p_recenzie varchar2);
  procedure recalculeaza_rata_prezenta(p_client number);
  procedure adauga_cod_inregistrare(p_client number, p_cod varchar2, p_generatii number default 1, p_validari number default 0);
  procedure generare_cod_inregistrare(p_email varchar2);
  procedure validare_cont_client(p_client number, p_cod varchar2);
    
  function login(p_email varchar2, p_parola varchar2) return number;
  function get_cod_inregistrare(p_email varchar2) return varchar2;
  
  procedure create_client_token(p_client number);
    -- creeaza un nou token pentru client
    
  function get_client_tokens(p_client number) return varchar2;
    -- intoarce token-urile unui client
    
  function get_client_token(p_client number) return varchar2;
    -- intoarce cel mai recent creat token al unui client
    
  function check_token(p_token varchar2) return varchar2;
    -- verifica daca token-ul transmis este valid
    
  function get_client_from_id(p_client number) return varchar2;
    -- intoarce detaliile despre client
    
  function get_client_from_email(p_email varchar2) return varchar2;
    -- intoarce detaliile despre client
    
  function get_client_id(p_email varchar2) return number;
    -- intoarce detaliile despre client

END CLIENT_MANAGEMENT;
/