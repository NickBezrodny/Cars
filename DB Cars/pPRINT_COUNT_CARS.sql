CREATE PROC pPrintCountCars (@ID_OWNER INT)
AS
BEGIN 
	DECLARE @Avaible INT = @ID_OWNER;
	DECLARE @T NVARCHAR(10) = CAST(@ID_OWNER AS NVARCHAR(10));
	DECLARE @S INT = ( 
		SELECT Count(ID)
		FROM dbo.Car
		WHERE ID_OWNER = @Avaible);
	IF @S = 0
		PRINT N'� �������� � ��������������� ' + @T + N' ��� �����������(-�)'
	ELSE PRINT N'� �������� � ��������������� ' + @T + N' ' + CAST(@s AS NVARCHAR(10)) + N' �����������'
END;

EXEC pPrintCountCars @ID_OWNER=108;