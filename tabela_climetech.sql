create database sprint1;

use sprint1;

create table medicao(
id           int primary key auto_increment,
data         date not null,
atracao      varchar(10) not null,
temperatura  int not null,
umidade      int not null,
constraint ck_atracao check (atracao in ('Show', 'Jogo'))
);