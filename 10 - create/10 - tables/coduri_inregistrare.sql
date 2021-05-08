  CREATE TABLE coduri_inregistrare(	
    id number(10) not null,
	client_id number(10) not null, 
	cod varchar2(6) not null, 
	generat_la DATE default sysdate not null, 
	generate_ultima_ora number(10) default 1, 
	incercari_validare number(10) default 0, 
	incercat_validare_la date,
    constraint cod_inreg_pk primary key (id)
   );