/* ********************** ORGANS MASTER TABLE **************************/
DROP TABLE IF EXISTS ORNMAS;

CREATE TABLE ORNMAS
(	
	ORNCD			VARCHAR(30),			-- ORGANS CODE
	ORNSEQ			int,
	
	CONSTRAINT PK_ORNMAS PRIMARY KEY NONCLUSTERED (ORNCD)
)