--CALL usp_GetItmList('E')

DROP Procedure IF exists usp_GetItmList;

DELIMITER //
CREATE PROCEDURE usp_GetItmList
(IN LngTyp VARCHAR(01))

BEGIN
  SELECT * FROM ITMMAS;
END //
DELIMITER ;
