/* ********************** User Master Table **************************/
if exists (select * from sysobjects where id = object_id('dbo.usrmas'))
  drop table usrmas
go

CREATE TABLE USRMAS
(
    USRCOD			nVarChar(20),
    USRNAM			nVarChar(50)    NULL,
    USREMPNO		nVarChar(10)	NULL,
    USRLOCCD		nVarChar(10)	NULL,
    USRTEAM			nVarChar(20)	NULL,
    USRDEPT			nVarChar(10)	NULL,
    USRGRP			nVarChar(10)	NULL,
    USRPWD			VarBinary(MAX)  NULL,
    USREMAIL		nVarChar(50)	NULL,
    USRPOSITION		nVarChar(50)	NULL,
    USRSTPFLG		nVarChar(01)	NULL,
    USRLUPUSR		nVarChar(20)	NULL,
    USRLUPDTE		DateTime		NULL,
    USRAPRRIGHT		nVARCHAR(01)	NULL,
    USRFAILLOGIN	Integer			DEFAULT(0)
    
    CONSTRAINT PK_USRMAS PRIMARY KEY NONCLUSTERED (USRCOD),
)
GO
