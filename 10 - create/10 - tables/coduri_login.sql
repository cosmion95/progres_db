  CREATE TABLE coduri_login(	
    id number(10) not null,
	client_id number(10) not null, 
	cod varchar2(6) not null, 
	generat_la DATE default sysdate not null, 
	generate_ultima_ora number(10) default 1, 
	incercari_validare number(10) default 0, 
	incercat_validare_la date,
	validat varchar2(1) default 'N' not null,
    constraint cod_login_pk primary key (id),
	constraint cod_login_valid_check check (validat in ('D', 'N'))
   );