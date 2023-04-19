CREATE TABLE CAR
(
	ID INT PRIMARY KEY NONCLUSTERED NOT NULL,
	ID_OWNER INT FOREIGN KEY REFERENCES [OWNER](ID) NOT NULL,
	ID_COUNTRY INT FOREIGN KEY REFERENCES COUNTRY(ID) NOT NULL,
	ID_MODEL INT FOREIGN KEY REFERENCES MODEL(ID) NOT NULL,
	ID_POWER INT FOREIGN KEY REFERENCES [POWER](ID) NOT NULL,
	ID_COLOR INT FOREIGN KEY REFERENCES COLOR(ID) NOT NULL,
	DATE_RELEASE DATE  NOT NULL
);

ALTER TABLE CAR
ADD CONSTRAINT CH_DATE_RELEASE
CHECK (DATE_RELEASE > '1970-01-01');



ALTER TABLE CAR
ADD CONSTRAINT fk_OWNER
FOREIGN KEY (ID_OWNER)
REFERENCES [OWNER](ID)
ON DELETE SET DEFAULT;

