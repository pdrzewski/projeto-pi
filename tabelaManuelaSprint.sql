create database sprint01;
use sprint01;

create table infra(
avaliacao varchar (10),
constraint chk_avaliacao check (avaliacao in("boa", "ruim", "pessima", "regular"))
);

insert into infra (avaliacao)
	values ("boa"),
			("ruim"),
            ("regular"),
            ("boa"),
            ("regular"),
            ("pessima"),
            ("regular"),
            ("boa"),
            ("pessima");
            




create table shows(
id_show int primary key auto_increment,
estadio varchar (50),
nome varchar (50),
publico int,
dataShow varchar (10),
constraint chk_estadio check (estadio in("Allianz Parque", "Morumbi", "Nilton Santos")),
unique key ix_idShow (id_show),
key ix_estadio (estadio),
qtdReclamacao int,
fkavaliacao varchar (10),
foreign key (fkavalicao) references infra(avaliacao)
);


insert into shows(nome, estadio, publico, dataShow, qtdReclamacao)
			values  ("Paul McCartney", "Allianz Parque", 50000, 1174),
					("Guns n' roses", "Allianz Parque", 45000, 903),
                    ("Justin Bieber", "Allianz Parque", 44000, 1352),
                    ("Metallica", "Morumbi", 47000, 1107),
                    ("Aerosmith", "Allianz Parque", 24000, 1147),
                    ("Taylor Swift", "Nilton Santos", 35000, 15000),
                    ("The Weekend", "Morumbi", 65000, 1200 ),
                    ("Cold Play", "Allianz Parque", 60000, 1652),
                    ("Red Hot Chili Peppers", "Nilton Santos", 44000, 564);
			