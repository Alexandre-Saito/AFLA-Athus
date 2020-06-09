DECLARE	@minRow	INT,
		@maxRow	INT

DECLARE @temp TABLE (
	ID INT IDENTITY,
	ERRIDS VARCHAR(100),
	DOCNUM INT,
	CIANUM INT
	)

INSERT INTO @temp
SELECT
	arr.t_motv_c,
	arr.t_ninv_c,
	arr.t_ncmp_c
FROM
	baandb..ttfaar003100 arr (NOLOCK)
WHERE
	arr.t_motv_c<>RTRIM(LTRIM(''))

SELECT @minRow=MIN(ID), @maxRow=MAX(ID) FROM @temp

WHILE @minRow <= @maxRow
BEGIN
	DECLARE	@SQLQUERY	VARCHAR(MAX),
			@DELIMITOR	CHAR(01),
			@DOCNUM		INT,
			@CIANUM		INT

	SELECT
		@DOCNUM=DOCNUM,
		@CIANUM=CIANUM
	FROM
		@temp
	WHERE
		ID=@minRow

	SET @SQLQUERY=(
					SELECT
						ERRIDS
					FROM
						@temp
					WHERE
						ID=@minRow
				  )

	SET @DELIMITOR='|'

	DECLARE @RESULT TABLE (
			ERRID	VARCHAR(MAX),
			DOCNUM	INT,
			CIANUM	INT )

	BEGIN
		DECLARE @DELIMITORPOSITION INT=CHARINDEX(@DELIMITOR, @SQLQUERY),
				@VALUE			VARCHAR(MAX),
				@STARTPOSITION	INT=1

		IF @DELIMITORPOSITION=0
		BEGIN
			INSERT INTO @RESULT (ERRID)	VALUES (@SQLQUERY)

			RETURN
		END

		SET @SQLQUERY=@SQLQUERY + @DELIMITOR

		WHILE @DELIMITORPOSITION > 0
		BEGIN
			SET @VALUE=SUBSTRING(@SQLQUERY, @STARTPOSITION, @DELIMITORPOSITION - @STARTPOSITION)

			IF (@VALUE <> '')
				INSERT INTO @RESULT (ERRID, DOCNUM, CIANUM) VALUES (@VALUE, @DOCNUM, @CIANUM)

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
	err.t_desc_c
FROM
	@RESULT res
	INNER JOIN	baandb..ttfaap011100 err (NOLOCK)
			ON	res.ERRID=t_cerr_c
