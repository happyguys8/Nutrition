/* ********************** Nutrition Language Table **************************/
DROP TABLE IF EXISTS NUTLANG;

CREATE TABLE NUTLANG
(	
	NUTLANG			VARCHAR(01),			-- LANGUAGE ID
	NUTCD			VARCHAR(30),			-- NUTRITION CODE
	NUTNAM			VARCHAR(80)		NULL,	-- NUTRITION NAME
	NUTSPEC			VARCHAR(500)	NULL,	-- NUTRITION SPECIFIC
	NUTIMG			VARCHAR(500)	NULL,	-- ORGANS IMAGE
	
	CONSTRAINT PK_NUTLANG PRIMARY KEY NONCLUSTERED (NUTLANG, NUTCD)
)

