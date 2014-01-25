CREATE TABLE ljec (
	id_ljec int primary key identity(1,1),
	ime varchar(15)
)

CREATE TABLE l_p (
	id_pac int,
	id_ljec int,
	foreign key(id_pac) REFERENCES pac(id_pac) ON DELETE CASCADE,
	foreign key(id_ljec) references ljec(id_ljec)
)

CREATE TABLE pac (
	id_pac int primary key identity(1,1),
	ime varchar(15),
)
/*
DROP TABLE pac
DROP TABLE ljec
DROP TABLE l_p
*/

INSERT INTO pac VALUES ('Davor')
INSERT INTO pac VALUES ('Igor')
INSERT INTO pac VALUES ('Ivan')
INSERT INTO pac VALUES ('Darko')
INSERT INTO pac VALUES ('Dario')

INSERT INTO ljec VALUES ('John')
INSERT INTO ljec VALUES ('Eliot')
INSERT INTO ljec VALUES ('Chris')

select * from pac
select * from ljec
select * from l_p

INSERT INTO l_p VALUES (1,1)
INSERT INTO l_p VALUES (2,1)
INSERT INTO l_p VALUES (2,2)
INSERT INTO l_p VALUES (3,2)
INSERT INTO l_p VALUES (4,2)
INSERT INTO l_p VALUES (5,2)


select l.ime, p.ime FROM pac p, ljec l, l_p WHERE l.id_ljec=l_p.id_ljec AND p.id_pac=l_p.id_pac

DELETE FROM ljec WHERE id_ljec=1  --nemoze se obrisat ljecnik jer ima pacjenata
DELETE FROM pac WHERE id_pac=2


