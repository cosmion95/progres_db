create table client_tokens(
    client_id number(10) not null,
    token varchar2(32) not null,
    creat_la date default sysdate not null,
    constraint client_tokens_pk primary key (token)
);