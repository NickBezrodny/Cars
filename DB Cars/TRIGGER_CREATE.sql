CREATE Trigger ddlt_PreventDDLCreateTableON DATABASE FOR CREATE_TABLE
AS
 RAISERROR (N'Попытка создания таблицы!', 10, 1);
 ROLLBACK;

 CREATE Table RUN(
 ID INT PRIMARY KEY NONCLUSTERED NOT NULL
 );