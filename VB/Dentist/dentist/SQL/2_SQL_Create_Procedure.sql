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

CREATE PROCEDURE ListLjecZah @ljec varchar(30) AS
BEGIN
	select * from LjecnikoviZahvati WHERE ime_prez=@ljec
END