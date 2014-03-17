CREATE TABLE mjerne_jed (
  mjer_jed INT NOT NULL PRIMARY KEY IDENTITY(1,1) ,
  naziv VARCHAR(15)
)

CREATE TABLE projekt (
  id_proj INT  NOT NULL IDENTITY(1,1),
  naziv VARCHAR(20),
  asortiman TEXT,
  proces TEXT,
  sastavnica TEXT,
  komentar INT,
  pocetak DATETIME,
  trajanje INT,
  jed_mj INT,
  PRIMARY KEY(id_proj)
)

CREATE TABLE proizvod (
  id_pr INT NOT NULL IDENTITY(1,1),
  id_proj INT  NOT NULL,
  sif_proiz VARCHAR(8) NOT NULL,
  naziv VARCHAR(20) ,
  opis TEXT ,
  mjera INT  ,
  vel_serije FLOAT ,
  zalihe FLOAT ,
  min_zalihe INT  ,
  lead_time INT  ,
  mjer_jed INT  ,
  PRIMARY KEY(id_pr),
  FOREIGN KEY (id_proj) REFERENCES projekt(id_proj) ON DELETE CASCADE,
  FOREIGN KEY (mjer_jed) REFERENCES mjerne_jed(mjer_jed)
)

CREATE TABLE dobavljac (
  id_dob INT NOT NULL IDENTITY(1,1),
  id_proj INT NOT NULL,
  sifra VARCHAR(8) NOT NULL,
  naziv VARCHAR(30),
  opis TEXT,
  PRIMARY KEY(id_dob),
  FOREIGN KEY (id_proj) REFERENCES projekt(id_proj) ON DELETE CASCADE
)

CREATE TABLE sifarnik (
  id_art INT NOT NULL IDENTITY(1,1),
  id_proj INT  NOT NULL,
  id_dob INT  NOT NULL ,
  sif_art VARCHAR(8) NOT NULL ,
  naziv VARCHAR(30) ,
  mjer_jed INT  ,
  zalihe FLOAT ,
  min_zalihe INT  ,
  lead_time INT  ,
  vel_serije FLOAT ,
  opis TEXT ,
  PRIMARY KEY (id_art),
  FOREIGN KEY (id_proj) REFERENCES projekt(id_proj) ON DELETE CASCADE,
  FOREIGN KEY (mjer_jed) REFERENCES mjerne_jed(mjer_jed),
  FOREIGN KEY (id_dob) REFERENCES dobavljac(id_dob)
)

CREATE TABLE sastavnica (
  id_pr INT NOT NULL ,
  id_art INT  ,
  id_sas_art INT  ,
  kolicina FLOAT ,
  N_parent INT  ,
  N_child INT,	
  razina INT,
  FOREIGN KEY (id_art) REFERENCES sifarnik(id_art),
  FOREIGN KEY (id_sas_art) REFERENCES sifarnik(id_art),
  FOREIGN KEY (id_pr) REFERENCES proizvod (id_pr) ON DELETE CASCADE
)

CREATE TABLE ppp (
  id_pr INT NOT NULL,
  razdoblje INT NOT NULL,
  kolicina FLOAT default 0,
  FOREIGN KEY (id_pr) REFERENCES proizvod(id_pr) ON DELETE CASCADE
)

CREATE TABLE gpp_analiticki (
  id_pr INT NOT NULL,
  razdoblje INT NOT NULL,
  prog_nar FLOAT default 0,
  pristigle_nar FLOAT default 0,
  plan_potr FLOAT default 0,
  plan_proiz FLOAT default 0,
  dod_pot FLOAT default 0,
  poc_zalihe FLOAT default 0,
  uk_zal FLOAT default 0,
  kol_za_nud FLOAT default 0,
  FOREIGN KEY (id_pr) REFERENCES proizvod(id_pr) ON DELETE CASCADE
)

