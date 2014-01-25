--Treba upisat samo prave putanje datoteke u kojoj je backup--
--i lokaciju datoteka baze u koju se restora taj backup--

ALTER DATABASE ds_isp
SET SINGLE_USER WITH 
ROLLBACK IMMEDIATE
RESTORE DATABASE ds_isp
    FROM DISK = 'D:\ISP\ISP_pp\Baza\Insert\ds_isp_pseca hrana_dsauer.bak'
            WITH MOVE 'ds_isp' TO 'c:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\ds_isp.mdf',
            MOVE 'ds_isp_Log' TO 'c:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\ds_isp.ldf',
            REPLACE