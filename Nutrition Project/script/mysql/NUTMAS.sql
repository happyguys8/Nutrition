/* ********************** Nutrition Master Table **************************/
DROP TABLE IF EXISTS NUTMAS;

CREATE TABLE NUTMAS
(	
	NUTCD			VARCHAR(30),			-- NUTCD CODE
	NUTSEQ			int

	CONSTRAINT PK_NUTMAS PRIMARY KEY NONCLUSTERED (NUTCD)
)