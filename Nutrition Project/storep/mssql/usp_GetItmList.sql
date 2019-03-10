IF exists (Select * from sysobjects where id = object_id('dbo.usp_GetItmList'))
    DROP Procedure usp_GetItmList
GO

CREATE Procedure usp_GetItmList

	@LngTyp		nVarChar(01)

AS
	Set ArithAbort Off
	Set ArithIgnore On
	SET NOCOUNT ON
	SET TRANSACTION ISOLATION LEVEL SNAPSHOT
	
	SELECT * FROM ITMMASW
GO
