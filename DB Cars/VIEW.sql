ALTER VIEW vCars
AS
SELECT O.FIRST_NAME AS ���, O.LAST_NAME AS �������, B.[NAME] AS �����, M.[NAME] AS ������
FROM CAR AS C
LEFT JOIN [OWNER] AS O
ON C.ID_OWNER=O.ID
LEFT JOIN MODEL AS M
ON C.ID_MODEL=M.ID
LEFT JOIN BRAND AS B
ON M.ID_BRAND=B.ID;

SELECT *
FROM vCars;

--DROP VIEW vCars;