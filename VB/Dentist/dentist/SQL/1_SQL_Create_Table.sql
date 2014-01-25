--Pacijenti
CREATE TABLE part (
	id_part int primary key Identity(1,1),
	status varchar(30),
	part float NOT NULL
)

CREATE TABLE pacjent (
	id_pac int primary key Identity(1,1),
	ime_prez varchar (30) NOT NULL,
	id_osobna decimal(15) UNIQUE,
	id_part int,
	adresa varchar(80),
	mail varchar (30),
	otvaranje smalldatetime,
	foreign key (id_part) references part(id_part)
)

--Ljecnici, ljecnici i njihovi pacjenti, zahvati, i zahvati ljecnika
CREATE TABLE ljecnik (
	id_ljec int primary key Identity(1,1),
	ime_prez varchar(30),
	lozinka varchar(30)
)

CREATE TABLE ljec_pac (
	id_ljec int,
	id_pac int,
	foreign key (id_ljec) references ljecnik(id_ljec),
	foreign key (id_pac) references pacjent(id_pac) ON DELETE CASCADE
)

CREATE TABLE zahvati (
	id_zah int primary key identity (1,1),
	zahvat varchar(30),
	cijena float NOT NULL
)

CREATE TABLE ljec_zahvat (
	id_ljec int,
	id_zah int,
	foreign key (id_ljec) references ljecnik(id_ljec) ON DELETE CASCADE,
	foreign key(id_zah) references zahvati(id_zah)
)

--LJecnicki raspored i rezervacije
CREATE TABLE ljec_rasp (
	id_term int primary key Identity(1,1),
	id_ljec int,
	termin datetime,
	id_dolazak bit,
	foreign key (id_ljec) references ljecnik(id_ljec) ON DELETE CASCADE
)


CREATE TABLE zah_pac (
	id_term int,
	id_pac int,
	id_zah int,
	komentar TEXT,
	foreign key(id_term) references ljec_rasp(id_term) ON DELETE CASCADE,
	foreign key(id_pac) references pacjent(id_pac) ON DELETE CASCADE,
	foreign key(id_zah) references zahvati(id_zah)
)

--Racun
CREATE TABLE racun (
	id_rac int primary key Identity(1,1),
	pacjent varchar(30) NOT NULL,
	id_osobna decimal(15),
	participacija float,
	id_ljec int,
	ljecnik varchar(30),
	id_term int,
	datum datetime NOT NULL,
)	

CREATE TABLE rac_zahvat (
	id_rac int,
	zahvat varchar(30),
	cijena float,
	foreign key (id_rac) references racun(id_rac)
)
