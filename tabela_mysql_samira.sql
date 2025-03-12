use sprint_01;

create table registros (
id int auto_increment primary key,
evento varchar(40),
data_evento date,
hora_evento time,
temperatura varchar(10),
humidade varchar(10)
);

insert into registros (evento, data_evento, hora_evento, temperatura, humidade)
values 				  ('lollapalooza', '2025-04-24', '18:00:00', '32°C', '45%'),
					  ('rockinsp', '2025-10-15', '19:00:00', '35°C', '40%'),
                      ('the town', '2025-08-09', '18:30:00', '29°C', '50%'),
                      ('eletronic', '2025-11-19', '20:00:00', '34°C', '37%');
                      
-- selecionando os registros na tabela
select * from registros;



