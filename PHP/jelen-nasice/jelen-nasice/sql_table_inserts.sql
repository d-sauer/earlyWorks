-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 02, 2008 at 12:35 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `jelennas`
--

-- --------------------------------------------------------

--
-- Table structure for table `izbornik`
--

CREATE TABLE IF NOT EXISTS `izbornik` (
  `id_izb` int(11) NOT NULL auto_increment,
  `naslov` varchar(20) default NULL,
  `redosljed` int(11) NOT NULL,
  PRIMARY KEY  (`id_izb`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `izbornik`
--

INSERT INTO `izbornik` (`id_izb`, `naslov`, `redosljed`) VALUES
(1, 'Povijest', 0),
(2, 'Lovi&#353;te', 1),
(3, '&#268;lanovi', 2),
(4, 'Radovi', 3),
(5, 'Lovovi', 4),
(6, 'Novosti', 5);

-- --------------------------------------------------------

--
-- Table structure for table `kategorija`
--

CREATE TABLE IF NOT EXISTS `kategorija` (
  `id_kat` int(11) NOT NULL auto_increment,
  `id_izb` int(11) NOT NULL,
  `naslov` varchar(30) default NULL,
  `redosljed` int(11) default NULL,
  PRIMARY KEY  (`id_kat`),
  KEY `kat_izb` (`id_izb`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `kategorija`
--

INSERT INTO `kategorija` (`id_kat`, `id_izb`, `naslov`, `redosljed`) VALUES
(1, 1, 'Povijest', 1),
(5, 2, 'LoviA!te', 1),
(6, 3, '�Olanovi', 1),
(7, 4, '2005. godina', 1),
(8, 4, '2007. godina', 2),
(9, 5, 'Arhiva', 1),
(10, 5, '2006./2007.', 2),
(11, 5, '2007./2008.', 3),
(12, 6, '2005. godina', 1),
(13, 6, '2006. godina', 2);

-- --------------------------------------------------------

--
-- Table structure for table `slika`
--

CREATE TABLE IF NOT EXISTS `slika` (
  `id_slika` int(11) NOT NULL auto_increment,
  `id_text` int(11) NOT NULL,
  `path` varchar(250) default NULL,
  `opis` text,
  PRIMARY KEY  (`id_slika`),
  KEY `slike_text` (`id_text`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `slika`
--

INSERT INTO `slika` (`id_slika`, `id_text`, `path`, `opis`) VALUES
(1, 1, './slike/image00001.jpeg', 'Lova�?ko druA!tvo "Jelen" NaA!ice 1982.'),
(2, 1, './slike/image00002.jpeg', '40 godin lova�?kog druA!tva "Jelen" NaA!ice\r\n23.11.1985.'),
(3, 1, './slike/image00003.jpeg', '�Olanovi lova�?kog druA!tva 24.03.1985. godine'),
(4, 1, './slike/image00004.jpeg', '�Olanovi druA!tva prilikom posjete Kopa�?kom ritu 1984. godine'),
(5, 2, './slike/image00005.jpeg', 'Karta A3upanijskih loviA!ta'),
(6, 3, './slike/image00006.jpeg', 'Lova�?ki dom sa nadstreA!nicom  i streljanom u disciplini « Trap «'),
(7, 3, './slike/image00007.jpeg', '�Olanovi udruge  25. oA3ujka 2006. godine'),
(8, 4, './slike/image00008.jpeg', 'Dovođenje vode i plina na lova�?ki dom  02. 07. 2005. god.'),
(9, 4, './slike/image00009.jpeg', 'Obnova krova na lova�?kom domu 03. i 04. rujna 2005. godin'),
(10, 4, './slike/image00010.jpeg', 'Po�?etak izgradnje nadstreA!nice  16. 10. 2005. godine'),
(11, 4, './slike/image00011.jpeg', ''),
(12, 5, './slike/image00012.jpeg', 'Skidanje A3ice u Đurđenici  29. 04. 2007. god.'),
(13, 6, './slike/image00013.jpeg', 'Za vrijeme lova u Zoljanu'),
(14, 6, './slike/image00014.jpeg', 'Nakon lova u paA!njaku Gornje Moti�?ine  '),
(15, 6, './slike/image00015.jpeg', 'Nakon otvorenja lovne  sezone '),
(16, 7, './slike/image00016.jpeg', 'Nakon otvorenja lovne 2006/2007'),
(17, 7, './slike/image00017.jpeg', 'Nakon lova u Seoni'),
(18, 7, './slike/image00018.jpeg', 'Nakon lova u Zoljanu'),
(19, 7, './slike/image00019.jpeg', 'Nakon lova u Donjoj Moti�?ini'),
(20, 7, './slike/image00020.jpeg', 'Nakon zatvaranja lovne 2006/2007.'),
(21, 7, './slike/image00021.jpeg', 'Dogovor prije  lova sa gostima  na divlje svinje'),
(22, 7, './slike/image00022.jpeg', 'Doru�?ak u rubu Rastovca i Paljevina'),
(23, 7, './slike/image00023.jpeg', ' Nakon lova sa gostima u sije�?nju 2007. godine'),
(24, 8, './slike/image00024.jpeg', 'Nakon otvorenja lovne sezone'),
(25, 8, './slike/image00025.jpeg', 'Nakon lova u Seoni'),
(26, 8, './slike/image00026.jpeg', 'Nakon lova u Zoljanu'),
(27, 8, './slike/image00027.jpeg', 'Nakon lova u Donjoj Moti�?ini'),
(28, 8, './slike/image00028.jpeg', 'Nakon lova u Zoljanu'),
(29, 8, './slike/image00029.jpeg', 'Dogovor prije lova kod izvora u Donjoj Moti�?ini'),
(30, 8, './slike/image00030.jpeg', 'Nakon lova na divlje svinje u Valenovcu'),
(31, 8, './slike/image00031.jpeg', 'Nakon lova na divlje svinje u Rastovcu'),
(32, 8, './slike/image00032.jpeg', 'Po�?ast odstrijeljenoj divlja�?i uz zvuke rogista'),
(33, 9, './slike/image00033.jpeg', 'Kum zastave Andrija Tekav�?ić sa zastavom udruge'),
(34, 9, './slike/image00034.jpeg', 'Fra Ivan Mikić posvetio je zastavu'),
(35, 9, './slike/image00035.jpeg', '�Olanovi udruge za vrijeme proslave '),
(36, 10, './slike/image00036.jpeg', 'IzloA3ba trofeja naA!e Udruge u hotelu « Park « u NaA!icama'),
(37, 10, './slike/image00037.jpeg', 'Dodjela odli�?ja u povodu 80. godiA!njice HLS- a'),
(38, 10, './slike/image00038.jpeg', 'DruA3enje �?lanova Udruge sa gostima u naA!i�?kom parku'),
(39, 10, './slike/image00039.jpeg', 'A1upan Osje�?ko-baranjski uru�?io je nove ugovore o zakupu loviA!ta predsjedniku Udruge');

-- --------------------------------------------------------

--
-- Table structure for table `tekst`
--

CREATE TABLE IF NOT EXISTS `tekst` (
  `id_text` int(11) NOT NULL auto_increment,
  `id_kat` int(11) NOT NULL,
  `naslov` varchar(100) default NULL,
  `tekst` text,
  `html` varchar(250) default NULL,
  `html_pos` int(10) unsigned default NULL,
  `datum` date default NULL,
  PRIMARY KEY  (`id_text`),
  KEY `text_kat` (`id_kat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tekst`
--

INSERT INTO `tekst` (`id_text`, `id_kat`, `naslov`, `tekst`, `html`, `html_pos`, `datum`) VALUES
(1, 1, 'Povijest udruge', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<meta name="ProgId" content="Word.Document" />\r\n<meta name="Generator" content="Microsoft Word 11" />\r\n<meta name="Originator" content="Microsoft Word 11" />\r\n<link rel="File-List" href="file:///C:%5CDOCUME%7E1%5Csheky%5CLOCALS%7E1%5CTemp%5Cmsohtml1%5C01%5Cclip_filelist.xml" /><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:HyphenationZone>21</w:HyphenationZone>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n  </w:Compatibility>\r\n  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n </w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState="false" LatentStyleCount="156">\r\n </w:LatentStyles>\r\n</xml><![endif]--><style>\r\n<!--\r\n /* Style Definitions */\r\n p.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-parent:"";\r\n	margin:0cm;\r\n	margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:12.0pt;\r\n	font-family:"Times New Roman";\r\n	mso-fareast-font-family:"Times New Roman";}\r\n@page Section1\r\n	{size:612.0pt 792.0pt;\r\n	margin:70.85pt 70.85pt 70.85pt 70.85pt;\r\n	mso-header-margin:36.0pt;\r\n	mso-footer-margin:36.0pt;\r\n	mso-paper-source:0;}\r\ndiv.Section1\r\n	{page:Section1;}\r\n-->\r\n</style>\r\n<!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:"Table Normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin:0cm;\r\n	mso-para-margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:10.0pt;\r\n	font-family:"Times New Roman";\r\n	mso-ansi-language:#0400;\r\n	mso-fareast-language:#0400;\r\n	mso-bidi-language:#0400;}\r\n</style>\r\n<![endif]--><b><span style="font-size: 10pt; font-family: &quot;Times New Roman&quot;;"><span style="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Lova�?ko dru&scaron;tvo &laquo; Jelen &laquo; Na&scaron;ice osnovano\r\nje 25. listopada 1945. godine. Osniva�?koj skup&scaron;tini su bili nazo�?ni<span style="">&nbsp; </span>lovci<span style="">&nbsp;\r\n</span>: Mijo &scaron;imić , Adam Vujnovac , Stevo Beraković Đuro Vukadinović , Josip\r\nMi�?ka , Strnad Ljudevit , Josip Mihić , Andrija Ko&scaron;turjak , Josip Ivanović ,\r\nAdam Varga , Stevo Buha , Antun Mackuljak , Stjepan Horak , Stjepan RuA3ić ,\r\nVlado &scaron;upih , Stjepan Tonković , Jozo Jamuljak , Stjepan Kraljik , Stjepan\r\nHlobik , Pavo Cvjetović , Franjo Kral , Stjepan Tonković , Josip Silađi , Marko\r\nKnajf , Josip Tadić , Franjo Bri&scaron; i Đuro &scaron;imić . Za prvoga predsjednika su\r\nizabrali Miju &scaron;imića<span style="">&nbsp; </span>potpredsjednik je\r\nbio Andrija Ko&scaron;turjak , tajnik Adam Vujnovac<span style="">&nbsp;\r\n</span>, blagajnik Ljudevit<span style="">&nbsp; </span>Strnad, a\r\nlovnik Stjepan RuA3ić . Podru�?je gospodarenja dru&scaron;tva u to vrijeme su bila\r\nlovi&scaron;ta oko mjesta Na&scaron;ica , Markovca , Velimirovca , Jelisavca<span style="">&nbsp; </span>, Lađanske i Na&scaron;i�?ke Breznice . &scaron;ezdesetih\r\ngodina Hrvatske &scaron;ume su odustale od bavljenja lovnom djelatno&scaron;ću u dijelu\r\nKrndije i lova�?ko dru&scaron;tvo po�?inje gospodariti i tim brdskim dijelom lovi&scaron;ta .\r\nDru&scaron;tvo je tada gospodarilo s preko 20 000 ha povr&scaron;ine . Po�?elo se 1966. god.\r\nsa izgradnjom , a za nekoliko godina je i dovr&scaron;en lova�?ki dom u blizini Zoljana\r\n. Potom je izgrađena streljana za glinene golubove u disciplini &laquo; Trap &laquo; i\r\npotrebne garaA3e za traktor sa priklju�?nim strojevima i terensko vozilo koje je\r\ndru&scaron;tvo posjedovalo . Godine 1972. jedan dio �?lanova je osnovao lova�?ko dru&scaron;tvo\r\n&laquo; Galeb &laquo; i po�?eo gospodariti nizinskim dijelom lovi&scaron;ta<span style="">&nbsp; </span>, a &laquo; Jelen &laquo; je nastavio gospodariti sa\r\nmanjim dijelom nizinskog lovi&scaron;ta<span style="">&nbsp; </span>i\r\npreteA3no brdskim dijelom ukupne povr&scaron;ine oko 10 000 ha<span style="">&nbsp; </span>lovi&scaron;ta . Godine 1996. lovi&scaron;ta se dijele na\r\nVlastita i Zajedni�?ka lovi&scaron;ta . Tako je od većeg dijela povr&scaron;ina nastalo\r\nVlastito (drA3avno) lovi&scaron;te Krndija II<span style="">&nbsp; </span>a\r\nod manjeg rubnog dijela Krndije su napravljena dva Zajedni�?ka (A3upanijska )\r\nlovi&scaron;ta : XIV/181 -<span style="">&nbsp; </span>Na&scaron;ice i<span style="">&nbsp; </span>XIV/182<span style="">&nbsp;\r\n</span>- Valenovac .</span></b>', NULL, NULL, '2008-08-01'),
(2, 5, 'LoviA!te', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<meta name="ProgId" content="Word.Document" />\r\n<meta name="Generator" content="Microsoft Word 11" />\r\n<meta name="Originator" content="Microsoft Word 11" />\r\n<link rel="File-List" href="file:///C:%5CDOCUME%7E1%5Csheky%5CLOCALS%7E1%5CTemp%5Cmsohtml1%5C04%5Cclip_filelist.xml" /><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:HyphenationZone>21</w:HyphenationZone>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n  </w:Compatibility>\r\n  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n </w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState="false" LatentStyleCount="156">\r\n </w:LatentStyles>\r\n</xml><![endif]--><style>\r\n<!--\r\n /* Style Definitions */\r\n p.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-parent:"";\r\n	margin:0cm;\r\n	margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:12.0pt;\r\n	font-family:"Times New Roman";\r\n	mso-fareast-font-family:"Times New Roman";}\r\n@page Section1\r\n	{size:612.0pt 792.0pt;\r\n	margin:70.85pt 70.85pt 70.85pt 70.85pt;\r\n	mso-header-margin:36.0pt;\r\n	mso-footer-margin:36.0pt;\r\n	mso-paper-source:0;}\r\ndiv.Section1\r\n	{page:Section1;}\r\n-->\r\n</style>\r\n<!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:"Table Normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin:0cm;\r\n	mso-para-margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:10.0pt;\r\n	font-family:"Times New Roman";\r\n	mso-ansi-language:#0400;\r\n	mso-fareast-language:#0400;\r\n	mso-bidi-language:#0400;}\r\n</style>\r\n<![endif]--><b><span style="font-size: 10pt; font-family: &quot;Times New Roman&quot;;">Lova�?ka\r\nudruga &laquo; Jelen &laquo; Na&scaron;ice od 1997. godine gospodari Zajedni�?kim otvorenim\r\nlovi&scaron;tem XIV/181 &ndash; Na&scaron;ice i XIV/182 &ndash; Valenovac , a novi desetogodi&scaron;nji ugovor\r\nje potpisan 04. travnja 2007. godine . Oba lovi&scaron;ta su smje&scaron;tena u zapadnom\r\ndijelu Osje�?ko &ndash; baranjske A3upanije i pripadaju nizinskom , sa naznakama\r\nbrdskog tipa lovi&scaron;ta . Lovi&scaron;te ima breA3uljkasti karakter i zauzima sjeverno\r\npodnoA3je Krndije oko naselja : Zoljana , Seone , Donje Moti�?ine , Gornje\r\nMoti�?ine , Gazija , Valenovca i Feri�?anaca . Najvi&scaron;a nadmorska visina je 276\r\nmetara u jugoisto�?nom dijelu lovi&scaron;ta . Cijelo lovi&scaron;te pripada slivu rijeke\r\nDrave , a kroz lovi&scaron;te prolazi nekoliko potoka u kojima se voda zadrA3ava\r\ntijekom cijele godine . Iz strukture je vidljivo da 58% �?ine poljoprivredne\r\npovr&scaron;ine i pa&scaron;njaci , dok je pod &scaron;umama oko 42% povr&scaron;ina . Naj�?e&scaron;će su vrste\r\ndrveća hrast kitnjak , bukva i grab . Povr&scaron;ina oba lovi&scaron;ta je 3668 ha , a oko\r\n200 ha su povr&scaron;ine na kojima nije ustanovljeno lovi&scaron;te . Osim �?i&scaron;ćenja prosjeka\r\n, odrA3avanja lovno tehni�?kih i lovnogospodarskih objekata , te<span style="">&nbsp; </span>drugih radova u lovi&scaron;tu , obrađuje se oko 5\r\nhektara zemlje . Sadi se naj�?e&scaron;će kukuruz , p&scaron;enica i zob za zimsku prihranu i\r\nprehranu divlja�?i . U lovi&scaron;tu se nalazi 14 spremi&scaron;ta za hranu , 37 natkrivenih\r\n�?eka , 19 srnećih hranili&scaron;ta , 55 fazanskih i 40 soli&scaron;ta . Glavne vrste\r\ndivlja�?i su : srna obi�?na , zec i<span style="">&nbsp;\r\n</span>fazan<span style="">&nbsp; </span>, a<span style="">&nbsp; </span>divlja svinja i jelenska divlja�? kao sporedna\r\nvrsta . Svake se godine kupuje oko 100 komada fazanske divlja�?i i ispu&scaron;ta u\r\nlovi&scaron;te . Godi&scaron;nje se odstrijeli oko sto kljunova , dvadesetak ze�?eva i oko\r\ndeset grla srneće divlja�?i . Na osnovu isplaćenih &scaron;teta koju divlja�? napravi ,\r\nUpravni odjel za poljoprivredu i gospodarstvo Osje�?ko &ndash; baranjske A3upanije\r\nodobrava Udruzi odstrjel određenog broja divljih svinja i jelenske divlja�?i\r\n.<span style="">&nbsp; </span>U lovovima na nisku divlja�? naj�?e&scaron;će\r\nsu zastupljeni<span style="">&nbsp; </span>njema�?ki pti�?ari i\r\nepanjel bretoni , dok u lovu na divlje svinje i grabeA3ljivce lovci &laquo; Jelena &laquo;\r\nnaj�?e&scaron;će koriste brak jazav�?are .</span></b>', NULL, NULL, '2008-08-02'),
(3, 6, '�Olanovi', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />\r\n<meta name="ProgId" content="Word.Document" />\r\n<meta name="Generator" content="Microsoft Word 11" />\r\n<meta name="Originator" content="Microsoft Word 11" />\r\n<link rel="File-List" href="file:///C:%5CDOCUME%7E1%5Csheky%5CLOCALS%7E1%5CTemp%5Cmsohtml1%5C08%5Cclip_filelist.xml" /><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:HyphenationZone>21</w:HyphenationZone>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n  </w:Compatibility>\r\n  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n </w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState="false" LatentStyleCount="156">\r\n </w:LatentStyles>\r\n</xml><![endif]--><style>\r\n<!--\r\n /* Style Definitions */\r\n p.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-parent:"";\r\n	margin:0cm;\r\n	margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:12.0pt;\r\n	font-family:"Times New Roman";\r\n	mso-fareast-font-family:"Times New Roman";}\r\np.MsoBodyText, li.MsoBodyText, div.MsoBodyText\r\n	{margin:0cm;\r\n	margin-bottom:.0001pt;\r\n	text-align:justify;\r\n	mso-pagination:widow-orphan;\r\n	font-size:10.0pt;\r\n	mso-bidi-font-size:12.0pt;\r\n	font-family:"Times New Roman";\r\n	mso-fareast-font-family:"Times New Roman";\r\n	font-weight:bold;}\r\n@page Section1\r\n	{size:612.0pt 792.0pt;\r\n	margin:70.85pt 70.85pt 70.85pt 70.85pt;\r\n	mso-header-margin:36.0pt;\r\n	mso-footer-margin:36.0pt;\r\n	mso-paper-source:0;}\r\ndiv.Section1\r\n	{page:Section1;}\r\n-->\r\n</style>\r\n<!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:"Table Normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin:0cm;\r\n	mso-para-margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:10.0pt;\r\n	font-family:"Times New Roman";\r\n	mso-ansi-language:#0400;\r\n	mso-fareast-language:#0400;\r\n	mso-bidi-language:#0400;}\r\n</style>\r\n<![endif]-->\r\n\r\n<p class="MsoBodyText">Lova�?ka udruga &laquo; Jelen &laquo; Na&scaron;ice trenutno ima 90\r\n�?lanova<span style="">&nbsp; </span>. Po broju �?lanova jedna je od\r\nvećih lova�?kih udruga Osje�?ko &ndash; baranjske A3upanije . Najmlađi lovac je star 19\r\n, a najstariji 76 godina Prosje�?na starost udruge je 48 godina . Predsjednik\r\nudruge je A1eljko Celcner iz Gazija , zamjenik predsjednika je Zvonko Simel iz\r\nNa&scaron;ica , glavni lovnik je Zlatko Sauer iz Na&scaron;ica, blagajnik i knjigovođa je\r\nĐuro &scaron;tajhofer iz Na&scaron;ica , a provoditelji lovnogospodarske osnove je A1eljko\r\nCelcner. Udruga posjeduje i lova�?ki dom koji se nalazi pored Zoljana u blizini\r\nNa&scaron;ica .<span style="">&nbsp; </span>Pored doma je izgrađena\r\nnadstre&scaron;nica , garaA3e i streljana u disciplini &laquo; Trap &laquo; . </p>', NULL, NULL, '2008-08-02'),
(4, 7, '2005. godina', NULL, NULL, NULL, '2008-08-02'),
(5, 8, '2007. godina', NULL, NULL, NULL, '2008-08-02'),
(6, 9, 'Arhiva', NULL, NULL, NULL, '2008-08-02'),
(7, 10, '2006./2007. godina', NULL, NULL, NULL, '2008-08-02'),
(8, 11, '2007./2008. godina', NULL, NULL, NULL, '2008-08-02'),
(9, 12, '60. godina osnutka', '&nbsp;&nbsp;&nbsp;&nbsp; Lova�?ka udruga je proslavila 60 godina osnutka .&nbsp; Sve�?ana sjednica&nbsp; odrA3ana je 26.&nbsp; studenoga 2005. <br />Osim nagrađenih �?lanova i Udruga je od Hrvatskog lova�?kog saveza dobila Odlikovanje II reda za uspjehe postignute na&nbsp; unapređenju lovstva . Nakon 60 godina Udruga ima i svoju zastavu .<br />&nbsp;&nbsp;&nbsp;&nbsp; Svake godine u rujnu grad Na&scaron;ice slavi &laquo; Dane slavonskih &scaron;uma &laquo; . Lova�?ka udruga &laquo; Jelen &laquo; se kao i ostale udruge Lovnog ureda Na&scaron;ice aktivno uklju�?uje u obiljeA3avanje proslave . U prostorijama hotela Park&nbsp; 2006. godine&nbsp; priređena je izloA3ba starog oruA3ja kolekcionara na&scaron;i�?kog kraja i izloA3ba trofeja ste�?enih u lovi&scaron;tu Lova�?ke udruge &laquo; Jelen &laquo; . U parku ispod dvorca obitelji Peja�?ević odrA3ava se natjecanje lova�?kih udruga u kuhanju �?obanca i druA3enje sa gostima , a &scaron;umari se natje�?u u njima srodnim disciplinama .&nbsp; �Olanovi na&scaron;e udruge Sofija Vi�?ić i Stanislav Benović kao i lova�?ka udruga , primili su odli�?ja u povodu 80. godi&scaron;njice Hrvatskog lova�?kog saveza . <br /><br />', NULL, NULL, '2008-08-02'),
(10, 13, 'Dani slavonskih A!uma', NULL, NULL, NULL, '2008-08-02');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD CONSTRAINT `kat_izb` FOREIGN KEY (`id_izb`) REFERENCES `izbornik` (`id_izb`);

--
-- Constraints for table `slika`
--
ALTER TABLE `slika`
  ADD CONSTRAINT `slike_text` FOREIGN KEY (`id_text`) REFERENCES `tekst` (`id_text`) ON DELETE CASCADE;

--
-- Constraints for table `tekst`
--
ALTER TABLE `tekst`
  ADD CONSTRAINT `text_kat` FOREIGN KEY (`id_kat`) REFERENCES `kategorija` (`id_kat`) ON DELETE CASCADE;
