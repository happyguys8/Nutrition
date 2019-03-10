/* ********************** ITEM LANGUAGE TABLE **************************/
DROP TABLE IF EXISTS ITMLANG;

CREATE TABLE ITMLANG
(	
	ITMLANG			VARCHAR(01),			-- LANGUAGE ID
	ITMITMNO		VARCHAR(30),			-- ITEM CODE
	ITMNAM			VARCHAR(80)		NULL,	-- ITEM NAME
	ITMEPEC			VARCHAR(500)	NULL,	-- ITEM SPECIFIC
	
	CONSTRAINT PK_ITMMAS PRIMARY KEY NONCLUSTERED (ITMITMNO, ITMLANG)
)