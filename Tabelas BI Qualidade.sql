SELECT * FROM CTRL_MAPA_ATHUS ORDER BY 2

USE DW_DIXIE;
GO;

DROP TABLE dbo.CTRL_MAPA_ATHUS;
CREATE TABLE dbo.CTRL_MAPA_ATHUS (
	cdMapa				INT,
	dsMapaCarga			SQL_VARIANT NULL,
	dsTabelaPrincipal	VARCHAR(100) NULL,
	dsEtapaCarga		VARCHAR(50) NULL,
	dtParIniCarga		DATE NULL,
	dtParFimCarga		DATE NULL,
	dsFiltroCarga_1		VARCHAR(100) NULL,
	dsFiltroCarga_2		VARCHAR(100) NULL,
	dsFiltroCarga_3		VARCHAR(100) NULL,
	CONSTRAINT PK_CTRL_MAPA_ATHUS PRIMARY KEY (cdMapa)
	);

	CREATE UNIQUE INDEX UNK_CTRL_MAPA_ATHUS ON CTRL_MAPA_ATHUS (dsMapaCarga);

	TRUNCATE TABLE CTRL_MAPA_ATHUS

	INSERT INTO CTRL_MAPA_ATHUS VALUES (1, 'MP_TMP_BAAN_FAAP003', 'Temp AP', 'TMP', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (2, 'MP_TMP_BAAN_FAAR003', 'Temp AR', 'TMP', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (3, 'MP_STG_SAP_P2P_MATERIAL', 'Interface TXT', 'TXT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (4, 'MP_DIM_SAP_MATERIAL', 'STG_P2P_CAD_MATERIAL', 'DIM', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (5, 'MP_STG_SAP_P2P_MOV_ESTOQUE_MENSAL', 'STAGING', 'STG', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (6, 'MP_HST_SAP_P2P_MOV_ESTOQUE_MENSAL', 'HISTORICO', 'HST', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (7, 'MP_CSV_SAP_P2P_ALMOXARIFADO','Interface TXT', 'TXT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (8, 'MP_STG_SAP_P2P_ALMOXARIFADO', 'STAGING', 'STG', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (9, 'MP_DIM_SAP_ALMOXARIFADO', 'STG_P2P_CAD_ALMOXARIFADO', 'DIM', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (10,'MP_DIM_P2P_CAD_LOTE', 'STG_P2P_MOV_ESTOQUE_MENSAL', 'DIM', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (11,'MP_FAT_SAP_P2P_MOV_ESTOQUE_MENSAL', 'STG_OTC_MOV_FATURAS', 'FAT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (12,'MP_SLI_SAP_P2P_ESTOQUE_MENSAL', 'FAT_P2P_MOV_ESTOQUE_MENSAL', 'SLI', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (13,'MP_TXT_SAP_CAD_FORNECEDOR', 'Interface TXT', 'TXT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (14,'MP_STG_SAP_CAD_FORNECEDOR', 'STAGING', 'STG', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (15,'MP_DIM_SAP_FORNECEDOR', 'STG_P2P_CAD_FORNECEDOR', 'DIM', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (16,'MP_TXT_SAP_CAD_GRP_FORNECEDOR', 'Interface TXT', 'TXT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (17,'MP_STG_SAP_CAD_GRP_FORNECEDOR', 'STAGING', 'STG', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (18,'MP_DIM_SAP_GRP_FORNECEDOR', 'STG_P2P_GRUPO_FORNECEDOR', 'DIM', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (19,'MP_TXT_SAP_P2P_MOV_NF_ENTRADA', 'Interface TXT', 'TXT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (20,'MP_TXT_SAP_P2P_MOV_ORDEM_COMPRA', 'Interface TXT', 'TXT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (21,'MP_TXT_SAP_P2P_MOV_SOLIC_COMPRA', 'Interface TXT', 'TXT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (22,'MP_TXT_SAP_P2P_CAD_NF_ENTRADA', 'Interface TXT', 'TXT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (23,'MP_TXT_SAP_P2P_CAD_ORDEM_COMPRA', 'Interface TXT', 'TXT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (24,'MP_TXT_SAP_P2P_CAD_SOLIC_COMPRA', 'Interface TXT', 'TXT', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (25,'MP_STG_SAP_P2P_MOV_NF_ENTRADA', 'STAGING', 'STG', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (26,'MP_STG_SAP_P2P_MOV_ORDEM_COMPRA', 'STAGING', 'STG', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (27,'MP_STG_SAP_P2P_MOV_SOLIC_COMPRA', 'STAGING', 'STG', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (28,'MP_HST_SAP_P2P_MOV_NF_ENTRADA', 'HISTORICO', 'HST', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (29,'MP_HST_SAP_P2P_MOV_ORDEM_COMPRA', 'HISTORICO', 'HST', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (30,'MP_HST_SAP_P2P_MOV_SOLIC_COMPRA', 'HISTORICO', 'HST', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (31,'MP_STG_SAP_P2P_CAD_NF_ENTRADA', 'STAGING', 'STG', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (32,'MP_STG_SAP_P2P_CAD_ORDEM_COMPRA', 'STAGING', 'STG', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (33,'MP_STG_SAP_P2P_CAD_SOLIC_COMPRA', 'STAGING', 'STG', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (34,'MP_DIM_SAP_P2P_CAD_NF_ENTRADA', 'DIMENSAO', 'DIM', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (35,'MP_DIM_SAP_P2P_CAD_ORDEM_COMPRA', 'DIMENSAO', 'DIM', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (36,'MP_DIM_SAP_P2P_CAD_SOLIC_COMPRA', 'DIMENSAO', 'DIM', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (37,'MP_FAT_SAP_P2P_MOV_NF_ENTRADA', 'FATO', 'FAT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (38,'MP_FAT_SAP_P2P_MOV_ORDEM_COMPRA', 'FATO', 'FAT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (39,'MP_FAT_SAP_P2P_MOV_SOLIC_COMPRA', 'FATO', 'FAT', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (40,'MP_SLI_SAP_P2P_NF_ENTRADA', 'FAT_P2P_MOV_NF_ENTRADA', 'SLI', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (41,'MP_SLI_SAP_P2P_ORDEM_COMPRA', 'FAT_P2P_MOV_ORDEM_COMPRA', 'SLI', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (42,'MP_SLI_SAP_P2P_SOLIC_COMPRA', 'FAT_P2P_MOV_SOLIC_COMPRA', 'SLI', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (43,'MP_TMP_SAP_P2P_CAD_LOTE_LEGADO', 'Interface Baan', 'SQL', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (44,'MP_STG_SAP_P2P_CAD_LOTE_LEGADO', 'STAGING', 'STG', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (45,'MP_TXT_SAP_P2P_AVF_FORNECIMENTO', 'Interface TXT', 'TXT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (46,'MP_TXT_SAP_P2P_AVF_MATERIAL', 'Interface TXT', 'TXT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (47,'MP_TXT_SAP_P2P_AVF_NOTA_GLOBAL', 'Interface TXT', 'TXT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (48,'MP_TXT_SAP_P2P_AVF_RECEBIMENTO', 'Interface TXT', 'TXT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (49,'MP_TXT_SAP_P2P_AVF_SERVICO', 'Interface TXT', 'TXT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (50,'MP_TXT_SAP_P2P_AVF_CONSUMO', 'Interface TXT', 'TXT', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (51,'MP_TXT_SAP_P2P_CAD_SERVICO', 'Interface TXT', 'TXT', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (52,'MP_STG_SAP_P2P_CAD_SERVICO', 'STAGING', 'STG', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (53,'MP_DIM_SAP_P2P_CAD_SERVICO', 'DIMENSAO', 'DIM', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (54,'MP_TXT_SAP_P2P_MOV_ESTOQUE_DIARIO', 'Interface TXT', 'TXT', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (55,'MP_CAD_SAP_P2P_MATERIAL_X_PARCEIRO', 'CADASTRO', 'CAD', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (56,'MP_TMP_SAP_P2P_AVF_RNC_CAPA', 'Source SESUITE', 'TMP', '2019-03-01', '2019-12-31', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (57,'MP_TMP_SAP_P2P_AVF_RNC_ITEM', 'Source SESUITE', 'TMP', '2019-03-01', '2019-12-31', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (58,'MP_TMP_SAP_P2P_AVF_RNC_ITEM_PVT', 'Source SESUITE', 'TMP', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (59,'MP_TXT_SAP_P2P_AVF_RNC', 'Interface TXT', 'CSV', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (60,'MP_TMP_SAP_P2P_AVF_SERVICO', 'TEMP', 'TMP', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (61,'MP_REL_SAP_P2P_AVF_SERVICO', 'RELATORIO', 'REL', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (62,'MP_HST_SAP_P2P_AVF_SERVICO', 'HISTORICO', 'HST', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (63,'MP_UPVT_SAP_P2P_AVF_SERVICO', 'HISTORICO', 'HST', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (64,'MP_STG_SAP_P2P_AVF_RECEBIMENTO', 'STAGING', 'STG', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (65,'MP_HST_SAP_P2P_AVF_RECEBIMENTO', 'HISTORICO', 'HST', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (66,'MP_STG_SAP_P2P_AVF_CONSUMO', 'STAGING', 'STG', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (67,'MP_HST_SAP_P2P_AVF_CONSUMO', 'HISTORICO', 'HST', '', '', '', '', '');

	INSERT INTO CTRL_MAPA_ATHUS VALUES (68,'MP_STG_SAP_P2P_AVF_RNC', 'STAGING', 'STG', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (69,'MP_HST_SAP_P2P_AVF_RNC', 'HISTORICO', 'HST', '', '', '', '', '');
	INSERT INTO CTRL_MAPA_ATHUS VALUES (70,'MP_REL_SAP_P2P_AVF_ITEM', 'RELATORIO', 'REL', '', '', '', '', '');


	DELETE FROM CTRL_MAPA_ATHUS WHERE cdMapa IN (64)

----------------------------------------------------------------------
DROP TABLE CTRL_Regras_Eventos_Carga_ATHUS;
CREATE TABLE dbo.CTRL_Regras_Eventos_Carga_ATHUS (
	cdRegraDados		INT NOT NULL,
	dsRegraDados		VARCHAR(100) NULL,
	idCargaDados		CHAR(01) NULL,
	dsTabelaPrincipal	VARCHAR(100) NULL,
	dsSQLRegra			VARCHAR(256) NULL,
	cdMapa				INT NULL,
	CONSTRAINT PK_Regras_Eventos_Carga_ATHUS PRIMARY KEY NONCLUSTERED (cdRegraDados ASC)
				WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE=OFF, IGNORE_DUP_KEY=OFF, ALLOW_ROW_LOCKS=ON, ALLOW_PAGE_LOCKS=ON)
	);

	TRUNCATE TABLE CTRL_Regras_Eventos_Carga_ATHUS

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (1, 'Erro Carga tabela temporaria TMP Contas Pagar', 'S', 'TMP_BAAN_FAAP003', 'Erro CARGA', 1)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (2, 'Erro Carga tabela temporaria TMP Contas Receber', 'S', 'TMP_BAAN_FAAR003', 'Erro CARGA', 2)


	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (3, 'Erro Carga tabela temporaria STG Cad Material', 'S', 'STG_P2P_CAD_MATERIAL', 'Erro CARGA', 3)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (4, 'Erro Carga tabela Staging Mov Estoque Mensal', 'S', 'STG_P2P_MOV_ESTOQUE_MENSAL', 'Erro CARGA', 5)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (5, 'Erro Carga tabela Historico Mov Estoque Mensal', 'S', 'HST_P2P_MOV_ESTOQUE_MENSAL', 'Erro CARGA', 6)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (6, 'Erro Carga tabela temporaria CSV Cad Almoxarifado', 'S', 'TXT_P2P_CAD_ALMOXARIFADO', 'Erro CARGA', 7)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (7, 'Erro Carga tabela temporaria STG Cad Almoxarifado', 'S', 'STG_P2P_CAD_ALMOXARIFADO', 'Erro CARGA', 8)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (8, 'Erro Carga tabela FATO Mov Estoque Mensal', 'S', 'FAT_P2P_MOV_ESTOQUE_MENSAL', 'Erro LKP Material', 11)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (9, 'Erro Carga tabela FATO Mov Estoque Mensal', 'S', 'FAT_P2P_MOV_ESTOQUE_MENSAL', 'Erro LKP Parceiro', 11)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (10,'Erro Carga tabela FATO Mov Estoque Mensal', 'S', 'FAT_P2P_MOV_ESTOQUE_MENSAL', 'Erro LKP Lote', 11)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (11,'Erro Carga tabela FATO Mov Estoque Mensal', 'S', 'FAT_P2P_MOV_ESTOQUE_MENSAL', 'Erro LKP Almoxarifado', 11)

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (12,'Erro Carga tabela temporaria TXT Cad Fornecedor', 'S', 'TXT_P2P_CAD_FORNECEDOR', 'Erro CARGA', 13)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (13,'Erro Carga tabela temporaria STG Cad Fornecedor', 'S', 'STG_P2P_CAD_FORNECEDOR', 'Erro CARGA', 14)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (14,'Erro Carga tabela temporaria TXT Cad Grp Fornecedor', 'S', 'TXT_P2P_GRUPO_FORNECEDOR', 'Erro CARGA', 16)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (15,'Erro Carga tabela temporaria STG Cad Grp Fornecedor', 'S', 'STG_P2P_GRUPO_FORNECEDOR', 'Erro CARGA', 17)

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (16,'Erro Carga tabela temporaria TXT Mov NF Entrada', 'S', 'TXT_P2P_MOV_NF_ENTRADA', 'Erro CARGA',19)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (17,'Erro Carga tabela temporaria TXT Mov Ordem Compra', 'S', 'TXT_P2P_MOV_ORDEM_COMPRA', 'Erro CARGA',20)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (18,'Erro Carga tabela temporaria TXT Mov Solicitacao Compra', 'S', 'TXT_P2P_MOV_SOLIC_COMPRA', 'Erro CARGA',21)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (19,'Erro Carga tabela temporaria TXT Cad NF Entrada', 'S', 'TXT_P2P_CAD_NF_ENTRADA', 'Erro CARGA',22)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (20,'Erro Carga tabela temporaria TXT Cad Ordem Compra', 'S', 'TXT_P2P_CAD_ORDEM_COMPRA', 'Erro CARGA',23)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (21,'Erro Carga tabela temporaria TXT Cad Solicitacao Compra', 'S', 'TXT_P2P_CAD_SOLIC_COMPRA', 'Erro CARGA',24)

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (22,'Erro Carga tabela Staging STG Mov NF Entrada', 'S', 'STG_P2P_MOV_NF_ENTRADA', 'Erro CARGA', 25)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (23,'Erro Carga tabela Staging STG Mov Ordem Compra', 'S', 'STG_P2P_MOV_ORDEM_COMPRA', 'Erro CARGA',26)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (24,'Erro Carga tabela Staging STG Mov Solicita��o Compra', 'S', 'STG_P2P_MOV_SOLIC_COMPRA', 'Erro CARGA',27)

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (25,'Erro Carga tabela Historica HST Mov NF Entrada', 'S', 'HST_P2P_MOV_NF_ENTRADA', 'Erro CARGA', 28)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (26,'Erro Carga tabela Historica HST Mov Ordem Compra', 'S', 'HST_P2P_MOV_ORDEM_COMPRA', 'Erro CARGA',29)
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (27,'Erro Carga tabela Historica HST Mov Solicita��o Compra', 'S', 'HST_P2P_MOV_SOLIC_COMPRA', 'Erro CARGA',30)

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (28,'Erro Carga tabela Staging STG Cad NF Entrada', 'S', 'STG_P2P_CAD_NF_ENTRADA', 'Erro CARGA',31);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (29,'Erro Carga tabela Staging STG Cad Ordem Compra', 'S', 'STG_P2P_CAD_ORDEM_COMPRA', 'Erro CARGA',32);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (30,'Erro Carga tabela Staging STG Cad Solicitacao Compra', 'S', 'STG_P2P_CAD_SOLIC_COMPRA', 'Erro CARGA',33);

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (31,'Erro Carga tabela FATO Mov NF Entrada', 'S', 'FAT_P2P_MOV_NF_ENTRADA', 'Erro LKP Material',37);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (32,'Erro Carga tabela FATO Mov NF Entrada', 'S', 'FAT_P2P_MOV_NF_ENTRADA', 'Erro LKP NF Entrada',37);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (33,'Erro Carga tabela FATO Mov NF Entrada', 'S', 'FAT_P2P_MOV_NF_ENTRADA', 'Erro LKP Ordem Compra',37);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (34,'Erro Carga tabela FATO Mov NF Entrada', 'S', 'FAT_P2P_MOV_NF_ENTRADA', 'Erro LKP Fornecedor',37);

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (35,'Erro Carga tabela FATO Mov Ordem Compra', 'S', 'FAT_P2P_MOV_ORDEM_COMPRA', 'Erro LKP Material',38);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (36,'Erro Carga tabela FATO Mov Ordem Compra', 'S', 'FAT_P2P_MOV_ORDEM_COMPRA', 'Erro LKP NF Entrada',38);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (37,'Erro Carga tabela FATO Mov Ordem Compra', 'S', 'FAT_P2P_MOV_ORDEM_COMPRA', 'Erro LKP Ordem Compra',38);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (38,'Erro Carga tabela FATO Mov Ordem Compra', 'S', 'FAT_P2P_MOV_ORDEM_COMPRA', 'Erro LKP Fornecedor',38);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (39,'Erro Carga tabela FATO Mov Ordem Compra', 'S', 'FAT_P2P_MOV_ORDEM_COMPRA', 'Erro LKP Solic Compra',38);

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (40,'Erro Carga tabela FATO Mov Solic Compra', 'S', 'FAT_P2P_MOV_SOLIC_COMPRA', 'Erro LKP Material',39);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (41,'Erro Carga tabela FATO Mov Solic Compra', 'S', 'FAT_P2P_MOV_SOLIC_COMPRA', 'Erro LKP NF Entrada',39);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (42,'Erro Carga tabela FATO Mov Solic Compra', 'S', 'FAT_P2P_MOV_SOLIC_COMPRA', 'Erro LKP Ordem Compra',39);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (43,'Erro Carga tabela FATO Mov Solic Compra', 'S', 'FAT_P2P_MOV_SOLIC_COMPRA', 'Erro LKP Fornecedor',39);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (44,'Erro Carga tabela FATO Mov Solic Compra', 'S', 'FAT_P2P_MOV_SOLIC_COMPRA', 'Erro LKP Solic Compra',39);

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (45,'Erro Carga tabela temporaria TMP Cad Lote Legado', 'S', 'TMP_P2P_CAD_LOTE_LEGADO', 'Erro CARGA',43);

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (46,'Erro Carga tabela temporaria TXT P2P AVF Fornecimento', 'S', 'TXT_P2P_AVF_FORNECIMENTO', 'Erro CARGA',45);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (47,'Erro Carga tabela temporaria TXT P2P AVF Material', 'S', 'TXT_P2P_AVF_MATERIAL', 'Erro CARGA',46);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (48,'Erro Carga tabela temporaria TXT P2P AVF Nota Global', 'S', 'TXT_P2P_AVF_NOTA_GLOBAL', 'Erro CARGA',47);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (49,'Erro Carga tabela temporaria TXT P2P AVF Recebimento', 'S', 'TXT_P2P_AVF_RECEBIMENTO', 'Erro CARGA',48);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (50,'Erro Carga tabela temporaria TXT P2P AVF Servi�o', 'S', 'TXT_P2P_AVF_SERVICO', 'Erro CARGA',49);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (51,'Erro Carga tabela temporaria TXT P2P AVF Consumo', 'S', 'TXT_P2P_AVF_CONSUMO', 'Erro CARGA',50);

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (52,'Erro Carga tabela temporaria TXT P2P CAD Servico', 'S', 'TXT_P2P_CAD_SERVICO', 'Erro CARGA',51);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (53,'Erro Carga tabela staging STG P2P CAD Servico', 'S', 'STG_P2P_CAD_SERVICO', 'Erro CARGA',52);

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (54,'Erro Carga tabela temporaria TXT Mov Estoque Diario', 'S', 'TXT_P2P_MOV_ESTOQUE_DIARIO', 'Erro CARGA', 54)

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (55,'Erro Carga tabela temporaria TMP AVF Source RNC', 'S', 'TMP_P2P_AVF_RNC_CAPA', 'Erro CARGA', 56);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (56,'Erro Carga tabela temporaria TMP AVF Source RNC', 'S', 'TMP_P2P_AVF_RNC_ITEM', 'Erro CARGA', 57);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (57,'Erro Carga tabela temporaria TMP AVF Source RNC', 'S', 'TMP_P2P_AVF_RNC_ITEM_PVT', 'Erro CARGA', 58);

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (58,'Erro Carga tabela temporaria TXT P2P AVF RNC', 'S', 'TXT_P2P_AVF_RNC', 'Erro CARGA', 59);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (59,'Erro Carga tabela temporaria TMP P2P AVF Servi�o', 'S', 'TMP_P2P_AVF_SERVICO', 'Erro CARGA',60);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (60,'Erro Carga tabela relatorio REL P2P AVF Servi�o', 'S', 'REL_P2P_AVF_SERVICO', 'Erro CARGA',61);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (61,'Erro Carga tabela relatorio HST P2P AVF Servi�o', 'S', 'HST_P2P_AVF_SERVICO', 'Erro CARGA',62);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (62,'Erro Carga tabela UNPIVOT HST P2P AVF Servi�o', 'S', 'HST_P2P_AVF_SERVICO_UPVT', 'Erro CARGA',63);

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (63,'Erro Carga tabela Staging STG P2P AVF Recebimento', 'S', 'STG_P2P_AVF_RECEBIMENTO', 'Erro CARGA',64);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (64,'Erro Carga tabela Staging HST P2P AVF Recebimento', 'S', 'HST_P2P_AVF_RECEBIMENTO', 'Erro CARGA',65);

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (65,'Erro Carga tabela Staging STG P2P AVF Consumo', 'S', 'STG_P2P_AVF_CONSUMO', 'Erro CARGA',66);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (66,'Erro Carga tabela Historico HST P2P AVF Consumo', 'S', 'HST_P2P_AVF_CONSUMO', 'Erro CARGA',67);

	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (67,'Erro Carga tabela Staging STG P2P AVF RNC', 'S', 'STG_P2P_AVF_RNC', 'Erro CARGA', 68);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (68,'Erro Carga tabela Historico HST P2P AVF RNC', 'S', 'HST_P2P_AVF_RNC', 'Erro CARGA', 69);
	INSERT INTO CTRL_Regras_Eventos_Carga_ATHUS VALUES (69,'Erro Carga tabela Relatorio REL P2P AVF Item', 'S', 'REL_P2P_AVF_ITEM', 'Erro CARGA',70);


DELETE FROM CTRL_Regras_Eventos_Carga_ATHUS WHERE cdRegraDados=45
SELECT * FROM CTRL_Regras_Eventos_Carga_ATHUS

-----------------------------------------------------------------------
DROP TABLE CTRL_Erros_Eventos_Carga_ATHUS;
CREATE TABLE dbo.CTRL_Erros_Eventos_Carga_ATHUS (
	skAudit				INT NULL,
	cdRegraDados		INT NULL,
	cdMapa				INT NULL,
	dthrErroCarga		DATETIME NULL,
	dsRegistroOrigem	VARCHAR(100) NULL,
	dsErroCarga			VARCHAR(4000) NULL,
	qtErros				INT NULL
	);

ALTER TABLE dbo.CTRL_Erros_Eventos_Carga_ATHUS
			WITH CHECK ADD CONSTRAINT FK_Erros_Eventos_Carga_ATHUS
			FOREIGN KEY(cdRegraDados)
			REFERENCES dbo.CTRL_Regras_Eventos_Carga_ATHUS (cdRegraDados)
GO

ALTER TABLE dbo.CTRL_Erros_Eventos_Carga_ATHUS
			CHECK CONSTRAINT FK_Erros_Eventos_Carga_ATHUS
GO

TRUNCATE TABLE CTRL_Erros_Eventos_Carga_ATHUS

SELECT * FROM CTRL_Erros_Eventos_Carga_ATHUS WHERE cdMapa=11 AND cdRegraDados=11

-----------------------------------------------------------------------
DROP TABLE DIM_AUDITORIA_ATHUS;
CREATE TABLE dbo.DIM_AUDITORIA_ATHUS (
	skAudit				INT IDENTITY(1,1) NOT NULL,
	cdMapa				INT NULL,
	qtRegistrosOrigem	INT NULL,
	qtRegistrosCarga	INT NULL,
	qtRegistrosErros	INT NULL,
	dthrInicioCarga		DATETIME NULL,
	dthrFimCarga		DATETIME NULL,
	stGeralCarga		VARCHAR(20) NULL,
	CONSTRAINT PK_DIM_AUDITORIA_ATHUS PRIMARY KEY NONCLUSTERED (skAudit ASC)
		WITH (PAD_INDEX=OFF, STATISTICS_NORECOMPUTE=OFF, IGNORE_DUP_KEY=OFF, ALLOW_ROW_LOCKS=ON, ALLOW_PAGE_LOCKS=ON)
	);


SELECT * FROM DIM_AUDITORIA_ATHUS ORDER BY 1
