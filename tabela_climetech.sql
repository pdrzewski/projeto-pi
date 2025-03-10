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
INSERT INTO medicao (data, atracao, temperatura, umidade) VALUES
('2025-03-01', 'Show', 28, 65),
('2025-03-01', 'Show', 25, 45),
('2025-03-11', 'Jogo', 30, 55),
('2025-03-11', 'Jogo', 27, 60),
('2025-03-21', 'Show', 29, 50),
('2025-03-21', 'Show', 26, 40),
('2025-03-31', 'Jogo', 31, 35),
('2025-03-31', 'Jogo', 28, 65),
('2025-04-10', 'Show', 27, 55),
('2025-04-10', 'Show', 25, 70),
('2025-04-20', 'Jogo', 30, 50),
('2025-04-20', 'Jogo', 26, 42),
('2025-04-30', 'Show', 28, 48),
('2025-04-30', 'Show', 27, 60),
('2025-05-10', 'Jogo', 29, 35),
('2025-05-10', 'Jogo', 25, 50),
('2025-05-20', 'Show', 32, 40),
('2025-05-20', 'Show', 29, 55),
('2025-05-30', 'Jogo', 31, 38),
('2025-05-30', 'Jogo', 28, 65),
('2025-06-09', 'Show', 30, 47),
('2025-06-09', 'Show', 27, 62),
('2025-06-19', 'Jogo', 29, 52),
('2025-06-19', 'Jogo', 26, 37),
('2025-06-29', 'Show', 28, 50),
('2025-06-29', 'Show', 25, 68),
('2025-07-09', 'Jogo', 32, 33),
('2025-07-09', 'Jogo', 29, 60),
('2025-07-19', 'Show', 30, 48),
('2025-07-19', 'Show', 28, 55);


select * from medicao where umidade <40;

select data, atracao, temperatura from medicao where temperatura > 30;

select * from medicao order by umidade;

select * from medicao where data between '2025-05-01' and '2025-05-31';