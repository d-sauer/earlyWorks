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
/*
DROP TABLE rac_zahvat
DROP TABLE racun
DROP TABLE zah_pac
DROP TABLE ljec_rasp
DROP TABLE ljec_zahvat
DROP TABLE zahvati
DROP TABLE ljec_pac
DROP TABLE ljecnik
DROP TABLE pacjent
DROP TABLE part
*/

--CREATE VIEW, pregled rasporeda
CREATE VIEW Det_Raspored_View AS 
	select id_term,id_ljec,termin ,CONVERT(varchar(11),termin,104) AS datum,
	DATEPART(hour,termin) AS hour, 
	DATEPART(minute,termin) AS minute 
	from ljec_rasp 

--DROP VIEW Det_Raspored_View


CREATE PROCEDURE Det_Raspored @date1 datetime, @date2 datetime,@IDljec int  AS
BEGIN
set dateformat dmy
select id_term,id_ljec,termin ,CONVERT(varchar(10),termin,104) AS datum,
	DATEPART(hour,termin) AS hour, 
	DATEPART(minute,termin) AS minute 
	from ljec_rasp 
	WHERE     (termin >= @date1 AND termin <= @date2) AND (id_ljec = @IDljec)
	ORDER BY 4, 6, 5
END
--DROP PROCEDURE Det_Raspored

--Funkcije

CREATE VIEW LjecnikoviZahvati AS
 select L.id_ljec,L.ime_prez, Z.id_zah, Z.zahvat, Z.cijena 
	FROM zahvati Z, ljec_zahvat LZ, ljecnik L 
	WHERE L.id_ljec=LZ.id_ljec AND Z.id_zah=LZ.id_zah

--DROP VIEW LjecnikoviZahvati
CREATE PROCEDURE ListLjecZah @ljec varchar(30) AS
BEGIN
	select * from LjecnikoviZahvati WHERE ime_prez=@ljec
END
--DROP PROCEDURE ListLjecZah

--Kreiranje pogleda podataka o pacjentima
CREATE VIEW ListPacjenti AS
SELECT id_pac, ime_prez, id_osobna, part.status,part.part , adresa, mail, otvaranje FROM pacjent, part
WHERE part.id_part = pacjent.id_part
--DROP VIEW ListPacjenti

CREATE VIEW ListZahvati_byDate AS 
select ZP.id_pac,CONVERT(smalldatetime,LR.termin,13) AS termin,Z.zahvat, ZP.komentar
from zah_pac ZP, zahvati Z, ljec_rasp LR
WHERE  LR.id_term=ZP.id_term AND Z.id_zah=ZP.id_zah 
--DROP VIEW ListZahvati_byDate


-- I Z V J E S T A J I -----------------------


--br. pacjenata godisnje
CREATE VIEW VPac_Y AS
select DATEPART(year,otvaranje) AS Godina, count(*) AS "Broj pacjenata" 
from pacjent
GROUP by DATEPART(year,otvaranje)
--ORDER BY 1
--DROP VIEW VPac_Y
--br pacjenata mjesecno
CREATE VIEW VPac_M AS
select DATEPART(year,otvaranje) AS Godina,DATEPART(month,otvaranje) AS Mjesec ,count(*) AS "Broj pacjenata"
from pacjent
GROUP by DATEPART(year,otvaranje),DATEPART(month,otvaranje)
--ORDER BY 1,2
--DROP VIEW VPac_M


--br narucenih pacjenata u godini, prema ljecnicima
CREATE VIEW VNarucP_Y AS
select L.ime_prez,DATEPART(year,LR.termin) AS Godina, count(*) AS "Broj narucenih pacjenata"
from ljec_rasp LR, ljecnik L
WHERE L.id_ljec=LR.id_ljec
GROUP BY L.ime_prez,DATEPART(year,LR.termin)
--ORDER BY 2
--DROP VIEW VNarucP_Y
--br narucenih pacjenata u godini i mjesecima, prema ljecnicima
CREATE VIEW VNarucP_M AS
select L.ime_prez,DATEPART(year,LR.termin) AS Godina,DATEPART(month,LR.termin) AS Mjesec, count(*) AS "Broj narucenih pacjenata"
from ljec_rasp LR, ljecnik L
WHERE L.id_ljec=LR.id_ljec
GROUP BY L.ime_prez,DATEPART(year,LR.termin),DATEPART(month,LR.termin)
--ORDER BY 2,3
--DROP VIEW VNarucP_M


--br dolazaka prema ljecnicima
CREATE VIEW VBrDolaza_Y AS
select L.ime_prez,DATEPART(year,LR.termin) AS Godina, count(*) AS "Broj dolazaka pacjenata"
from ljec_rasp LR, ljecnik L
WHERE L.id_ljec=LR.id_ljec AND id_dolazak=1
GROUP BY L.ime_prez,DATEPART(year,LR.termin)
--ORDER BY 2
--DROP VIEW VBrDolaza_Y
--br dolazaka prema ljecnicima i godinama i mjesecima
CREATE VIEW VBrDolaza_M AS
select L.ime_prez,DATEPART(year,LR.termin) AS Godina,DATEPART(month,LR.termin) AS Mjesec, count(*) AS "Broj dolazaka pacjenata"
from ljec_rasp LR, ljecnik L
WHERE L.id_ljec=LR.id_ljec AND id_dolazak=1
GROUP BY L.ime_prez,DATEPART(year,LR.termin),DATEPART(month,LR.termin)
--ORDER BY 2,3
--DROP VIEW VBrDolaza_M




INSERT INTO ljecnik VALUES('Administrator',NULL)
