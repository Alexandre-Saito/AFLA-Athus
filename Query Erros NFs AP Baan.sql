DECLARE	@minRow INT,
		@maxRow INT

DECLARE @temp TABLE (
	ID			INT IDENTITY,
	ERRIDS		VARCHAR(100),
	DOCNUM		INT,
	CIANUM		INT,
	DTA_PROC	DATE,
	COD_SUNO	VARCHAR(10)
	)

INSERT INTO @temp
SELECT
	aap.t_motv_c,
	aap.t_ninv_c,
	aap.t_ncmp_c,
	CONVERT(DATE, aap.t_dtpr_c) AS "t_dtpr_c",
	aap.t_suno_c
FROM
	baandb..ttfaap003100 aap (NOLOCK)
WHERE
	aap.t_motv_c<>RTRIM(LTRIM(''))

SELECT @minRow=MIN(ID), @maxRow=MAX(ID) FROM @temp

WHILE @minRow <= @maxRow
BEGIN
	DECLARE	@SQLQUERY	VARCHAR(MAX),
			@DELIMITOR	CHAR(01),
			@DOCNUM		INT,
			@CIANUM		INT,
			@DTA_PROC	DATE,
			@COD_SUNO	VARCHAR(10)

	SELECT
		@DOCNUM=DOCNUM,
		@CIANUM=CIANUM,
		@DTA_PROC=DTA_PROC,
		@COD_SUNO=COD_SUNO
	FROM
		@temp
	WHERE
		ID=@minRow

	SET @SQLQUERY=(
					SELECT ERRIDS
					FROM @temp
					WHERE ID = @minRow
				  )
	SET @DELIMITOR='|'

	DECLARE @RESULT TABLE (
		ERRID		VARCHAR(MAX),
		DOCNUM		INT,
		CIANUM		INT,
		DTA_PROC	DATE,
		COD_SUNO	VARCHAR(10))

	BEGIN
		DECLARE @DELIMITORPOSITION INT=CHARINDEX(@DELIMITOR, @SQLQUERY),
				@VALUE VARCHAR(MAX),
				@STARTPOSITION INT=1

		IF @DELIMITORPOSITION=0
		BEGIN
			INSERT INTO @RESULT (ERRID)	VALUES (@SQLQUERY)

			RETURN
		END

		SET @SQLQUERY = @SQLQUERY + @DELIMITOR

		WHILE @DELIMITORPOSITION > 0
		BEGIN
			SET @VALUE=SUBSTRING(@SQLQUERY, @STARTPOSITION, @DELIMITORPOSITION - @STARTPOSITION)

			IF (@VALUE <> '')
				INSERT INTO @RESULT (ERRID, DOCNUM, CIANUM, DTA_PROC, COD_SUNO) VALUES (@VALUE, @DOCNUM, @CIANUM, @DTA_PROC, @COD_SUNO)

			SET @STARTPOSITION=@DELIMITORPOSITION + 1
			SET @DELIMITORPOSITION=CHARINDEX(@DELIMITOR, @SQLQUERY, @STARTPOSITION)
		END
	END

	SET @minRow = @minRow + 1
END

SELECT
	res.CIANUM,
	res.ERRID,
	res.DOCNUM,
	res.DTA_PROC,
	err.t_desc_c,
	res.COD_SUNO
FROM
	@RESULT res
	INNER JOIN	baandb..ttfaap011100 err (NOLOCK)
			ON	res.ERRID=t_cerr_c