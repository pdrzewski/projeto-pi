create database sprint01;

use sprint01;

create table eventos_estadio(
id           int auto_increment,
evento       varchar(50) not null default 'Jogo',
umidade      int not null,
temperatura  int not null,
publico      int,
reclamacoes  int,
primary key (id)
);

insert into eventos_estadio (evento, umidade, temperatura, publico, reclamacoes)
values                      ('Show da Taylor Swift', '35', '42', '30.000', '20000'),
                            ('Jogo Palmeiras', '38', '32', '21.000', '9000'),
                            ('Show do Bruno Mars', '53', '24', '55.000', '500'),
                            ('Jogo São Paulo', '46', '21', '39.000', '900'),
                            ('Jogo Copa Catar', '57', '23', '25.000', '50'),
                            ('Festival de música', '30', '26', '15.000', '5000');
                            
select * from eventos_estadio;