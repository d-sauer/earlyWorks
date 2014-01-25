--Insert participacije
SET IDENTITY_INSERT [dbo].[part] ON
INSERT INTO [dbo].[part] ([id_part], [status], [part])
VALUES 
  (1, N'predskolska dob', 40)
GO

INSERT INTO [dbo].[part] ([id_part], [status], [part])
VALUES 
  (2, N'osnovnoskolska dob', 50)
GO

INSERT INTO [dbo].[part] ([id_part], [status], [part])
VALUES 
  (3, N'srednjoskolska dob', 55)
GO

INSERT INTO [dbo].[part] ([id_part], [status], [part])
VALUES 
  (4, N'osnovno zdravstveno', 85)
GO

INSERT INTO [dbo].[part] ([id_part], [status], [part])
VALUES 
  (5, N'participacija 70', 70)
GO
SET IDENTITY_INSERT [dbo].[part] OFF
GO

--Insert pacijenti


SET IDENTITY_INSERT [dbo].[pacjent] ON
GO
INSERT INTO [dbo].[pacjent] ([id_pac], [ime_prez], [id_osobna], [id_part], [adresa], [mail], [otvaranje])
VALUES 
  (1, N'Ivan Svoren', N'1002984', 1, N'J.J.strosmajera 64
31500 Nasice', N'isvoren@foi.hr', '20070423 13:29:00')
GO

INSERT INTO [dbo].[pacjent] ([id_pac], [ime_prez], [id_osobna], [id_part], [adresa], [mail], [otvaranje])
VALUES 
  (2, N'Davor Sauer', N'2105984', 4, N'B.J.Jelacica 81, Velimirovac
31500 Nasice', N'davor.sauer@gmail.com', '20070423 13:30:00')
GO

INSERT INTO [dbo].[pacjent] ([id_pac], [ime_prez], [id_osobna], [id_part], [adresa], [mail], [otvaranje])
VALUES 
  (3, N'Ivan Bernatovic', N'2306984', 3, N'I.G. Kovacica 68
31500 Nasice', N'ibernato@foi.hr', '20070423 13:31:00')
GO

INSERT INTO [dbo].[pacjent] ([id_pac], [ime_prez], [id_osobna], [id_part], [adresa], [mail], [otvaranje])
VALUES 
  (4, N'Luka Vladika', N'207984', 4, N'B.J. Jelacica 102, Martin
31500 Nasice', N'lvladika@foi.hr', '20070423 13:32:00')
GO

INSERT INTO [dbo].[pacjent] ([id_pac], [ime_prez], [id_osobna], [id_part], [adresa], [mail], [otvaranje])
VALUES 
  (5, N'Nikolina Škrljac', N'2901984', 2, N'Cariæa 6, Sesvete
10000 zagreb', N'nskrljac@foi.hr', '20070423 13:33:00')
GO

INSERT INTO [dbo].[pacjent] ([id_pac], [ime_prez], [id_osobna], [id_part], [adresa], [mail], [otvaranje])
VALUES 
  (6, N'Kristina Šaško', N'2708984', 5, N'Kumièiæeva 76
4200 Varaždin', N'ksasko@foi.hr', '20070423 13:34:00')
GO

INSERT INTO [dbo].[pacjent] ([id_pac], [ime_prez], [id_osobna], [id_part], [adresa], [mail], [otvaranje])
VALUES 
  (7, N'Anita Bendelja', N'205982', 4, N'I.G.Kovaèièa 55
42000 Varaždin', N'abendelja@foi.hr', '20070423 13:35:00')
GO

INSERT INTO [dbo].[pacjent] ([id_pac], [ime_prez], [id_osobna], [id_part], [adresa], [mail], [otvaranje])
VALUES 
  (8, N'Alen Kutle', N'702984', 1, N'Radmaniæeva 6, Sesvete
10000 Zagreb', N'akutle@foi.hr', '20070423 13:36:00')
GO

INSERT INTO [dbo].[pacjent] ([id_pac], [ime_prez], [id_osobna], [id_part], [adresa], [mail], [otvaranje])
VALUES 
  (9, N'Damir Samardzija', N'1612984', 4, N'Bakaèeva 66
42000 Varaždin', N'dsamardzija@yahoo.com', '20070423 13:37:00')
GO

INSERT INTO [dbo].[pacjent] ([id_pac], [ime_prez], [id_osobna], [id_part], [adresa], [mail], [otvaranje])
VALUES 
  (10, N'Andrea Zegarac', N'3001984', 5, N'Brace Radica 55
Staro Petrovo Selo
35400 Nova Gradiška', N'dea010@yahoo.com', '20070423 13:38:00')
GO

INSERT INTO [dbo].[pacjent] ([id_pac], [ime_prez], [id_osobna], [id_part], [adresa], [mail], [otvaranje])
VALUES 
  (11, N'Jelena Zavada', N'1207984', 3, N'J.J.Strosmajera 51
31500 Nasice', N'nolucy@gmail.com', '20070423 13:39:00')
GO

INSERT INTO [dbo].[pacjent] ([id_pac], [ime_prez], [id_osobna], [id_part], [adresa], [mail], [otvaranje])
VALUES 
  (12, N'Boris Kresoja', N'708984', 2, N'J.J.strosmajera 120
31500 Nasice', N'bkresoja@gmail.com', '20070423 13:39:00')
GO

INSERT INTO [dbo].[pacjent] ([id_pac], [ime_prez], [id_osobna], [id_part], [adresa], [mail], [otvaranje])
VALUES 
  (13, N'Tomo Djuric', N'2609984', 1, N'Kralja Tomislava 5
31500 Nasice', N'zloinaopako@gmail.com', '20070423 13:40:00')
GO

INSERT INTO [dbo].[pacjent] ([id_pac], [ime_prez], [id_osobna], [id_part], [adresa], [mail], [otvaranje])
VALUES 
  (14, N'Marko Franjin', N'2011984', 4, N'Kralja Tomislava 55
31500 Nasice', N'mfranjin@gmail.com', '20070423 13:41:00')
GO
SET IDENTITY_INSERT [dbo].[pacjent] OFF
GO


--Insert zahvati
SET IDENTITY_INSERT [dbo].[zahvati] ON
GO

INSERT INTO [dbo].[zahvati] ([id_zah], [zahvat], [cijena])
VALUES 
  (1, N'Stavljanje lijeka', 40)
GO

INSERT INTO [dbo].[zahvati] ([id_zah], [zahvat], [cijena])
VALUES 
  (2, N'rengensko snimanje', 120)
GO

INSERT INTO [dbo].[zahvati] ([id_zah], [zahvat], [cijena])
VALUES 
  (3, N'osnovni pregled', 35)
GO

INSERT INTO [dbo].[zahvati] ([id_zah], [zahvat], [cijena])
VALUES 
  (4, N'stavljanje mosta', 180)
GO

INSERT INTO [dbo].[zahvati] ([id_zah], [zahvat], [cijena])
VALUES 
  (5, N'stavljanje blombe', 145.85)
GO

INSERT INTO [dbo].[zahvati] ([id_zah], [zahvat], [cijena])
VALUES 
  (6, N'uzimanje ostiska zubala', 75)
GO

INSERT INTO [dbo].[zahvati] ([id_zah], [zahvat], [cijena])
VALUES 
  (7, N'izrada zubne proteze', 230.9)
GO

INSERT INTO [dbo].[zahvati] ([id_zah], [zahvat], [cijena])
VALUES 
  (8, N'izrada zubala', 320)
GO

INSERT INTO [dbo].[zahvati] ([id_zah], [zahvat], [cijena])
VALUES 
  (9, N'brusenje cakline', 45)
GO

SET IDENTITY_INSERT [dbo].[zahvati] OFF
GO

--Insert lijecnici
SET IDENTITY_INSERT [dbo].[ljecnik] ON
GO

INSERT INTO [dbo].[ljecnik] ([id_ljec], [ime_prez], [lozinka])
VALUES 
  (1, N'Administrator', NULL)
GO

INSERT INTO [dbo].[ljecnik] ([id_ljec], [ime_prez], [lozinka])
VALUES 
  (2, N'Dr. John Dorian', NULL)
GO

INSERT INTO [dbo].[ljecnik] ([id_ljec], [ime_prez], [lozinka])
VALUES 
  (3, N'Dr. Elliot Reid', NULL)
GO

INSERT INTO [dbo].[ljecnik] ([id_ljec], [ime_prez], [lozinka])
VALUES 
  (4, N'Dr. Christopher Turk', NULL)
GO

INSERT INTO [dbo].[ljecnik] ([id_ljec], [ime_prez], [lozinka])
VALUES 
  (5, N'Dr. Bob Kelso', NULL)
GO

INSERT INTO [dbo].[ljecnik] ([id_ljec], [ime_prez], [lozinka])
VALUES 
  (6, N'Dr. Jan''i Tor', NULL)
GO

INSERT INTO [dbo].[ljecnik] ([id_ljec], [ime_prez], [lozinka])
VALUES 
  (7, N'Dr. Perry Cox', NULL)
GO


SET IDENTITY_INSERT [dbo].[ljecnik] OFF