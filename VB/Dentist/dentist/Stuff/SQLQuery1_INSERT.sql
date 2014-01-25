--INSERTOVI
--Insert Docc
select * from ljecnik
INSERT INTO ljecnik VALUES('Administrator',NULL)
INSERT INTO ljecnik VALUES('Jan Tor',NULL)
INSERT INTO ljecnik VALUES('Eliot Reed',NULL)
INSERT INTO ljecnik VALUES('Chris Turkelton',NULL)
INSERT INTO ljecnik VALUES('John Dorian',NULL)
--insert participacija
select * from part
INSERT INTO part VALUES('skolska dob', 50)
INSERT INTO part VALUES('predskolska dob', 70)
INSERT INTO part VALUES('invalidnina 40', 40)
INSERT INTO part VALUES('osnovno zdravstveno', 20)
--insert zahvati
select * from zahvati
INSERT INTO zahvati VALUES('rengensko snimanje',250)
INSERT INTO zahvati VALUES('Brusenje cakline',120)
INSERT INTO zahvati VALUES('Osnovno ciscenje',50)
INSERT INTO zahvati VALUES('Stavljanje blombe',130)
--insert pacjenti
select * from pacjent
select * from part
set dateformat dmy
INSERT INTO pacjent VALUES('Davor Sauer',2105984301026,4,'B.J.Jelacica 81, Velimirovac','davor.sauer@gmail.com','01/04/2007')
INSERT INTO pacjent VALUES('Igor Busljeta',1254,2,'Matije Gubca 61, Velimirovac','igor@gmail.com','01/03/2007')
INSERT INTO pacjent VALUES('Dario Andjal',458512,3,'B.J.Jelacica 81 Velimirovac','dario@gmail.com','03/02/2007')
INSERT INTO pacjent VALUES('Mario Andjal',12132154,1,'B.J.Jelacica 81 Velimirovac','mario@gmail.com','21/02/2007')
INSERT INTO pacjent VALUES('Ivan Bernativic',4878745,1,'B.J.Jelacica 81 Velimirovac','ivan@gmail.com','22/03/2007')
INSERT INTO pacjent VALUES('Nikolina Skrljac',15487,3,'B.J.Jelacica 81 Velimirovac','nikolina@gmail.com','01/01/2007')


--dodavanje zahvata ljecnicima
select * from zahvati
select * from ljecnik
select * from ljec_zahvat

INSERT INTO ljec_zahvat VALUES (2,4)
INSERT INTO ljec_zahvat VALUES (2,2)
INSERT INTO ljec_zahvat VALUES (2,1)

INSERT INTO ljec_zahvat VALUES (3,4)
INSERT INTO ljec_zahvat VALUES (3,1)

INSERT INTO ljec_zahvat VALUES (5,1)
INSERT INTO ljec_zahvat VALUES (5,2)

--dodjeljnivanje pacjenata ljecnicima (ljec_pac)
select * from ljecnik
select * from pacjent
select * from ljec_pac

INSERT INTO ljec_pac VALUES(2,1)
INSERT INTO ljec_pac VALUES(2,3)
INSERT INTO ljec_pac VALUES(2,4)

INSERT INTO ljec_pac VALUES(3,3)
INSERT INTO ljec_pac VALUES(3,5)

INSERT INTO ljec_pac VALUES(4,2)

INSERT INTO ljec_pac VALUES(5,1)
INSERT INTO ljec_pac VALUES(5,6)
INSERT INTO ljec_pac VALUES(5,5)


--REZERVACIJE
select * from ljec_rasp
select * from zah_pac

set dateformat dmy
INSERT INTO ljec_rasp VALUES(2,'01/03/2007 15:00',0) --id_term=1
	INSERT INTO zah_pac VALUES(1,1,2,NULL)

INSERT INTO ljec_rasp VALUES(2,'01/03/2007 16:00',0) --id_term=2
	INSERT INTO zah_pac VALUES(2,1,4,NULL)
	INSERT INTO zah_pac VALUES(2,1,2,NULL)
	INSERT INTO zah_pac VALUES(2,1,3,NULL)

INSERT INTO ljec_rasp VALUES(3,'02/03/2007 08:00',0)--id_term=3
	INSERT INTO zah_pac VALUES(3,1,4,NULL)

INSERT INTO ljec_rasp VALUES(3,'01/03/2007 16:00',0) --id_term=4
	INSERT INTO zah_pac VALUES(4,2,4,NULL)
	INSERT INTO zah_pac VALUES(4,2,2,NULL)
	INSERT INTO zah_pac VALUES(4,2,3,NULL)

set dateformat dmy
INSERT INTO ljec_rasp VALUES(2,'06/04/2007 08:00',0) --id_term=5
	INSERT INTO zah_pac VALUES(5,1,3,NULL)
INSERT INTO ljec_rasp VALUES(2,'06/04/2007 09:00',0) --id_term=6
	INSERT INTO zah_pac VALUES(6,3,3,NULL)
INSERT INTO ljec_rasp VALUES(2,'06/04/2007 10:00',0) --id_term=7
	INSERT INTO zah_pac VALUES(7,6,3,NULL)
--11 - 12 pauza
INSERT INTO ljec_rasp VALUES(2,'06/04/2007 12:00',0) --id_term=7
	INSERT INTO zah_pac VALUES(8,5,3,NULL)
INSERT INTO ljec_rasp VALUES(2,'06/04/2007 13:00',0) --id_term=9
	INSERT INTO zah_pac VALUES(9,4,3,NULL)
INSERT INTO ljec_rasp VALUES(2,'06/04/2007 14:00',0) --id_term=10
	INSERT INTO zah_pac VALUES(10,3,3,NULL)
INSERT INTO ljec_rasp VALUES(2,'06/04/2007 15:00',0) --id_term=11
	INSERT INTO zah_pac VALUES(11,2,3,NULL)
INSERT INTO ljec_rasp VALUES(2,'06/04/2007 16:00',0) --id_term=12
	INSERT INTO zah_pac VALUES(12,1,3,NULL)

--naknadni dolazak
INSERT INTO ljec_rasp VALUES(2,'06/04/2007 9:30',0) --id_term=13
	INSERT INTO zah_pac VALUES(13,3,3,NULL)
INSERT INTO ljec_rasp VALUES(2,'06/04/2007 13:12',0) --id_term=14
	INSERT INTO zah_pac VALUES(14,4,3,NULL)
INSERT INTO ljec_rasp VALUES(2,'06/04/2007 13:50',0) --id_term=15
	INSERT INTO zah_pac VALUES(15,1,3,NULL)


set dateformat dmy
INSERT INTO ljec_rasp VALUES(2,'16.4.2007 8:00',0) --id_term=16
	INSERT INTO zah_pac VALUES(16,4,1,'Zahvat 1')
	INSERT INTO zah_pac VALUES(16,4,2,'Zahvat 2')
INSERT INTO ljec_rasp VALUES(2,'16.4.2007 9:0',0) --id_term=17
	INSERT INTO zah_pac VALUES(17,1,4,'Zahvat 4')
	INSERT INTO zah_pac VALUES(17,1,2,'Zahvat 2')
	INSERT INTO zah_pac VALUES(17,1,1,'Zahvat 1')
INSERT INTO ljec_rasp VALUES(2,'16.4.2007 14:0',0) --id_term=17
	INSERT INTO zah_pac VALUES(18,3,2,'Zahvat 2')



