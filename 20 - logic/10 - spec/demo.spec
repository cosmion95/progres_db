CREATE OR REPLACE PACKAGE DEMO AS 

    procedure add_log(p_msg varchar2);
    -- logs a message
    
    function verifica_minute_trecute(p_date date, p_minute_max number) return varchar2;
    -- verifica daca au trecut mai mult de p_minute_max de la p_date
    -- intoarce D sau N
    
    procedure raise_error(p_message varchar2, p_code number default -20001);
    -- raises an application error with the received message

END DEMO;
/
