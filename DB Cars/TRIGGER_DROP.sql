CREATE Trigger ddlt_PreventDDLDropTableON DATABASE FOR DROP_TABLE
AS
 RAISERROR (N'Попытка удаления таблицы!', 10, 1);
 ROLLBACK;

 DROP Table CAR;




 