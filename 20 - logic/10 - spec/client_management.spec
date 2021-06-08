CREATE OR REPLACE PACKAGE CLIENT_MANAGEMENT AS 

    -- inregistrare, generare coduri de inregistrare si validare cont
    procedure register_client(p_nume varchar2, p_prenume varchar2, p_email varchar2, p_parola varchar2, p_salt varchar2, p_telefon varchar2, p_localitate number); 
    procedure generare_cod_inregistrare(p_email varchar2);
    procedure validare_cont_client(p_email varchar2, p_cod varchar2);
    procedure adauga_cod_inregistrare(p_client number, p_cod varchar2, p_generatii number default 1, p_validari number default 0);
    function get_cod_inregistrare(p_email varchar2) return varchar2;
    
    -- login cu 2FA prin email
    procedure login(p_email varchar2, p_parola varchar2);
    procedure generare_cod_login(p_email varchar2);
    procedure validare_login(p_email varchar2, p_cod varchar2);
    procedure adauga_cod_login(p_client number, p_cod varchar2, p_generatii number default 1, p_validari number default 0);
    function get_cod_login(p_email varchar2) return varchar2;
    
    -- generare si autorizare operatiuni prin token
    procedure create_client_token(p_client number);
    function get_client_token(p_client number) return varchar2;
    function check_token(p_token varchar2, p_cont_valid varchar2, p_login varchar2, p_client_id number) return varchar2;
    
    
    procedure add_recenzie(p_client number, p_punct_lucru number, p_recenzie varchar2);
    -- adauga recenzie la un punct de lucru
    
    procedure recalculeaza_rata_prezenta(p_client number);
    -- actualizeaza rata de prezenta a clientului in functie de prezenta la rezervari
    
    function get_client_from_id(p_client number) return varchar2;
    -- intoarce detaliile despre pe baza id-ului
    
    function get_client_from_email(p_email varchar2) return varchar2;
    -- intoarce detaliile despre client pe baza email-ului
    
    function get_client_id(p_email varchar2) return number;
    -- intoarce id-ul clientului pe baza email-ului
    
    function get_salt(p_email varchar2) return varchar2;
    -- intoarce salt-ul parolei
    
    function get_prenume(p_email varchar2) return varchar2;
        -- intoarce prenumele utilizatorului
        -- folosit la trimiterea email-urilor

END CLIENT_MANAGEMENT;
/