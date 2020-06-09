USE DW_DIXIE

sp_columns 

-- TABELA TEMPORARIA PARA DADOS DE CONTAS A PAGAR
DROP TABLE dbo.TMP_BAAN_FAAP003;
CREATE TABLE dbo.TMP_BAAN_FAAP003 (
	IDE_TEMP			INT IDENTITY,
	SKY_AUDITKEY		INT,
	DTA_CARGA			DATETIME,
	COD_CIA				INT,
	NUM_DOCTO			INT,
	COD_ERRO			VARCHAR(10),
	DES_ERRO			VARCHAR(150),
	DTA_PROC			DATE
	);

TRUNCATE TABLE dbo.TMP_BAAN_FAAP003
SELECT * FROM dbo.TMP_BAAN_FAAP003


-- TABELA TEMPORARIA PARA DADOS DE CONTAS A RECEBER
DROP TABLE dbo.TMP_BAAN_FAAR003;
CREATE TABLE dbo.TMP_BAAN_FAAR003 (
	IDE_TEMP			INT IDENTITY,
	SKY_AUDITKEY		INT,
	DTA_CARGA			DATETIME,
	COD_CIA				INT,
	NUM_DOCTO			INT,
	COD_ERRO			VARCHAR(10),
	DES_ERRO			VARCHAR(150),
	DTA_PROC			DATE
	);

SELECT * FROM dbo.TMP_BAAN_FAAR003

-- TABELA STAGING PARA DADOS DE AMBAS TMP (AP E AR)
DROP TABLE dbo.STG_BAAN_ERRO_DOCTO_ATHUS;
CREATE TABLE dbo.STG_BAAN_ERRO_DOCTO_ATHUS (
	IDE_STAGING			INT IDENTITY,
	SKY_AUDITKEY		INT,
	DTA_CARGA			DATETIME,
	COD_CONTA			VARCHAR(02),
	DES_CONTA			VARCHAR(30),
	COD_CIA				INT,
	NUM_DOCTO			INT,
	COD_ERRO			VARCHAR(10),
	DES_ERRO			VARCHAR(150),
	DTA_PROC			DATE,
	COD_QUALITY			CHAR(01) DEFAULT 'S',
	CONSTRAINT PK_STG_BAAN_ERRO_DOCTO_ATHUS PRIMARY KEY (IDE_STAGING)
	);

TRUNCATE TABLE dbo.STG_BAAN_ERRO_DOCTO_ATHUS;

