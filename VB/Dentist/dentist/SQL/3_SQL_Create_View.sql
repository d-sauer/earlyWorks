

CREATE VIEW Det_Raspored_View AS 
	select id_term,id_ljec,termin ,CONVERT(varchar(11),termin,104) AS datum,
	DATEPART(hour,termin) AS hour, 
	DATEPART(minute,termin) AS minute 
	from ljec_rasp 


--Funkcije

CREATE VIEW LjecnikoviZahvati AS
 select L.id_ljec,L.ime_prez, Z.id_zah, Z.zahvat, Z.cijena 
	FROM zahvati Z, ljec_zahvat LZ, ljecnik L 
	WHERE L.id_ljec=LZ.id_ljec AND Z.id_zah=LZ.id_zah

--Kreiranje pogleda podataka o pacjentima
CREATE VIEW ListPacjenti AS
SELECT id_pac, ime_prez, id_osobna, part.status,part.part , adresa, mail, otvaranje FROM pacjent, part
WHERE part.id_part = pacjent.id_part

CREATE VIEW ListZahvati_byDate AS 
select ZP.id_pac,CONVERT(smalldatetime,LR.termin,13) AS termin,Z.zahvat, ZP.komentar
from zah_pac ZP, zahvati Z, ljec_rasp LR
WHERE  LR.id_term=ZP.id_term AND Z.id_zah=ZP.id_zah 


-- I Z V J E S T A J I -----------------------

--br. pacjenata godisnje
CREATE VIEW VPac_Y AS
select DATEPART(year,otvaranje) AS Godina, count(*) AS "Broj pacjenata" 
from pacjent
GROUP by DATEPART(year,otvaranje)

--br pacjenata mjesecno
CREATE VIEW VPac_M AS
select DATEPART(year,otvaranje) AS Godina,DATEPART(month,otvaranje) AS Mjesec ,count(*) AS "Broj pacjenata"
from pacjent
GROUP by DATEPART(year,otvaranje),DATEPART(month,otvaranje)

--br narucenih pacjenata u godini, prema ljecnicima
CREATE VIEW VNarucP_Y AS
select L.ime_prez,DATEPART(year,LR.termin) AS Godina, count(*) AS "Broj narucenih pacjenata"
from ljec_rasp LR, ljecnik L
WHERE L.id_ljec=LR.id_ljec
GROUP BY L.ime_prez,DATEPART(year,LR.termin)

--br narucenih pacjenata u godini i mjesecima, prema ljecnicima
CREATE VIEW VNarucP_M AS
select L.ime_prez,DATEPART(year,LR.termin) AS Godina,DATEPART(month,LR.termin) AS Mjesec, count(*) AS "Broj narucenih pacjenata"
from ljec_rasp LR, ljecnik L
WHERE L.id_ljec=LR.id_ljec
GROUP BY L.ime_prez,DATEPART(year,LR.termin),DATEPART(month,LR.termin)

--br dolazaka prema ljecnicima
CREATE VIEW VBrDolaza_Y AS
select L.ime_prez,DATEPART(year,LR.termin) AS Godina, count(*) AS "Broj dolazaka pacjenata"
from ljec_rasp LR, ljecnik L
WHERE L.id_ljec=LR.id_ljec AND id_dolazak=1
GROUP BY L.ime_prez,DATEPART(year,LR.termin)

--br dolazaka prema ljecnicima i godinama i mjesecima
CREATE VIEW VBrDolaza_M AS
select L.ime_prez,DATEPART(year,LR.termin) AS Godina,DATEPART(month,LR.termin) AS Mjesec, count(*) AS "Broj dolazaka pacjenata"
from ljec_rasp LR, ljecnik L
WHERE L.id_ljec=LR.id_ljec AND id_dolazak=1
GROUP BY L.ime_prez,DATEPART(year,LR.termin),DATEPART(month,LR.termin)
