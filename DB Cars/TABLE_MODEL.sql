CREATE TABLE MODEL
(
	ID INT PRIMARY KEY NONCLUSTERED NOT NULL,
	NAME NVARCHAR(50) NOT NULL,
	ID_BRAND INT FOREIGN KEY REFERENCES BRAND(ID) NOT NULL
);