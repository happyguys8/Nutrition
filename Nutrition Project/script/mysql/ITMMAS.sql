/* ********************** ITEM MASTER TABLE **************************/
DROP TABLE IF EXISTS ITMMAS;

CREATE TABLE ITMMAS
(	
	ITMITMNO		VARCHAR(30),			-- ITEM CODE
	ITMSTATUS		VARCHAR(01)		NULL,  	-- ITEM STATUS
	ITMTYPE			VARCHAR(01)		NULL,	-- ITEM TYPE
	ITMCAGCD		VARCHAR(10)		NULL,	-- ITEM CATEGORY CODE
	ITMPRMCD		VARCHAR(01)		NULL,	-- ITEM PYRAMID CODE
	ITMRMK			VARCHAR(100)	NULL,	-- ITEM REMARK
	ITMCOLOR		VARCHAR(100)	NULL,	-- ITEM COLOR
	ITMSTPEFF		DATETIME		NULL,	-- STOP FLAG
	ITMCRTUSR		VARCHAR(15)		NULL,	-- CREATE USER
	ITMCRTDTE		DATETIME		NULL,	-- CREATE DATE
	ITMLUPUSR		VARCHAR(15)		NULL,	-- LAST UPDATE USER
	ITMLUPDTE		DATETIME		NULL,   -- LAST UPDATE DATE

	CONSTRAINT PK_ITMMAS PRIMARY KEY NONCLUSTERED (ITMITMNO)
)

/*
	insert into ITMMAS (ITMITMNO) values ('10F40019');
	insert into ITMMAS (ITMITMNO) values ('13A12001');
	insert into ITMMAS (ITMITMNO) values ('10E10113');
	insert into ITMMAS (ITMITMNO) values ('10E10098');
	insert into ITMMAS (ITMITMNO) values ('10E10107');
	insert into ITMMAS (ITMITMNO) values ('10E10099');
	insert into ITMMAS (ITMITMNO) values ('10E10106');
*/