CREATE TABLE mrp_pr (
  id_pr INT  NOT NULL,
  razdoblje INT NOT NULL,
  uk_zah FLOAT default 0,
  ot_nal FLOAT default 0,
  ot_nar FLOAT default 0,
  uk_zal FLOAT default 0,
  dod_potr FLOAT default 0,
  pl_nalozi FLOAT default 0,
  FOREIGN KEY (id_pr) REFERENCES proizvod(id_pr) ON DELETE CASCADE
)

CREATE TABLE mrp_art (
  id_art INT  NOT NULL,
  razina INT ,
  razdoblje INT NOT NULL,
  uk_zah FLOAT default 0,
  ot_nal FLOAT default 0,
  ot_nar FLOAT default 0,
  uk_zal FLOAT default 0,
  dod_potr FLOAT default 0,
  pl_nalozi FLOAT default 0,
  FOREIGN KEY (id_art) REFERENCES sifarnik(id_art) ON DELETE CASCADE
)

CREATE TABLE otvoreni_nal (  --otvoreni nalozi
  id_pr INT  NOT NULL,
  razdoblje INT NOT NULL,
  kolicina FLOAT default 0,
  FOREIGN KEY (id_pr) REFERENCES proizvod(id_pr) ON DELETE CASCADE
)

CREATE TABLE otvorene_nar (
  id_art INT  NOT NULL,
  razdoblje INT NOT NULL,
  kolicina FLOAT default 0,
  FOREIGN KEY (id_art) REFERENCES sifarnik(id_art) ON DELETE CASCADE
)

CREATE TABLE radno_mjesto (
  id_rm INT  NOT NULL IDENTITY(1,1),
  r_mjesto VARCHAR(8) ,
  opis TEXT ,
  PRIMARY KEY(id_rm)
)

CREATE TABLE norme (
  id_rm INT  NOT NULL,
  id_pr INT  ,
  ns FLOAT ,
  operacija INT  ,
  FOREIGN KEY (id_rm) REFERENCES radno_mjesto(id_rm),
  FOREIGN KEY (id_pr) REFERENCES proizvod(id_pr) ON DELETE CASCADE
)

CREATE TABLE rokovi (
  id_rad_nal INT  NOT NULL  IDENTITY(1,1),
  id_pr INT  ,
  vrijeme_zavr INT  ,
  vrijeme INT  ,
  prazni_hod INT  ,
  pocetak VARCHAR(8) ,
  zavrsetak VARCHAR(8) ,
  skladisteno VARCHAR(8) ,
  PRIMARY KEY(id_rad_nal),
  FOREIGN KEY(id_pr) REFERENCES proizvod(id_pr) ON DELETE CASCADE
)

CREATE TABLE rokovi_rad_mj (
  id_rad_nal INT  NOT NULL,
  id_rm INT  ,
  operacija INT  ,
  FOREIGN KEY (id_rad_nal) REFERENCES rokovi(id_rad_nal),
  FOREIGN KEY (id_rm) REFERENCES radno_mjesto(id_rm) ON DELETE CASCADE
)

CREATE TABLE gantogram (
	id_rm int,
	razdoblje int default 0,
	dan int default 0,
	t00 int default 0,
	t01 int default 0,
	t02 int default 0,
	t03 int default 0,
	t04 int default 0,
	t05 int default 0,
	t06 int default 0,
	t07 int default 0,
	t10 int default 0,
	t11 int default 0,
	t12 int default 0,
	t13 int default 0,
	t14 int default 0,
	t15 int default 0,
	t16 int default 0,
	t17 int default 0,
	FOREIGN KEY (id_rm) REFERENCES radno_mjesto(id_rm) ON DELETE CASCADE
)

INSERT INTO mjerne_jed(naziv) VALUES('komad')
INSERT INTO mjerne_jed(naziv) VALUES('kilogram')
INSERT INTO mjerne_jed(naziv) VALUES('litra')

