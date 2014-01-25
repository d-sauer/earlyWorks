SELECT r.kanal_id,  kan.naziv_kanala
FROM tv_raspored r,
  tv_kategorije kat,
  tv_kanali kan
WHERE kan.id_pk=r.kanal_id
AND kat.id     =r.kategorija_id
AND r.pocetak >='2011-05-29 00:00:00'
AND r.pocetak <='2011-05-29 23:59:59'
GROUP BY r.kanal_id
ORDER BY r.kanal_id;



truncate table tv_raspored;


select count(*) from tv_raspored;


select * from tv_kanali;

delete from tv_kanali where id_pk=4;

select * from tv_raspored where pocetak >= '2011-06-05 21:46:00';-- AND kraj <= '2011-06-05 21:46:00';


-- emisije koje se trenutno emitiraju
select * from tv_raspored 
where (pocetak <= '2011-06-05 21:46:00' AND kraj >= '2011-06-05 21:46:00' )
group by kanal_id
order by pocetak;


select * from tv_raspored 
where pocetak

------
-- insert korisnika
------
INSERT INTO tv_korisnici (id ,tip_korisnika_id ,korisnicko_ime ,lozinka ,ime ,prezime ,email ,mobitel ,token ,aktiviran) VALUES (NULL , '2', 'dsauer', 'dsauer', 'davor', 'sauer', 'davor.sauer@gmail.com', '091', '887765544232', '1');


select * from tv_korisnici;
where korisnicko_ime='da2' and token='20110605125116';
select * from tv_tip_korisnika;


update tv_korisnici set aktiviran=1 where id=7;

select * from tv_kor_grupa 
where korisnik_id=2;

insert into tv_kor_grupa (korisnik_id,naziv, opis) VALUES(2,'test', 'opis');

update tv_kor_grupa SET naziv='test01', opis='opis..' where id=2;

select * from tv_kor_emisije;

select * from tv_kanali;
select * from tv_raspored where kanal_id=6;


select r.*, kan.naziv_kanala, kat.naziv_kategorije from tv_kor_emisije tke, tv_raspored r, tv_kanali kan, tv_kategorije kat
WHERE kan.id_pk=r.kanal_id
AND kat.id=r.kategorija_id
AND r.id=tke.raspored_id
AND kor_grupa_id=2;

SELECT r.*, kat.naziv_kategorije, kan.naziv_kanala, tke.kor_grupa_id, tkg.naziv AS grupa_naziv FROM tv_kategorije kat, tv_kanali kan , tv_raspored r
LEFT JOIN tv_kor_emisije tke ON tke.raspored_id=r.id
LEFT JOIN tv_kor_grupa tkg ON tkg.id=tke.kor_grupa_id
WHERE kan.id_pk=r.kanal_id AND kat.id=r.kategorija_id AND r.kanal_id=5 ORDER BY r.kanal_id, r.pocetak;



select r.*, ke.raspored_id, count(ke.raspored_id) from tv_raspored r,  tv_kor_emisije ke 
WHERE r.id=ke.raspored_id
GROUP BY ke.raspored_id
ORDER BY count(ke.raspored_id) desc, pocetak;


select * from tv_tip_korisnika;