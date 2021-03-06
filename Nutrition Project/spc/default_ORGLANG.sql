DELETE FROM ORNMAS;
DELETE FROM ORNLANG;

SET @SEQ = 0;
SET @ORN = 0;
SET @ORNCD = '';

SET @SEQ = @SEQ + 1;
SET @ORN = @ORN + 1;
SET @ORNCD = LPAD(CONVERT(@ORN, CHAR), 4, '0');

INSERT INTO ORNMAS (ORNCD, ORNSEQ)
SELECT @ORNCD, @SEQ;

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '1', @ORNCD, 'Brain', N'Brain', 'brain.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '2', @ORNCD, N'腦', N'腦', 'brain.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '3', @ORNCD, N'脑', N'脑', 'brain.jpg';

/* **********************************************************/

SET @SEQ = @SEQ + 1;
SET @ORN = @ORN + 1;
SET @ORNCD = LPAD(CONVERT(@ORN, CHAR), 4, '0');

INSERT INTO ORNMAS (ORNCD, ORNSEQ)
SELECT @ORNCD, @SEQ;

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '1', @ORNCD, 'Eye', N'Eye', 'eye.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '2', @ORNCD, N'眼睛', N'眼睛', 'eye.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '3', @ORNCD, N'眼睛', N'眼睛', 'eye.jpg';

/* **********************************************************/

SET @SEQ = @SEQ + 1;
SET @ORN = @ORN + 1;
SET @ORNCD = LPAD(CONVERT(@ORN, CHAR), 4, '0');

INSERT INTO ORNMAS (ORNCD, ORNSEQ)
SELECT @ORNCD, @SEQ;

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '1', @ORNCD, 'Ear', N'Ear', 'ear.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '2', @ORNCD, N'耳朵', N'耳朵', 'ear.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '3', @ORNCD, N'耳朵', N'耳朵', 'ear.jpg';

/* **********************************************************/

SET @SEQ = @SEQ + 1;
SET @ORN = @ORN + 1;
SET @ORNCD = LPAD(CONVERT(@ORN, CHAR), 4, '0');

INSERT INTO ORNMAS (ORNCD, ORNSEQ)
SELECT @ORNCD, @SEQ;

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '1', @ORNCD, 'Nose', N'Nose', 'nose.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '2', @ORNCD, N'鼻子', N'鼻子', 'nose.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '3', @ORNCD, N'鼻子', N'鼻子', 'nose.jpg';

/* **********************************************************/

SET @SEQ = @SEQ + 1;
SET @ORN = @ORN + 1;
SET @ORNCD = LPAD(CONVERT(@ORN, CHAR), 4, '0');

INSERT INTO ORNMAS (ORNCD, ORNSEQ)
SELECT @ORNCD, @SEQ;

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '1', @ORNCD, 'Heart', N'Heart', 'heart.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '2', @ORNCD, N'心臟', N'心臟', 'heart.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '3', @ORNCD, N'心脏', N'心脏', 'heart.jpg';

/* **********************************************************/

SET @SEQ = @SEQ + 1;
SET @ORN = @ORN + 1;
SET @ORNCD = LPAD(CONVERT(@ORN, CHAR), 4, '0');

INSERT INTO ORNMAS (ORNCD, ORNSEQ)
SELECT @ORNCD, @SEQ;

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '1', @ORNCD, 'Lung', N'Lung', 'lung.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '2', @ORNCD, N'肺', N'肺', 'lung.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '3', @ORNCD, N'肺', N'肺', 'lung.jpg';
   
/* **********************************************************/

SET @SEQ = @SEQ + 1;
SET @ORN = @ORN + 1;
SET @ORNCD = LPAD(CONVERT(@ORN, CHAR), 4, '0');

INSERT INTO ORNMAS (ORNCD, ORNSEQ)
SELECT @ORNCD, @SEQ;

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '1', @ORNCD, 'Kidney', N'Kidney', 'kidney.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '2', @ORNCD, N'腎臟', N'腎臟', 'kidney.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '3', @ORNCD, N'肾脏', N'肾脏', 'kidney.jpg';

/* **********************************************************/

SET @SEQ = @SEQ + 1;
SET @ORN = @ORN + 1;
SET @ORNCD = LPAD(CONVERT(@ORN, CHAR), 4, '0');

INSERT INTO ORNMAS (ORNCD, ORNSEQ)
SELECT @ORNCD, @SEQ;

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '1', @ORNCD, 'Stomach', N'Stomach', 'stomach.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '2', @ORNCD, N'胃', N'胃', 'stomach.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '3', @ORNCD, N'胃', N'胃', 'stomach.jpg';
  
/* **********************************************************/

SET @SEQ = @SEQ + 1;
SET @ORN = @ORN + 1;
SET @ORNCD = LPAD(CONVERT(@ORN, CHAR), 4, '0');

INSERT INTO ORNMAS (ORNCD, ORNSEQ)
SELECT @ORNCD, @SEQ;

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '1', @ORNCD, 'Small intestine', N'Small intestine', 'S-Intestine.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '2', @ORNCD, N'小腸', N'小腸', 'S-Intestine.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '3', @ORNCD, N'小肠', N'小肠', 'S_Intestine.jpg';	

/* **********************************************************/

SET @SEQ = @SEQ + 1;
SET @ORN = @ORN + 1;
SET @ORNCD = LPAD(CONVERT(@ORN, CHAR), 4, '0');

INSERT INTO ORNMAS (ORNCD, ORNSEQ)
SELECT @ORNCD, @SEQ;

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '1', @ORNCD, 'Large intestine', N'Large intestine', 'L-Intestine.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '2', @ORNCD, N'大腸', N'大腸', 'L-Intestine.jpg';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '3', @ORNCD, N'大肠', N'大肠', 'L-Intestine.jpg';	

/* **********************************************************/

SET @SEQ = @SEQ + 1;
SET @ORN = @ORN + 1;
SET @ORNCD = LPAD(CONVERT(@ORN, CHAR), 4, '0');

INSERT INTO ORNMAS (ORNCD, ORNSEQ)
SELECT @ORNCD, @SEQ;

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '1', @ORNCD, 'Bladder', N'Bladder', '';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '2', @ORNCD, N'膀胱', N'膀胱', '';

INSERT INTO ORNLANG (ORNLANG, ORNCD, ORNNAM, ORNSPEC, ORNIMG)
SELECT '3', @ORNCD, N'膀胱', N'膀胱', '';	










