USE [SISBEN_IV]
GO
/****** Object:  Schema [DAT]    Script Date: 3/8/2018 5:42:47 PM ******/
CREATE SCHEMA [DAT]
GO
/****** Object:  Schema [ML]    Script Date: 3/8/2018 5:42:47 PM ******/
CREATE SCHEMA [ML]
GO
/****** Object:  Table [DAT].[CNS_CONTROL_ENVIOS]    Script Date: 3/8/2018 5:42:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DAT].[CNS_CONTROL_ENVIOS](
	[cod_dpto] [varchar](2) NOT NULL,
	[cod_mpio] [varchar](5) NOT NULL,
	[ide_envio] [varchar](17) NOT NULL,
	[num_fichas] [smallint] NOT NULL,
	[num_hog_ficha] [smallint] NOT NULL,
	[num_viviendas] [smallint] NOT NULL,
	[num_hogares] [smallint] NOT NULL,
	[num_hog_rechazo] [smallint] NOT NULL,
	[num_personas] [smallint] NOT NULL,
	[fec_paquete] [datetime] NOT NULL,
	[num_paquete] [int] NOT NULL,
	[est_control_bd] [tinyint] NOT NULL,
	[fec_modificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_CNS_CONTROL_ENVIOS] PRIMARY KEY NONCLUSTERED 
(
	[cod_mpio] ASC,
	[num_paquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DAT].[CNS_FICHAS]    Script Date: 3/8/2018 5:42:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DAT].[CNS_FICHAS](
	[Num_paquete] [int] NOT NULL,
	[Est_ficha_bd] [tinyint] NOT NULL,
	[Fec_paquete] [datetime] NOT NULL,
	[Cod_dpto] [varchar](2) NOT NULL,
	[Cod_mpio] [varchar](5) NOT NULL,
	[Num_ficha] [int] NOT NULL,
	[Ide_ficha_origen] [varchar](20) NOT NULL,
	[Ide_edificacion] [smallint] NOT NULL,
	[Ver_estructura] [varchar](12) NOT NULL,
	[Ori_encuesta] [tinyint] NOT NULL,
	[Cod_clase] [char](1) NOT NULL,
	[Cod_centro_poblado] [varchar](3) NOT NULL,
	[Cod_area_coordinacion] [varchar](3) NOT NULL,
	[Cod_area_operativa] [varchar](6) NOT NULL,
	[Cod_uni_cobertura] [varchar](6) NOT NULL,
	[Cod_comuna] [varchar](2) NOT NULL,
	[Cod_corregimiento] [varchar](2) NOT NULL,
	[Cod_vereda] [varchar](3) NOT NULL,
	[Cod_barrio] [varchar](6) NOT NULL,
	[Cod_enumerador] [varchar](4) NOT NULL,
	[Tot_viviendas] [tinyint] NOT NULL,
	[Tot_hogares] [tinyint] NOT NULL,
	[Ord_vivienda] [tinyint] NOT NULL,
	[Ind_direccion] [tinyint] NOT NULL,
	[Dir_vivienda] [varchar](100) NOT NULL,
	[Uso_vivienda] [tinyint] NOT NULL,
	[Ide_foto] [varchar](50) NOT NULL,
	[Fec_ini_encuesta] [datetime] NULL,
	[Fec_fin_encuesta] [datetime] NULL,
	[Coord_x_manual_rec] [decimal](11, 8) NULL,
	[Coord_y_manual_rec] [decimal](11, 8) NULL,
	[Coord_x_auto_rec] [decimal](11, 8) NULL,
	[Coord_y_auto_rec] [decimal](11, 8) NULL,
	[GPS_Alt_auto_rec] [int] NULL,
	[Fec_captura_GPS_rec] [datetime] NULL,
	[GPS_Distancia_rec] [int] NULL,
	[Coord_x_manual_enc] [decimal](11, 8) NULL,
	[Coord_y_manual_enc] [decimal](11, 8) NULL,
	[Coord_x_auto_enc] [decimal](11, 8) NULL,
	[Coord_y_auto_enc] [decimal](11, 8) NULL,
	[GPS_Alt_auto_enc] [int] NULL,
	[Fec_captura_gps_enc] [nvarchar](50) NULL,
	[GPS_Distancia_enc] [int] NULL,
	[Est_nov_cartografia] [tinyint] NOT NULL,
	[Cod_digitador] [varchar](4) NOT NULL,
	[Cod_equipo_encuesta] [varchar](3) NOT NULL,
	[Fec_digitacion] [datetime] NOT NULL,
	[Ind_formato] [tinyint] NOT NULL,
	[Num_hogares_recuento] [tinyint] NOT NULL,
	[Est_ficha] [tinyint] NOT NULL,
	[Num_visita] [tinyint] NOT NULL,
	[Cod_chip] [varchar](20) NULL,
	[Dir_chip] [varchar](100) NULL,
	[Num_solicitud] [int] NOT NULL,
	[Cod_UC_total] [varchar](34) NOT NULL,
	[ML_Procesado] [datetime2](7) NULL,
	[ML_Irregular] [bit] NULL,
 CONSTRAINT [PK_CNS_FICHAS] PRIMARY KEY NONCLUSTERED 
(
	[Cod_mpio] ASC,
	[Num_ficha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_CNS_FICHAS] UNIQUE NONCLUSTERED 
(
	[Ide_ficha_origen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DAT].[CNS_HOGARES]    Script Date: 3/8/2018 5:42:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DAT].[CNS_HOGARES](
	[Num_paquete] [int] NOT NULL,
	[Est_hogar_bd] [tinyint] NOT NULL,
	[Fec_paquete] [datetime] NOT NULL,
	[Cod_dpto] [varchar](2) NOT NULL,
	[Cod_mpio] [varchar](5) NOT NULL,
	[Num_ficha] [int] NOT NULL,
	[Ide_ficha_origen] [varchar](20) NOT NULL,
	[Ide_hogar] [tinyint] NOT NULL,
	[Tip_ocupa_vivienda] [tinyint] NOT NULL,
	[Num_cuartos_exclusivos] [tinyint] NOT NULL,
	[Num_cuartos_dormir] [tinyint] NOT NULL,
	[Num_cuartos_unicos_dormir] [tinyint] NOT NULL,
	[Tip_sanitario] [tinyint] NOT NULL,
	[Tip_ubi_sanitario] [tinyint] NOT NULL,
	[Tip_uso_sanitario] [tinyint] NOT NULL,
	[Tip_origen_agua] [tinyint] NOT NULL,
	[Ind_agua_llega_7dias] [tinyint] NOT NULL,
	[Num_dias_llega] [tinyint] NOT NULL,
	[Ind_agua_llega_24horas] [tinyint] NOT NULL,
	[Num_horas_llega] [tinyint] NOT NULL,
	[Tip_uso_agua_beber] [tinyint] NOT NULL,
	[Tip_elimina_basura] [tinyint] NOT NULL,
	[Ind_tiene_cocina] [tinyint] NOT NULL,
	[Tip_prepara_alimentos] [tinyint] NOT NULL,
	[Tip_uso_cocina] [tinyint] NOT NULL,
	[Tip_energia_cocina] [tinyint] NOT NULL,
	[Ind_tiene_nevera] [tinyint] NOT NULL,
	[Ind_tiene_lavadora] [tinyint] NOT NULL,
	[Ind_tiene_pc] [tinyint] NOT NULL,
	[Ind_tiene_internet] [tinyint] NOT NULL,
	[Ind_tiene_moto] [tinyint] NOT NULL,
	[Ind_tiene_tractor] [tinyint] NOT NULL,
	[Ind_tiene_carro] [tinyint] NOT NULL,
	[Ind_tiene_bien_raiz] [tinyint] NOT NULL,
	[Ind_gasto_alimento] [tinyint] NOT NULL,
	[Vlr_gasto_alimento] [int] NOT NULL,
	[Ind_gasto_transporte] [tinyint] NOT NULL,
	[Vlr_gasto_transporte] [int] NOT NULL,
	[Ind_gasto_educacion] [tinyint] NOT NULL,
	[Vlr_gasto_educacion] [int] NOT NULL,
	[Ind_gasto_salud] [tinyint] NOT NULL,
	[Vlr_gasto_salud] [int] NOT NULL,
	[Ind_gasto_serv_publicos] [tinyint] NOT NULL,
	[Vlr_gasto_serv_publicos] [int] NOT NULL,
	[Ind_gasto_celular] [tinyint] NOT NULL,
	[Vlr_gasto_celular] [int] NOT NULL,
	[Ind_gasto_arriendo] [tinyint] NOT NULL,
	[Vlr_gasto_arriendo] [int] NOT NULL,
	[Ind_gasto_otros] [tinyint] NOT NULL,
	[Vlr_gasto_otros] [int] NOT NULL,
	[Vlr_total_gastos] [int] NOT NULL,
	[Num_habita_vivienda] [tinyint] NOT NULL,
	[Ind_evento_inundacion] [tinyint] NOT NULL,
	[Num_evento_inundacion] [tinyint] NOT NULL,
	[Ind_evento_avalancha] [tinyint] NOT NULL,
	[Num_evento_avalancha] [tinyint] NOT NULL,
	[Ind_evento_terremoto] [tinyint] NOT NULL,
	[Num_evento_terremoto] [tinyint] NOT NULL,
	[Ind_evento_incendio] [tinyint] NOT NULL,
	[Num_evento_incendio] [tinyint] NOT NULL,
	[Ind_evento_vendaval] [tinyint] NOT NULL,
	[Num_evento_vendaval] [tinyint] NOT NULL,
	[Ind_evento_hundimiento] [tinyint] NOT NULL,
	[Num_evento_hundimiento] [tinyint] NOT NULL,
	[Num_personas_posibles] [tinyint] NOT NULL,
	[Num_personas_hogar] [tinyint] NOT NULL,
	[fec_ini_visita1] [datetime] NOT NULL,
	[fec_fin_visita1] [datetime] NOT NULL,
	[res_visita1] [tinyint] NOT NULL,
	[fec_ini_visita2] [datetime] NULL,
	[fec_fin_visita2] [datetime] NULL,
	[res_visita2] [tinyint] NULL,
	[Ide_informante] [tinyint] NOT NULL,
	[Pri_nom_informante] [varchar](25) NULL,
	[Seg_nom_informante] [varchar](25) NULL,
	[Pri_ape_informante] [varchar](25) NULL,
	[Seg_ape_informante] [varchar](25) NULL,
	[tip_informante] [tinyint] NOT NULL,
	[Ide_firma_informante] [varchar](50) NULL,
	[Cau_sin_firma] [tinyint] NOT NULL,
	[Email_contacto] [varchar](50) NULL,
	[Num_tel_contacto] [varchar](12) NULL,
	[Ind_declaracion] [tinyint] NULL,
	[ML_Procesado] [datetime2](7) NULL,
	[ML_Irregular] [bit] NULL,
 CONSTRAINT [PK_CNS_HOGARES] PRIMARY KEY NONCLUSTERED 
(
	[Cod_mpio] ASC,
	[Num_ficha] ASC,
	[Ide_hogar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_CNS_HOGARES] UNIQUE NONCLUSTERED 
(
	[Ide_ficha_origen] ASC,
	[Ide_hogar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DAT].[CNS_HOGARES_FICHA]    Script Date: 3/8/2018 5:42:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DAT].[CNS_HOGARES_FICHA](
	[Num_paquete] [int] NOT NULL,
	[Est_hog_ficha_bd] [tinyint] NOT NULL,
	[Fec_paquete] [datetime] NOT NULL,
	[Cod_dpto] [varchar](2) NOT NULL,
	[Cod_mpio] [varchar](5) NOT NULL,
	[Num_ficha] [int] NOT NULL,
	[Ide_ficha_origen] [varchar](20) NOT NULL,
	[Ori_encuesta] [tinyint] NOT NULL,
	[Est_ficha] [tinyint] NOT NULL,
	[Uso_vivienda] [tinyint] NOT NULL,
	[Ord_hogar] [tinyint] NOT NULL,
	[Num_pers_hogar] [tinyint] NOT NULL,
 CONSTRAINT [PK_CNS_HOGARES_FICHA] PRIMARY KEY NONCLUSTERED 
(
	[Cod_mpio] ASC,
	[Num_ficha] ASC,
	[Ord_hogar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_CNS_HOGARES_FICHA] UNIQUE NONCLUSTERED 
(
	[Ide_ficha_origen] ASC,
	[Ord_hogar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DAT].[CNS_HOGARES_RECHAZO]    Script Date: 3/8/2018 5:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DAT].[CNS_HOGARES_RECHAZO](
	[Num_paquete] [int] NOT NULL,
	[Est_hogar_bd] [tinyint] NOT NULL,
	[Fec_paquete] [datetime] NOT NULL,
	[Cod_dpto] [varchar](2) NOT NULL,
	[Cod_mpio] [varchar](5) NOT NULL,
	[Num_ficha] [int] NOT NULL,
	[Ide_ficha_origen] [varchar](20) NOT NULL,
	[Ide_hogar] [tinyint] NOT NULL,
	[Ind_causa_rechazo] [tinyint] NOT NULL,
	[fec_rechazo] [datetime] NOT NULL,
 CONSTRAINT [PK_CNS_HOGARES_RECHAZO] PRIMARY KEY NONCLUSTERED 
(
	[Cod_mpio] ASC,
	[Num_ficha] ASC,
	[Ide_hogar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_CNS_HOGARES_RECHAZO] UNIQUE NONCLUSTERED 
(
	[Ide_ficha_origen] ASC,
	[Ide_hogar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DAT].[CNS_PERSONAS]    Script Date: 3/8/2018 5:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DAT].[CNS_PERSONAS](
	[Num_paquete] [int] NOT NULL,
	[Est_persona_bd] [tinyint] NOT NULL,
	[Fec_paquete] [datetime] NOT NULL,
	[Cod_dpto] [varchar](2) NOT NULL,
	[Cod_mpio] [varchar](5) NOT NULL,
	[Num_ficha] [int] NOT NULL,
	[Ide_ficha_origen] [varchar](20) NOT NULL,
	[Ide_hogar] [tinyint] NOT NULL,
	[Ide_persona] [tinyint] NOT NULL,
	[Ide_nacional] [int] NOT NULL,
	[Ind_escaner] [tinyint] NOT NULL,
	[Pri_apellido] [varchar](25) NOT NULL,
	[Seg_apellido] [varchar](25) NULL,
	[Pri_nombre] [varchar](25) NOT NULL,
	[Seg_nombre] [varchar](25) NULL,
	[Sexo_persona] [tinyint] NOT NULL,
	[Ori_persona] [tinyint] NOT NULL,
	[Tip_documento] [tinyint] NOT NULL,
	[Num_documento] [varchar](20) NOT NULL,
	[Fec_nacimiento] [date] NOT NULL,
	[Edad_calculada] [tinyint] NOT NULL,
	[Fec_documento] [varchar](10) NOT NULL,
	[Cod_dpto_documento] [varchar](2) NULL,
	[Cod_mpio_documento] [varchar](5) NULL,
	[Cod_pais_documento] [varchar](3) NOT NULL,
	[Tip_parentesco] [tinyint] NOT NULL,
	[Tip_estado_civil] [tinyint] NOT NULL,
	[Ind_conyuge_vive_hogar] [tinyint] NOT NULL,
	[Ide_conyuge] [tinyint] NOT NULL,
	[Ind_padre_vive_hogar] [tinyint] NOT NULL,
	[Ide_padre] [tinyint] NOT NULL,
	[Ind_pariente_domestico] [tinyint] NOT NULL,
	[Ide_serv_domestico] [tinyint] NOT NULL,
	[Ind_discap_ver] [tinyint] NOT NULL,
	[Ind_discap_oir] [tinyint] NOT NULL,
	[Ind_discap_hablar] [tinyint] NOT NULL,
	[Ind_discap_moverse] [tinyint] NOT NULL,
	[Ind_discap_bañarse] [tinyint] NOT NULL,
	[Ind_discap_salir] [tinyint] NOT NULL,
	[Ind_discap_entender] [tinyint] NOT NULL,
	[Ind_discap_ninguna] [tinyint] NOT NULL,
	[Tip_Seg_social] [tinyint] NOT NULL,
	[Ind_enfermo_30] [tinyint] NOT NULL,
	[Ind_acudio_salud] [tinyint] NOT NULL,
	[Ind_fue_atendido_salud] [tinyint] NOT NULL,
	[Ind_esta_embarazada] [tinyint] NOT NULL,
	[Ind_tuvo_hijos] [tinyint] NOT NULL,
	[Tip_cuidado_niños] [tinyint] NOT NULL,
	[Ind_recibe_comida] [tinyint] NOT NULL,
	[Ind_leer_escribir] [tinyint] NOT NULL,
	[Ind_estudia] [tinyint] NOT NULL,
	[Niv_educativo] [tinyint] NOT NULL,
	[Grado_alcanzado] [tinyint] NOT NULL,
	[Ind_fondo_pensiones] [tinyint] NOT NULL,
	[Tip_actividad_mes] [tinyint] NOT NULL,
	[Num_sem_buscando] [int] NOT NULL,
	[Tip_empleado] [tinyint] NOT NULL,
	[Ind_ingr_salario] [tinyint] NOT NULL,
	[Vlr_ingr_salario] [int] NOT NULL,
	[Ind_ingr_honorarios] [tinyint] NOT NULL,
	[Vlr_ingr_honorarios] [int] NOT NULL,
	[Ind_ingr_cosecha] [tinyint] NOT NULL,
	[Num_mes_ingr_cosecha] [tinyint] NOT NULL,
	[Vlr_ingr_cosecha] [int] NOT NULL,
	[Ind_ingr_pension] [tinyint] NOT NULL,
	[Vlr_ingr_pension] [int] NOT NULL,
	[Ind_ingr_remesa_pais] [tinyint] NOT NULL,
	[Vlr_ingr_remesa_pais] [int] NOT NULL,
	[Ind_ingr_remesa_exterior] [tinyint] NOT NULL,
	[Vlr_ingr_remesa_exterior] [int] NOT NULL,
	[Ind_ingr_arriendos] [tinyint] NOT NULL,
	[Vlr_ingr_arriendos] [int] NOT NULL,
	[Ind_otros_ingresos] [tinyint] NOT NULL,
	[Vlr_otros_ingresos] [int] NOT NULL,
	[Ind_ingr_estado] [tinyint] NOT NULL,
	[Vlr_ingr_fam_accion] [int] NOT NULL,
	[Vlr_ingr_col_mayor] [int] NOT NULL,
	[Vlr_ingr_otro_subsidio] [int] NOT NULL,
	[Fec_ini_persona1] [datetime] NOT NULL,
	[Fec_fin_persona1] [datetime] NOT NULL,
	[Fec_ini_persona2] [datetime] NOT NULL,
	[Fec_fin_persona2] [datetime] NOT NULL,
 CONSTRAINT [PK_CNS_PERSONAS] PRIMARY KEY NONCLUSTERED 
(
	[Cod_mpio] ASC,
	[Num_ficha] ASC,
	[Ide_hogar] ASC,
	[Ide_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_CNS_PERSONAS] UNIQUE NONCLUSTERED 
(
	[Ide_ficha_origen] ASC,
	[Ide_hogar] ASC,
	[Ide_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DAT].[CNS_VIVIENDAS]    Script Date: 3/8/2018 5:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DAT].[CNS_VIVIENDAS](
	[Num_paquete] [int] NOT NULL,
	[Est_vivienda_bd] [tinyint] NOT NULL,
	[Fec_paquete] [datetime] NOT NULL,
	[Cod_dpto] [varchar](2) NOT NULL,
	[Cod_mpio] [varchar](5) NOT NULL,
	[Num_ficha] [int] NOT NULL,
	[ide_ficha_origen] [varchar](20) NOT NULL,
	[ori_encuesta] [tinyint] NOT NULL,
	[Est_ficha] [tinyint] NOT NULL,
	[Tip_vivienda] [tinyint] NOT NULL,
	[Tip_mat_paredes] [tinyint] NOT NULL,
	[Tip_mat_pisos] [tinyint] NOT NULL,
	[Ind_tiene_energia] [tinyint] NOT NULL,
	[Tip_estrato_energia] [tinyint] NOT NULL,
	[Ind_tiene_alcantarillado] [tinyint] NOT NULL,
	[Ind_tiene_gas] [tinyint] NOT NULL,
	[Ind_tiene_recoleccion] [tinyint] NOT NULL,
	[Ind_tiene_acueducto] [tinyint] NOT NULL,
	[Tip_estrato_acueducto] [tinyint] NOT NULL,
	[Num_cuartos_vivienda] [tinyint] NOT NULL,
	[Num_hogares_vivienda] [tinyint] NOT NULL,
	[Cod_encuestador] [varchar](4) NOT NULL,
	[Cod_supervisor] [varchar](4) NOT NULL,
	[Cod_critico] [varchar](4) NOT NULL,
	[Cod_digitador] [varchar](4) NOT NULL,
	[Fec_digitacion] [datetime] NULL,
	[Fec_ini_vivienda] [datetime] NOT NULL,
	[Fec_fin_vivienda] [datetime] NOT NULL,
	[Cod_equipo_encuesta] [varchar](3) NOT NULL,
 CONSTRAINT [PK_CNS_VIVIENDAS] PRIMARY KEY NONCLUSTERED 
(
	[Cod_mpio] ASC,
	[Num_ficha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UK_CNS_VIVIENDAS] UNIQUE NONCLUSTERED 
(
	[ide_ficha_origen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DAT].[DEPARTAMENTOS]    Script Date: 3/8/2018 5:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DAT].[DEPARTAMENTOS](
	[cod_dpto] [int] NOT NULL,
	[dpto] [varchar](2) NOT NULL,
 CONSTRAINT [PK_DEPARTAMENTOS] PRIMARY KEY CLUSTERED 
(
	[cod_dpto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DAT].[MUNICIPIOS]    Script Date: 3/8/2018 5:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DAT].[MUNICIPIOS](
	[cod_mpio] [int] NOT NULL,
	[cod_dpto] [int] NOT NULL,
	[mpio] [varchar](5) NOT NULL,
 CONSTRAINT [PK_MUNICIPIOS] PRIMARY KEY CLUSTERED 
(
	[cod_mpio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ML].[CNS_CategorySets]    Script Date: 3/8/2018 5:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ML].[CNS_CategorySets](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Cluster] [varchar](32) NOT NULL,
	[k] [tinyint] NOT NULL,
	[Min] [float] NOT NULL,
	[Max] [float] NOT NULL,
	[P_i] [float] NOT NULL,
	[Curr] [float] NOT NULL,
	[Tolerance] [float] NOT NULL,
	[P_ip1] [float] NOT NULL,
	[EvalMin] [float] NOT NULL,
	[EvalMax] [float] NOT NULL,
	[MinObs] [float] NOT NULL,
	[MaxObs] [float] NOT NULL,
	[AvgEval] [float] NOT NULL,
	[AvgObs] [float] NOT NULL,
	[EvalDist] [float] NOT NULL,
	[EvalMinX] [float] NOT NULL,
	[EvalMaxX] [float] NOT NULL,
	[AlertMin] [float] NOT NULL,
	[AlertMax] [float] NOT NULL,
 CONSTRAINT [PK__CNS_Cate__3214EC07F620F687] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ML].[CNS_HOGARES_Logs]    Script Date: 3/8/2018 5:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ML].[CNS_HOGARES_Logs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Num_paquete] [int] NOT NULL,
	[Cod_dpto] [varchar](2) NOT NULL,
	[Cod_mpio] [varchar](5) NOT NULL,
	[Num_ficha] [int] NOT NULL,
	[Ide_hogar] [tinyint] NOT NULL,
	[Fec_evaluado] [datetime2](7) NOT NULL,
	[Tip_ocupa_vivienda] [float] NOT NULL,
	[Num_cuartos_exclusivos] [float] NOT NULL,
	[Num_cuartos_dormir] [float] NOT NULL,
	[Num_cuartos_unicos_dormir] [float] NOT NULL,
	[Tip_sanitario] [float] NOT NULL,
	[Tip_ubi_sanitario] [float] NOT NULL,
	[Tip_uso_sanitario] [float] NOT NULL,
	[Tip_origen_agua] [float] NOT NULL,
	[Ind_agua_llega_7dias] [float] NOT NULL,
	[Num_dias_llega] [float] NOT NULL,
	[Ind_agua_llega_24horas] [float] NOT NULL,
	[Num_horas_llega] [float] NOT NULL,
	[Tip_uso_agua_beber] [float] NOT NULL,
	[Tip_elimina_basura] [float] NOT NULL,
	[Ind_tiene_cocina] [float] NOT NULL,
	[Tip_prepara_alimentos] [float] NOT NULL,
	[Tip_uso_cocina] [float] NOT NULL,
	[Tip_energia_cocina] [float] NOT NULL,
	[Ind_tiene_nevera] [float] NOT NULL,
	[Ind_tiene_lavadora] [float] NOT NULL,
	[Ind_tiene_pc] [float] NOT NULL,
	[Ind_tiene_internet] [float] NOT NULL,
	[Ind_tiene_moto] [float] NOT NULL,
	[Ind_tiene_tractor] [float] NOT NULL,
	[Ind_tiene_carro] [float] NOT NULL,
	[Ind_tiene_bien_raiz] [float] NOT NULL,
	[Ind_gasto_alimento] [float] NOT NULL,
	[Vlr_gasto_alimento] [float] NOT NULL,
	[Ind_gasto_transporte] [float] NOT NULL,
	[Vlr_gasto_transporte] [float] NOT NULL,
	[Ind_gasto_educacion] [float] NOT NULL,
	[Vlr_gasto_educacion] [float] NOT NULL,
	[Ind_gasto_salud] [float] NOT NULL,
	[Vlr_gasto_salud] [float] NOT NULL,
	[Ind_gasto_serv_publicos] [float] NOT NULL,
	[Vlr_gasto_serv_publicos] [float] NOT NULL,
	[Ind_gasto_celular] [float] NOT NULL,
	[Vlr_gasto_celular] [float] NOT NULL,
	[Ind_gasto_arriendo] [float] NOT NULL,
	[Vlr_gasto_arriendo] [float] NOT NULL,
	[Ind_gasto_otros] [float] NOT NULL,
	[Vlr_gasto_otros] [float] NOT NULL,
	[Vlr_total_gastos] [float] NOT NULL,
	[Num_habita_vivienda] [float] NOT NULL,
	[Ind_evento_inundacion] [float] NOT NULL,
	[Num_evento_inundacion] [float] NOT NULL,
	[Ind_evento_avalancha] [float] NOT NULL,
	[Num_evento_avalancha] [float] NOT NULL,
	[Ind_evento_terremoto] [float] NOT NULL,
	[Num_evento_terremoto] [float] NOT NULL,
	[Ind_evento_incendio] [float] NOT NULL,
	[Num_evento_incendio] [float] NOT NULL,
	[Ind_evento_vendaval] [float] NOT NULL,
	[Num_evento_vendaval] [float] NOT NULL,
	[Ind_evento_hundimiento] [float] NOT NULL,
	[Num_evento_hundimiento] [float] NOT NULL,
	[Num_personas_posibles] [float] NOT NULL,
	[Num_personas_hogar] [float] NOT NULL,
	[res_visita] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ML].[CNS_HogarViviendaNeurons]    Script Date: 3/8/2018 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ML].[CNS_HogarViviendaNeurons](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Cluster] [varchar](32) NOT NULL,
	[Ind_agua_llega_24horas_1] [float] NOT NULL,
	[Ind_agua_llega_24horas_2] [float] NOT NULL,
	[Ind_agua_llega_7dias_1] [float] NOT NULL,
	[Ind_agua_llega_7dias_2] [float] NOT NULL,
	[Ind_evento_avalancha_1] [float] NOT NULL,
	[Ind_evento_avalancha_2] [float] NOT NULL,
	[Ind_evento_hundimiento_1] [float] NOT NULL,
	[Ind_evento_hundimiento_2] [float] NOT NULL,
	[Ind_evento_incendio_1] [float] NOT NULL,
	[Ind_evento_incendio_2] [float] NOT NULL,
	[Ind_evento_inundacion_1] [float] NOT NULL,
	[Ind_evento_inundacion_2] [float] NOT NULL,
	[Ind_evento_terremoto_1] [float] NOT NULL,
	[Ind_evento_terremoto_2] [float] NOT NULL,
	[Ind_evento_vendaval_1] [float] NOT NULL,
	[Ind_evento_vendaval_2] [float] NOT NULL,
	[Ind_gasto_alimento_1] [float] NOT NULL,
	[Ind_gasto_alimento_2] [float] NOT NULL,
	[Ind_gasto_alimento_9] [float] NOT NULL,
	[Ind_gasto_arriendo_1] [float] NOT NULL,
	[Ind_gasto_arriendo_2] [float] NOT NULL,
	[Ind_gasto_arriendo_9] [float] NOT NULL,
	[Ind_gasto_celular_1] [float] NOT NULL,
	[Ind_gasto_celular_2] [float] NOT NULL,
	[Ind_gasto_celular_9] [float] NOT NULL,
	[Ind_gasto_educacion_1] [float] NOT NULL,
	[Ind_gasto_educacion_2] [float] NOT NULL,
	[Ind_gasto_educacion_9] [float] NOT NULL,
	[Ind_gasto_otros_1] [float] NOT NULL,
	[Ind_gasto_otros_2] [float] NOT NULL,
	[Ind_gasto_otros_9] [float] NOT NULL,
	[Ind_gasto_salud_1] [float] NOT NULL,
	[Ind_gasto_salud_2] [float] NOT NULL,
	[Ind_gasto_salud_9] [float] NOT NULL,
	[Ind_gasto_serv_publicos_1] [float] NOT NULL,
	[Ind_gasto_serv_publicos_2] [float] NOT NULL,
	[Ind_gasto_serv_publicos_9] [float] NOT NULL,
	[Ind_gasto_transporte_1] [float] NOT NULL,
	[Ind_gasto_transporte_2] [float] NOT NULL,
	[Ind_gasto_transporte_9] [float] NOT NULL,
	[Ind_tiene_acueducto_1] [float] NOT NULL,
	[Ind_tiene_acueducto_2] [float] NOT NULL,
	[Ind_tiene_alcantarillado_1] [float] NOT NULL,
	[Ind_tiene_alcantarillado_2] [float] NOT NULL,
	[Ind_tiene_bien_raiz_1] [float] NOT NULL,
	[Ind_tiene_bien_raiz_2] [float] NOT NULL,
	[Ind_tiene_carro_1] [float] NOT NULL,
	[Ind_tiene_carro_2] [float] NOT NULL,
	[Ind_tiene_cocina_1] [float] NOT NULL,
	[Ind_tiene_cocina_2] [float] NOT NULL,
	[Ind_tiene_energia_1] [float] NOT NULL,
	[Ind_tiene_energia_2] [float] NOT NULL,
	[Ind_tiene_gas_1] [float] NOT NULL,
	[Ind_tiene_gas_2] [float] NOT NULL,
	[Ind_tiene_internet_1] [float] NOT NULL,
	[Ind_tiene_internet_2] [float] NOT NULL,
	[Ind_tiene_lavadora_1] [float] NOT NULL,
	[Ind_tiene_lavadora_2] [float] NOT NULL,
	[Ind_tiene_moto_1] [float] NOT NULL,
	[Ind_tiene_moto_2] [float] NOT NULL,
	[Ind_tiene_nevera_1] [float] NOT NULL,
	[Ind_tiene_nevera_2] [float] NOT NULL,
	[Ind_tiene_pc_1] [float] NOT NULL,
	[Ind_tiene_pc_2] [float] NOT NULL,
	[Ind_tiene_recoleccion_1] [float] NOT NULL,
	[Ind_tiene_recoleccion_2] [float] NOT NULL,
	[Ind_tiene_tractor_1] [float] NOT NULL,
	[Ind_tiene_tractor_2] [float] NOT NULL,
	[Num_cuartos_dormir_nor] [float] NOT NULL,
	[Num_cuartos_exclusivos_nor] [float] NOT NULL,
	[Num_cuartos_unicos_dormir_nor] [float] NOT NULL,
	[Num_cuartos_vivienda_nor] [float] NOT NULL,
	[Num_dias_llega_nor] [float] NOT NULL,
	[Num_evento_avalancha_nor] [float] NOT NULL,
	[Num_evento_hundimiento_nor] [float] NOT NULL,
	[Num_evento_incendio_nor] [float] NOT NULL,
	[Num_evento_inundacion_nor] [float] NOT NULL,
	[Num_evento_terremoto_nor] [float] NOT NULL,
	[Num_evento_vendaval_nor] [float] NOT NULL,
	[Num_habita_vivienda_1] [float] NOT NULL,
	[Num_habita_vivienda_2] [float] NOT NULL,
	[Num_habita_vivienda_3] [float] NOT NULL,
	[Num_habita_vivienda_4] [float] NOT NULL,
	[Num_hogares_vivienda_nor] [float] NOT NULL,
	[Num_horas_llega_nor] [float] NOT NULL,
	[Num_personas_hogar_nor] [float] NOT NULL,
	[Num_personas_posibles_nor] [float] NOT NULL,
	[res_visita_1] [float] NOT NULL,
	[res_visita_2] [float] NOT NULL,
	[res_visita_3] [float] NOT NULL,
	[res_visita_4] [float] NOT NULL,
	[res_visita_5] [float] NOT NULL,
	[res_visita_6] [float] NOT NULL,
	[res_visita_7] [float] NOT NULL,
	[Tip_elimina_basura_1] [float] NOT NULL,
	[Tip_elimina_basura_2] [float] NOT NULL,
	[Tip_elimina_basura_3] [float] NOT NULL,
	[Tip_elimina_basura_4] [float] NOT NULL,
	[Tip_elimina_basura_5] [float] NOT NULL,
	[Tip_elimina_basura_6] [float] NOT NULL,
	[Tip_elimina_basura_7] [float] NOT NULL,
	[Tip_energia_cocina_1] [float] NOT NULL,
	[Tip_energia_cocina_2] [float] NOT NULL,
	[Tip_energia_cocina_3] [float] NOT NULL,
	[Tip_energia_cocina_4] [float] NOT NULL,
	[Tip_energia_cocina_5] [float] NOT NULL,
	[Tip_energia_cocina_6] [float] NOT NULL,
	[Tip_energia_cocina_7] [float] NOT NULL,
	[Tip_estrato_acueducto_1] [float] NOT NULL,
	[Tip_estrato_acueducto_2] [float] NOT NULL,
	[Tip_estrato_energia_1] [float] NOT NULL,
	[Tip_estrato_energia_2] [float] NOT NULL,
	[Tip_mat_paredes_0] [float] NOT NULL,
	[Tip_mat_paredes_1] [float] NOT NULL,
	[Tip_mat_paredes_2] [float] NOT NULL,
	[Tip_mat_paredes_3] [float] NOT NULL,
	[Tip_mat_paredes_4] [float] NOT NULL,
	[Tip_mat_paredes_5] [float] NOT NULL,
	[Tip_mat_paredes_6] [float] NOT NULL,
	[Tip_mat_paredes_7] [float] NOT NULL,
	[Tip_mat_pisos_1] [float] NOT NULL,
	[Tip_mat_pisos_2] [float] NOT NULL,
	[Tip_mat_pisos_3] [float] NOT NULL,
	[Tip_mat_pisos_4] [float] NOT NULL,
	[Tip_mat_pisos_5] [float] NOT NULL,
	[Tip_mat_pisos_6] [float] NOT NULL,
	[Tip_ocupa_vivienda_1] [float] NOT NULL,
	[Tip_ocupa_vivienda_2] [float] NOT NULL,
	[Tip_ocupa_vivienda_3] [float] NOT NULL,
	[Tip_ocupa_vivienda_4] [float] NOT NULL,
	[Tip_ocupa_vivienda_5] [float] NOT NULL,
	[Tip_origen_agua_1] [float] NOT NULL,
	[Tip_origen_agua_2] [float] NOT NULL,
	[Tip_origen_agua_3] [float] NOT NULL,
	[Tip_origen_agua_4] [float] NOT NULL,
	[Tip_origen_agua_5] [float] NOT NULL,
	[Tip_origen_agua_6] [float] NOT NULL,
	[Tip_origen_agua_7] [float] NOT NULL,
	[Tip_origen_agua_8] [float] NOT NULL,
	[Tip_origen_agua_9] [float] NOT NULL,
	[Tip_prepara_alimentos_1] [float] NOT NULL,
	[Tip_prepara_alimentos_2] [float] NOT NULL,
	[Tip_prepara_alimentos_3] [float] NOT NULL,
	[Tip_prepara_alimentos_4] [float] NOT NULL,
	[Tip_prepara_alimentos_5] [float] NOT NULL,
	[Tip_sanitario_1] [float] NOT NULL,
	[Tip_sanitario_2] [float] NOT NULL,
	[Tip_sanitario_3] [float] NOT NULL,
	[Tip_sanitario_4] [float] NOT NULL,
	[Tip_sanitario_5] [float] NOT NULL,
	[Tip_ubi_sanitario_1] [float] NOT NULL,
	[Tip_ubi_sanitario_2] [float] NOT NULL,
	[Tip_uso_agua_beber_1] [float] NOT NULL,
	[Tip_uso_agua_beber_2] [float] NOT NULL,
	[Tip_uso_agua_beber_3] [float] NOT NULL,
	[Tip_uso_agua_beber_4] [float] NOT NULL,
	[Tip_uso_agua_beber_5] [float] NOT NULL,
	[Tip_uso_agua_beber_6] [float] NOT NULL,
	[Tip_uso_cocina_1] [float] NOT NULL,
	[Tip_uso_cocina_2] [float] NOT NULL,
	[Tip_uso_cocina_3] [float] NOT NULL,
	[Tip_uso_sanitario_1] [float] NOT NULL,
	[Tip_uso_sanitario_2] [float] NOT NULL,
	[Tip_uso_sanitario_3] [float] NOT NULL,
	[Tip_vivienda_1] [float] NOT NULL,
	[Tip_vivienda_2] [float] NOT NULL,
	[Tip_vivienda_3] [float] NOT NULL,
	[Tip_vivienda_4] [float] NOT NULL,
	[Tip_vivienda_5] [float] NOT NULL,
	[Vlr_gasto_alimento_nor] [float] NOT NULL,
	[Vlr_gasto_arriendo_nor] [float] NOT NULL,
	[Vlr_gasto_celular_nor] [float] NOT NULL,
	[Vlr_gasto_educacion_nor] [float] NOT NULL,
	[Vlr_gasto_otros_nor] [float] NOT NULL,
	[Vlr_gasto_salud_nor] [float] NOT NULL,
	[Vlr_gasto_serv_publicos_nor] [float] NOT NULL,
	[Vlr_gasto_transporte_nor] [float] NOT NULL,
	[Vlr_total_gastos_nor] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ML].[CNS_HogarViviendaNeuronsLogs]    Script Date: 3/8/2018 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ML].[CNS_HogarViviendaNeuronsLogs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Cluster] [varchar](32) NOT NULL,
	[Num_ficha] [int] NOT NULL,
	[Ide_hogar] [tinyint] NOT NULL,
	[Fec_evaluado] [datetime2](7) NOT NULL,
	[Ind_agua_llega_24horas_1] [float] NOT NULL,
	[Ind_agua_llega_24horas_2] [float] NOT NULL,
	[Ind_agua_llega_7dias_1] [float] NOT NULL,
	[Ind_agua_llega_7dias_2] [float] NOT NULL,
	[Ind_evento_avalancha_1] [float] NOT NULL,
	[Ind_evento_avalancha_2] [float] NOT NULL,
	[Ind_evento_hundimiento_1] [float] NOT NULL,
	[Ind_evento_hundimiento_2] [float] NOT NULL,
	[Ind_evento_incendio_1] [float] NOT NULL,
	[Ind_evento_incendio_2] [float] NOT NULL,
	[Ind_evento_inundacion_1] [float] NOT NULL,
	[Ind_evento_inundacion_2] [float] NOT NULL,
	[Ind_evento_terremoto_1] [float] NOT NULL,
	[Ind_evento_terremoto_2] [float] NOT NULL,
	[Ind_evento_vendaval_1] [float] NOT NULL,
	[Ind_evento_vendaval_2] [float] NOT NULL,
	[Ind_gasto_alimento_1] [float] NOT NULL,
	[Ind_gasto_alimento_2] [float] NOT NULL,
	[Ind_gasto_alimento_9] [float] NOT NULL,
	[Ind_gasto_arriendo_1] [float] NOT NULL,
	[Ind_gasto_arriendo_2] [float] NOT NULL,
	[Ind_gasto_arriendo_9] [float] NOT NULL,
	[Ind_gasto_celular_1] [float] NOT NULL,
	[Ind_gasto_celular_2] [float] NOT NULL,
	[Ind_gasto_celular_9] [float] NOT NULL,
	[Ind_gasto_educacion_1] [float] NOT NULL,
	[Ind_gasto_educacion_2] [float] NOT NULL,
	[Ind_gasto_educacion_9] [float] NOT NULL,
	[Ind_gasto_otros_1] [float] NOT NULL,
	[Ind_gasto_otros_2] [float] NOT NULL,
	[Ind_gasto_otros_9] [float] NOT NULL,
	[Ind_gasto_salud_1] [float] NOT NULL,
	[Ind_gasto_salud_2] [float] NOT NULL,
	[Ind_gasto_salud_9] [float] NOT NULL,
	[Ind_gasto_serv_publicos_1] [float] NOT NULL,
	[Ind_gasto_serv_publicos_2] [float] NOT NULL,
	[Ind_gasto_serv_publicos_9] [float] NOT NULL,
	[Ind_gasto_transporte_1] [float] NOT NULL,
	[Ind_gasto_transporte_2] [float] NOT NULL,
	[Ind_gasto_transporte_9] [float] NOT NULL,
	[Ind_tiene_acueducto_1] [float] NOT NULL,
	[Ind_tiene_acueducto_2] [float] NOT NULL,
	[Ind_tiene_alcantarillado_1] [float] NOT NULL,
	[Ind_tiene_alcantarillado_2] [float] NOT NULL,
	[Ind_tiene_bien_raiz_1] [float] NOT NULL,
	[Ind_tiene_bien_raiz_2] [float] NOT NULL,
	[Ind_tiene_carro_1] [float] NOT NULL,
	[Ind_tiene_carro_2] [float] NOT NULL,
	[Ind_tiene_cocina_1] [float] NOT NULL,
	[Ind_tiene_cocina_2] [float] NOT NULL,
	[Ind_tiene_energia_1] [float] NOT NULL,
	[Ind_tiene_energia_2] [float] NOT NULL,
	[Ind_tiene_gas_1] [float] NOT NULL,
	[Ind_tiene_gas_2] [float] NOT NULL,
	[Ind_tiene_internet_1] [float] NOT NULL,
	[Ind_tiene_internet_2] [float] NOT NULL,
	[Ind_tiene_lavadora_1] [float] NOT NULL,
	[Ind_tiene_lavadora_2] [float] NOT NULL,
	[Ind_tiene_moto_1] [float] NOT NULL,
	[Ind_tiene_moto_2] [float] NOT NULL,
	[Ind_tiene_nevera_1] [float] NOT NULL,
	[Ind_tiene_nevera_2] [float] NOT NULL,
	[Ind_tiene_pc_1] [float] NOT NULL,
	[Ind_tiene_pc_2] [float] NOT NULL,
	[Ind_tiene_recoleccion_1] [float] NOT NULL,
	[Ind_tiene_recoleccion_2] [float] NOT NULL,
	[Ind_tiene_tractor_1] [float] NOT NULL,
	[Ind_tiene_tractor_2] [float] NOT NULL,
	[Num_cuartos_dormir_nor] [float] NOT NULL,
	[Num_cuartos_exclusivos_nor] [float] NOT NULL,
	[Num_cuartos_unicos_dormir_nor] [float] NOT NULL,
	[Num_cuartos_vivienda_nor] [float] NOT NULL,
	[Num_dias_llega_nor] [float] NOT NULL,
	[Num_evento_avalancha_nor] [float] NOT NULL,
	[Num_evento_hundimiento_nor] [float] NOT NULL,
	[Num_evento_incendio_nor] [float] NOT NULL,
	[Num_evento_inundacion_nor] [float] NOT NULL,
	[Num_evento_terremoto_nor] [float] NOT NULL,
	[Num_evento_vendaval_nor] [float] NOT NULL,
	[Num_habita_vivienda_1] [float] NOT NULL,
	[Num_habita_vivienda_2] [float] NOT NULL,
	[Num_habita_vivienda_3] [float] NOT NULL,
	[Num_habita_vivienda_4] [float] NOT NULL,
	[Num_hogares_vivienda_nor] [float] NOT NULL,
	[Num_horas_llega_nor] [float] NOT NULL,
	[Num_personas_hogar_nor] [float] NOT NULL,
	[Num_personas_posibles_nor] [float] NOT NULL,
	[res_visita_1] [float] NOT NULL,
	[res_visita_2] [float] NOT NULL,
	[res_visita_3] [float] NOT NULL,
	[res_visita_4] [float] NOT NULL,
	[res_visita_5] [float] NOT NULL,
	[res_visita_6] [float] NOT NULL,
	[res_visita_7] [float] NOT NULL,
	[Tip_elimina_basura_1] [float] NOT NULL,
	[Tip_elimina_basura_2] [float] NOT NULL,
	[Tip_elimina_basura_3] [float] NOT NULL,
	[Tip_elimina_basura_4] [float] NOT NULL,
	[Tip_elimina_basura_5] [float] NOT NULL,
	[Tip_elimina_basura_6] [float] NOT NULL,
	[Tip_elimina_basura_7] [float] NOT NULL,
	[Tip_energia_cocina_1] [float] NOT NULL,
	[Tip_energia_cocina_2] [float] NOT NULL,
	[Tip_energia_cocina_3] [float] NOT NULL,
	[Tip_energia_cocina_4] [float] NOT NULL,
	[Tip_energia_cocina_5] [float] NOT NULL,
	[Tip_energia_cocina_6] [float] NOT NULL,
	[Tip_energia_cocina_7] [float] NOT NULL,
	[Tip_estrato_acueducto_1] [float] NOT NULL,
	[Tip_estrato_acueducto_2] [float] NOT NULL,
	[Tip_estrato_energia_1] [float] NOT NULL,
	[Tip_estrato_energia_2] [float] NOT NULL,
	[Tip_mat_paredes_0] [float] NOT NULL,
	[Tip_mat_paredes_1] [float] NOT NULL,
	[Tip_mat_paredes_2] [float] NOT NULL,
	[Tip_mat_paredes_3] [float] NOT NULL,
	[Tip_mat_paredes_4] [float] NOT NULL,
	[Tip_mat_paredes_5] [float] NOT NULL,
	[Tip_mat_paredes_6] [float] NOT NULL,
	[Tip_mat_paredes_7] [float] NOT NULL,
	[Tip_mat_pisos_1] [float] NOT NULL,
	[Tip_mat_pisos_2] [float] NOT NULL,
	[Tip_mat_pisos_3] [float] NOT NULL,
	[Tip_mat_pisos_4] [float] NOT NULL,
	[Tip_mat_pisos_5] [float] NOT NULL,
	[Tip_mat_pisos_6] [float] NOT NULL,
	[Tip_ocupa_vivienda_1] [float] NOT NULL,
	[Tip_ocupa_vivienda_2] [float] NOT NULL,
	[Tip_ocupa_vivienda_3] [float] NOT NULL,
	[Tip_ocupa_vivienda_4] [float] NOT NULL,
	[Tip_ocupa_vivienda_5] [float] NOT NULL,
	[Tip_origen_agua_1] [float] NOT NULL,
	[Tip_origen_agua_2] [float] NOT NULL,
	[Tip_origen_agua_3] [float] NOT NULL,
	[Tip_origen_agua_4] [float] NOT NULL,
	[Tip_origen_agua_5] [float] NOT NULL,
	[Tip_origen_agua_6] [float] NOT NULL,
	[Tip_origen_agua_7] [float] NOT NULL,
	[Tip_origen_agua_8] [float] NOT NULL,
	[Tip_origen_agua_9] [float] NOT NULL,
	[Tip_prepara_alimentos_1] [float] NOT NULL,
	[Tip_prepara_alimentos_2] [float] NOT NULL,
	[Tip_prepara_alimentos_3] [float] NOT NULL,
	[Tip_prepara_alimentos_4] [float] NOT NULL,
	[Tip_prepara_alimentos_5] [float] NOT NULL,
	[Tip_sanitario_1] [float] NOT NULL,
	[Tip_sanitario_2] [float] NOT NULL,
	[Tip_sanitario_3] [float] NOT NULL,
	[Tip_sanitario_4] [float] NOT NULL,
	[Tip_sanitario_5] [float] NOT NULL,
	[Tip_ubi_sanitario_1] [float] NOT NULL,
	[Tip_ubi_sanitario_2] [float] NOT NULL,
	[Tip_uso_agua_beber_1] [float] NOT NULL,
	[Tip_uso_agua_beber_2] [float] NOT NULL,
	[Tip_uso_agua_beber_3] [float] NOT NULL,
	[Tip_uso_agua_beber_4] [float] NOT NULL,
	[Tip_uso_agua_beber_5] [float] NOT NULL,
	[Tip_uso_agua_beber_6] [float] NOT NULL,
	[Tip_uso_cocina_1] [float] NOT NULL,
	[Tip_uso_cocina_2] [float] NOT NULL,
	[Tip_uso_cocina_3] [float] NOT NULL,
	[Tip_uso_sanitario_1] [float] NOT NULL,
	[Tip_uso_sanitario_2] [float] NOT NULL,
	[Tip_uso_sanitario_3] [float] NOT NULL,
	[Tip_vivienda_1] [float] NOT NULL,
	[Tip_vivienda_2] [float] NOT NULL,
	[Tip_vivienda_3] [float] NOT NULL,
	[Tip_vivienda_4] [float] NOT NULL,
	[Tip_vivienda_5] [float] NOT NULL,
	[Vlr_gasto_alimento_nor] [float] NOT NULL,
	[Vlr_gasto_arriendo_nor] [float] NOT NULL,
	[Vlr_gasto_celular_nor] [float] NOT NULL,
	[Vlr_gasto_educacion_nor] [float] NOT NULL,
	[Vlr_gasto_otros_nor] [float] NOT NULL,
	[Vlr_gasto_salud_nor] [float] NOT NULL,
	[Vlr_gasto_serv_publicos_nor] [float] NOT NULL,
	[Vlr_gasto_transporte_nor] [float] NOT NULL,
	[Vlr_total_gastos_nor] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ML].[CNS_PersonaNeurons]    Script Date: 3/8/2018 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ML].[CNS_PersonaNeurons](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Cluster] [varchar](32) NOT NULL,
	[Fec_nacimiento_nor] [float] NOT NULL,
	[Grado_alcanzado_nor] [float] NOT NULL,
	[Ind_acudio_salud_1] [float] NOT NULL,
	[Ind_acudio_salud_2] [float] NOT NULL,
	[Ind_conyuge_vive_hogar_1] [float] NOT NULL,
	[Ind_conyuge_vive_hogar_2] [float] NOT NULL,
	[Ind_discap_bañarse_1] [float] NOT NULL,
	[Ind_discap_bañarse_2] [float] NOT NULL,
	[Ind_discap_entender_1] [float] NOT NULL,
	[Ind_discap_entender_2] [float] NOT NULL,
	[Ind_discap_hablar_1] [float] NOT NULL,
	[Ind_discap_hablar_2] [float] NOT NULL,
	[Ind_discap_moverse_1] [float] NOT NULL,
	[Ind_discap_moverse_2] [float] NOT NULL,
	[Ind_discap_ninguna_1] [float] NOT NULL,
	[Ind_discap_ninguna_2] [float] NOT NULL,
	[Ind_discap_oir_1] [float] NOT NULL,
	[Ind_discap_oir_2] [float] NOT NULL,
	[Ind_discap_salir_1] [float] NOT NULL,
	[Ind_discap_salir_2] [float] NOT NULL,
	[Ind_discap_ver_1] [float] NOT NULL,
	[Ind_discap_ver_2] [float] NOT NULL,
	[Ind_enfermo_30_1] [float] NOT NULL,
	[Ind_enfermo_30_2] [float] NOT NULL,
	[Ind_esta_embarazada_1] [float] NOT NULL,
	[Ind_esta_embarazada_2] [float] NOT NULL,
	[Ind_estudia_1] [float] NOT NULL,
	[Ind_estudia_2] [float] NOT NULL,
	[Ind_fondo_pensiones_1] [float] NOT NULL,
	[Ind_fondo_pensiones_2] [float] NOT NULL,
	[Ind_fondo_pensiones_3] [float] NOT NULL,
	[Ind_fue_atendido_salud_1] [float] NOT NULL,
	[Ind_fue_atendido_salud_2] [float] NOT NULL,
	[Ind_ingr_arriendos_1] [float] NOT NULL,
	[Ind_ingr_arriendos_2] [float] NOT NULL,
	[Ind_ingr_arriendos_9] [float] NOT NULL,
	[Ind_ingr_cosecha_1] [float] NOT NULL,
	[Ind_ingr_cosecha_2] [float] NOT NULL,
	[Ind_ingr_cosecha_9] [float] NOT NULL,
	[Ind_ingr_estado_1] [float] NOT NULL,
	[Ind_ingr_estado_2] [float] NOT NULL,
	[Ind_ingr_honorarios_1] [float] NOT NULL,
	[Ind_ingr_honorarios_2] [float] NOT NULL,
	[Ind_ingr_honorarios_9] [float] NOT NULL,
	[Ind_ingr_pension_1] [float] NOT NULL,
	[Ind_ingr_pension_2] [float] NOT NULL,
	[Ind_ingr_pension_9] [float] NOT NULL,
	[Ind_ingr_remesa_exterior_1] [float] NOT NULL,
	[Ind_ingr_remesa_exterior_2] [float] NOT NULL,
	[Ind_ingr_remesa_exterior_9] [float] NOT NULL,
	[Ind_ingr_remesa_pais_1] [float] NOT NULL,
	[Ind_ingr_remesa_pais_2] [float] NOT NULL,
	[Ind_ingr_remesa_pais_9] [float] NOT NULL,
	[Ind_ingr_salario_1] [float] NOT NULL,
	[Ind_ingr_salario_2] [float] NOT NULL,
	[Ind_ingr_salario_9] [float] NOT NULL,
	[Ind_leer_escribir_1] [float] NOT NULL,
	[Ind_leer_escribir_2] [float] NOT NULL,
	[Ind_otros_ingresos_1] [float] NOT NULL,
	[Ind_otros_ingresos_2] [float] NOT NULL,
	[Ind_otros_ingresos_9] [float] NOT NULL,
	[Ind_padre_vive_hogar_1] [float] NOT NULL,
	[Ind_padre_vive_hogar_2] [float] NOT NULL,
	[Ind_pariente_domestico_1] [float] NOT NULL,
	[Ind_pariente_domestico_2] [float] NOT NULL,
	[Ind_recibe_comida_1] [float] NOT NULL,
	[Ind_recibe_comida_2] [float] NOT NULL,
	[Ind_tuvo_hijos_1] [float] NOT NULL,
	[Ind_tuvo_hijos_2] [float] NOT NULL,
	[Niv_educativo_0] [float] NOT NULL,
	[Niv_educativo_1] [float] NOT NULL,
	[Niv_educativo_2] [float] NOT NULL,
	[Niv_educativo_3] [float] NOT NULL,
	[Niv_educativo_4] [float] NOT NULL,
	[Niv_educativo_5] [float] NOT NULL,
	[Niv_educativo_6] [float] NOT NULL,
	[Niv_educativo_7] [float] NOT NULL,
	[Num_mes_ingr_cosecha_nor] [float] NOT NULL,
	[Num_sem_buscando_nor] [float] NOT NULL,
	[Sexo_persona_1] [float] NOT NULL,
	[Sexo_persona_2] [float] NOT NULL,
	[Tip_actividad_mes_0] [float] NOT NULL,
	[Tip_actividad_mes_1] [float] NOT NULL,
	[Tip_actividad_mes_2] [float] NOT NULL,
	[Tip_actividad_mes_3] [float] NOT NULL,
	[Tip_actividad_mes_4] [float] NOT NULL,
	[Tip_actividad_mes_5] [float] NOT NULL,
	[Tip_actividad_mes_6] [float] NOT NULL,
	[Tip_actividad_mes_7] [float] NOT NULL,
	[Tip_cuidado_niños_1] [float] NOT NULL,
	[Tip_cuidado_niños_2] [float] NOT NULL,
	[Tip_cuidado_niños_3] [float] NOT NULL,
	[Tip_cuidado_niños_4] [float] NOT NULL,
	[Tip_cuidado_niños_5] [float] NOT NULL,
	[Tip_cuidado_niños_6] [float] NOT NULL,
	[Tip_cuidado_niños_7] [float] NOT NULL,
	[Tip_cuidado_niños_8] [float] NOT NULL,
	[Tip_documento_1] [float] NOT NULL,
	[Tip_documento_2] [float] NOT NULL,
	[Tip_documento_3] [float] NOT NULL,
	[Tip_documento_4] [float] NOT NULL,
	[Tip_documento_5] [float] NOT NULL,
	[Tip_documento_6] [float] NOT NULL,
	[Tip_documento_7] [float] NOT NULL,
	[Tip_documento_8] [float] NOT NULL,
	[Tip_empleado_1] [float] NOT NULL,
	[Tip_empleado_10] [float] NOT NULL,
	[Tip_empleado_2] [float] NOT NULL,
	[Tip_empleado_3] [float] NOT NULL,
	[Tip_empleado_4] [float] NOT NULL,
	[Tip_empleado_5] [float] NOT NULL,
	[Tip_empleado_6] [float] NOT NULL,
	[Tip_empleado_7] [float] NOT NULL,
	[Tip_empleado_8] [float] NOT NULL,
	[Tip_empleado_9] [float] NOT NULL,
	[Tip_estado_civil_1] [float] NOT NULL,
	[Tip_estado_civil_2] [float] NOT NULL,
	[Tip_estado_civil_3] [float] NOT NULL,
	[Tip_estado_civil_4] [float] NOT NULL,
	[Tip_estado_civil_5] [float] NOT NULL,
	[Tip_parentesco_1] [float] NOT NULL,
	[Tip_parentesco_10] [float] NOT NULL,
	[Tip_parentesco_11] [float] NOT NULL,
	[Tip_parentesco_12] [float] NOT NULL,
	[Tip_parentesco_13] [float] NOT NULL,
	[Tip_parentesco_14] [float] NOT NULL,
	[Tip_parentesco_15] [float] NOT NULL,
	[Tip_parentesco_16] [float] NOT NULL,
	[Tip_parentesco_17] [float] NOT NULL,
	[Tip_parentesco_18] [float] NOT NULL,
	[Tip_parentesco_19] [float] NOT NULL,
	[Tip_parentesco_2] [float] NOT NULL,
	[Tip_parentesco_3] [float] NOT NULL,
	[Tip_parentesco_4] [float] NOT NULL,
	[Tip_parentesco_5] [float] NOT NULL,
	[Tip_parentesco_6] [float] NOT NULL,
	[Tip_parentesco_7] [float] NOT NULL,
	[Tip_parentesco_8] [float] NOT NULL,
	[Tip_parentesco_9] [float] NOT NULL,
	[Tip_Seg_social_0] [float] NOT NULL,
	[Tip_Seg_social_1] [float] NOT NULL,
	[Tip_Seg_social_2] [float] NOT NULL,
	[Tip_Seg_social_3] [float] NOT NULL,
	[Tip_Seg_social_9] [float] NOT NULL,
	[Vlr_ingr_arriendos_nor] [float] NOT NULL,
	[Vlr_ingr_col_mayor_nor] [float] NOT NULL,
	[Vlr_ingr_cosecha_nor] [float] NOT NULL,
	[Vlr_ingr_fam_accion_nor] [float] NOT NULL,
	[Vlr_ingr_honorarios_nor] [float] NOT NULL,
	[Vlr_ingr_otro_subsidio_nor] [float] NOT NULL,
	[Vlr_ingr_pension_nor] [float] NOT NULL,
	[Vlr_ingr_remesa_exterior_nor] [float] NOT NULL,
	[Vlr_ingr_remesa_pais_nor] [float] NOT NULL,
	[Vlr_ingr_salario_nor] [float] NOT NULL,
	[Vlr_otros_ingresos_nor] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ML].[CNS_PersonaNeuronsLogs]    Script Date: 3/8/2018 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ML].[CNS_PersonaNeuronsLogs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Cluster] [varchar](32) NOT NULL,
	[Num_ficha] [int] NOT NULL,
	[Ide_hogar] [tinyint] NOT NULL,
	[Fec_evaluado] [datetime2](7) NOT NULL,
	[Fec_nacimiento_nor] [float] NOT NULL,
	[Grado_alcanzado_nor] [float] NOT NULL,
	[Ind_acudio_salud_1] [float] NOT NULL,
	[Ind_acudio_salud_2] [float] NOT NULL,
	[Ind_conyuge_vive_hogar_1] [float] NOT NULL,
	[Ind_conyuge_vive_hogar_2] [float] NOT NULL,
	[Ind_discap_bañarse_1] [float] NOT NULL,
	[Ind_discap_bañarse_2] [float] NOT NULL,
	[Ind_discap_entender_1] [float] NOT NULL,
	[Ind_discap_entender_2] [float] NOT NULL,
	[Ind_discap_hablar_1] [float] NOT NULL,
	[Ind_discap_hablar_2] [float] NOT NULL,
	[Ind_discap_moverse_1] [float] NOT NULL,
	[Ind_discap_moverse_2] [float] NOT NULL,
	[Ind_discap_ninguna_1] [float] NOT NULL,
	[Ind_discap_ninguna_2] [float] NOT NULL,
	[Ind_discap_oir_1] [float] NOT NULL,
	[Ind_discap_oir_2] [float] NOT NULL,
	[Ind_discap_salir_1] [float] NOT NULL,
	[Ind_discap_salir_2] [float] NOT NULL,
	[Ind_discap_ver_1] [float] NOT NULL,
	[Ind_discap_ver_2] [float] NOT NULL,
	[Ind_enfermo_30_1] [float] NOT NULL,
	[Ind_enfermo_30_2] [float] NOT NULL,
	[Ind_esta_embarazada_1] [float] NOT NULL,
	[Ind_esta_embarazada_2] [float] NOT NULL,
	[Ind_estudia_1] [float] NOT NULL,
	[Ind_estudia_2] [float] NOT NULL,
	[Ind_fondo_pensiones_1] [float] NOT NULL,
	[Ind_fondo_pensiones_2] [float] NOT NULL,
	[Ind_fondo_pensiones_3] [float] NOT NULL,
	[Ind_fue_atendido_salud_1] [float] NOT NULL,
	[Ind_fue_atendido_salud_2] [float] NOT NULL,
	[Ind_ingr_arriendos_1] [float] NOT NULL,
	[Ind_ingr_arriendos_2] [float] NOT NULL,
	[Ind_ingr_arriendos_9] [float] NOT NULL,
	[Ind_ingr_cosecha_1] [float] NOT NULL,
	[Ind_ingr_cosecha_2] [float] NOT NULL,
	[Ind_ingr_cosecha_9] [float] NOT NULL,
	[Ind_ingr_estado_1] [float] NOT NULL,
	[Ind_ingr_estado_2] [float] NOT NULL,
	[Ind_ingr_honorarios_1] [float] NOT NULL,
	[Ind_ingr_honorarios_2] [float] NOT NULL,
	[Ind_ingr_honorarios_9] [float] NOT NULL,
	[Ind_ingr_pension_1] [float] NOT NULL,
	[Ind_ingr_pension_2] [float] NOT NULL,
	[Ind_ingr_pension_9] [float] NOT NULL,
	[Ind_ingr_remesa_exterior_1] [float] NOT NULL,
	[Ind_ingr_remesa_exterior_2] [float] NOT NULL,
	[Ind_ingr_remesa_exterior_9] [float] NOT NULL,
	[Ind_ingr_remesa_pais_1] [float] NOT NULL,
	[Ind_ingr_remesa_pais_2] [float] NOT NULL,
	[Ind_ingr_remesa_pais_9] [float] NOT NULL,
	[Ind_ingr_salario_1] [float] NOT NULL,
	[Ind_ingr_salario_2] [float] NOT NULL,
	[Ind_ingr_salario_9] [float] NOT NULL,
	[Ind_leer_escribir_1] [float] NOT NULL,
	[Ind_leer_escribir_2] [float] NOT NULL,
	[Ind_otros_ingresos_1] [float] NOT NULL,
	[Ind_otros_ingresos_2] [float] NOT NULL,
	[Ind_otros_ingresos_9] [float] NOT NULL,
	[Ind_padre_vive_hogar_1] [float] NOT NULL,
	[Ind_padre_vive_hogar_2] [float] NOT NULL,
	[Ind_pariente_domestico_1] [float] NOT NULL,
	[Ind_pariente_domestico_2] [float] NOT NULL,
	[Ind_recibe_comida_1] [float] NOT NULL,
	[Ind_recibe_comida_2] [float] NOT NULL,
	[Ind_tuvo_hijos_1] [float] NOT NULL,
	[Ind_tuvo_hijos_2] [float] NOT NULL,
	[Niv_educativo_0] [float] NOT NULL,
	[Niv_educativo_1] [float] NOT NULL,
	[Niv_educativo_2] [float] NOT NULL,
	[Niv_educativo_3] [float] NOT NULL,
	[Niv_educativo_4] [float] NOT NULL,
	[Niv_educativo_5] [float] NOT NULL,
	[Niv_educativo_6] [float] NOT NULL,
	[Niv_educativo_7] [float] NOT NULL,
	[Num_mes_ingr_cosecha_nor] [float] NOT NULL,
	[Num_sem_buscando_nor] [float] NOT NULL,
	[Sexo_persona_1] [float] NOT NULL,
	[Sexo_persona_2] [float] NOT NULL,
	[Tip_actividad_mes_0] [float] NOT NULL,
	[Tip_actividad_mes_1] [float] NOT NULL,
	[Tip_actividad_mes_2] [float] NOT NULL,
	[Tip_actividad_mes_3] [float] NOT NULL,
	[Tip_actividad_mes_4] [float] NOT NULL,
	[Tip_actividad_mes_5] [float] NOT NULL,
	[Tip_actividad_mes_6] [float] NOT NULL,
	[Tip_actividad_mes_7] [float] NOT NULL,
	[Tip_cuidado_niños_1] [float] NOT NULL,
	[Tip_cuidado_niños_2] [float] NOT NULL,
	[Tip_cuidado_niños_3] [float] NOT NULL,
	[Tip_cuidado_niños_4] [float] NOT NULL,
	[Tip_cuidado_niños_5] [float] NOT NULL,
	[Tip_cuidado_niños_6] [float] NOT NULL,
	[Tip_cuidado_niños_7] [float] NOT NULL,
	[Tip_cuidado_niños_8] [float] NOT NULL,
	[Tip_documento_1] [float] NOT NULL,
	[Tip_documento_2] [float] NOT NULL,
	[Tip_documento_3] [float] NOT NULL,
	[Tip_documento_4] [float] NOT NULL,
	[Tip_documento_5] [float] NOT NULL,
	[Tip_documento_6] [float] NOT NULL,
	[Tip_documento_7] [float] NOT NULL,
	[Tip_documento_8] [float] NOT NULL,
	[Tip_empleado_1] [float] NOT NULL,
	[Tip_empleado_10] [float] NOT NULL,
	[Tip_empleado_2] [float] NOT NULL,
	[Tip_empleado_3] [float] NOT NULL,
	[Tip_empleado_4] [float] NOT NULL,
	[Tip_empleado_5] [float] NOT NULL,
	[Tip_empleado_6] [float] NOT NULL,
	[Tip_empleado_7] [float] NOT NULL,
	[Tip_empleado_8] [float] NOT NULL,
	[Tip_empleado_9] [float] NOT NULL,
	[Tip_estado_civil_1] [float] NOT NULL,
	[Tip_estado_civil_2] [float] NOT NULL,
	[Tip_estado_civil_3] [float] NOT NULL,
	[Tip_estado_civil_4] [float] NOT NULL,
	[Tip_estado_civil_5] [float] NOT NULL,
	[Tip_parentesco_1] [float] NOT NULL,
	[Tip_parentesco_10] [float] NOT NULL,
	[Tip_parentesco_11] [float] NOT NULL,
	[Tip_parentesco_12] [float] NOT NULL,
	[Tip_parentesco_13] [float] NOT NULL,
	[Tip_parentesco_14] [float] NOT NULL,
	[Tip_parentesco_15] [float] NOT NULL,
	[Tip_parentesco_16] [float] NOT NULL,
	[Tip_parentesco_17] [float] NOT NULL,
	[Tip_parentesco_18] [float] NOT NULL,
	[Tip_parentesco_19] [float] NOT NULL,
	[Tip_parentesco_2] [float] NOT NULL,
	[Tip_parentesco_3] [float] NOT NULL,
	[Tip_parentesco_4] [float] NOT NULL,
	[Tip_parentesco_5] [float] NOT NULL,
	[Tip_parentesco_6] [float] NOT NULL,
	[Tip_parentesco_7] [float] NOT NULL,
	[Tip_parentesco_8] [float] NOT NULL,
	[Tip_parentesco_9] [float] NOT NULL,
	[Tip_Seg_social_0] [float] NOT NULL,
	[Tip_Seg_social_1] [float] NOT NULL,
	[Tip_Seg_social_2] [float] NOT NULL,
	[Tip_Seg_social_3] [float] NOT NULL,
	[Tip_Seg_social_9] [float] NOT NULL,
	[Vlr_ingr_arriendos_nor] [float] NOT NULL,
	[Vlr_ingr_col_mayor_nor] [float] NOT NULL,
	[Vlr_ingr_cosecha_nor] [float] NOT NULL,
	[Vlr_ingr_fam_accion_nor] [float] NOT NULL,
	[Vlr_ingr_honorarios_nor] [float] NOT NULL,
	[Vlr_ingr_otro_subsidio_nor] [float] NOT NULL,
	[Vlr_ingr_pension_nor] [float] NOT NULL,
	[Vlr_ingr_remesa_exterior_nor] [float] NOT NULL,
	[Vlr_ingr_remesa_pais_nor] [float] NOT NULL,
	[Vlr_ingr_salario_nor] [float] NOT NULL,
	[Vlr_otros_ingresos_nor] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ML].[CNS_PERSONAS_Logs]    Script Date: 3/8/2018 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ML].[CNS_PERSONAS_Logs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Num_paquete] [int] NOT NULL,
	[Cod_dpto] [varchar](2) NOT NULL,
	[Cod_mpio] [varchar](5) NOT NULL,
	[Num_ficha] [int] NOT NULL,
	[Ide_hogar] [tinyint] NOT NULL,
	[Ide_persona] [tinyint] NOT NULL,
	[Fec_evaluado] [datetime2](7) NOT NULL,
	[Fec_nacimiento] [float] NOT NULL,
	[Grado_alcanzado] [float] NOT NULL,
	[Ind_acudio_salud] [float] NOT NULL,
	[Ind_conyuge_vive_hogar] [float] NOT NULL,
	[Ind_discap_bañarse] [float] NOT NULL,
	[Ind_discap_entender] [float] NOT NULL,
	[Ind_discap_hablar] [float] NOT NULL,
	[Ind_discap_moverse] [float] NOT NULL,
	[Ind_discap_ninguna] [float] NOT NULL,
	[Ind_discap_oir] [float] NOT NULL,
	[Ind_discap_salir] [float] NOT NULL,
	[Ind_discap_ver] [float] NOT NULL,
	[Ind_enfermo_30] [float] NOT NULL,
	[Ind_esta_embarazada] [float] NOT NULL,
	[Ind_estudia] [float] NOT NULL,
	[Ind_fondo_pensiones] [float] NOT NULL,
	[Ind_fue_atendido_salud] [float] NOT NULL,
	[Ind_ingr_arriendos] [float] NOT NULL,
	[Ind_ingr_cosecha] [float] NOT NULL,
	[Ind_ingr_estado] [float] NOT NULL,
	[Ind_ingr_honorarios] [float] NOT NULL,
	[Ind_ingr_pension] [float] NOT NULL,
	[Ind_ingr_remesa_exterior] [float] NOT NULL,
	[Ind_ingr_remesa_pais] [float] NOT NULL,
	[Ind_ingr_salario] [float] NOT NULL,
	[Ind_leer_escribir] [float] NOT NULL,
	[Ind_otros_ingresos] [float] NOT NULL,
	[Ind_padre_vive_hogar] [float] NOT NULL,
	[Ind_pariente_domestico] [float] NOT NULL,
	[Ind_recibe_comida] [float] NOT NULL,
	[Ind_tuvo_hijos] [float] NOT NULL,
	[Niv_educativo] [float] NOT NULL,
	[Num_mes_ingr_cosecha] [float] NOT NULL,
	[Num_sem_buscando] [float] NOT NULL,
	[Sexo_persona] [float] NOT NULL,
	[Tip_actividad_mes] [float] NOT NULL,
	[Tip_cuidado_niños] [float] NOT NULL,
	[Tip_documento] [float] NOT NULL,
	[Tip_empleado] [float] NOT NULL,
	[Tip_estado_civil] [float] NOT NULL,
	[Tip_parentesco] [float] NOT NULL,
	[Tip_Seg_social] [float] NOT NULL,
	[Vlr_ingr_arriendos] [float] NOT NULL,
	[Vlr_ingr_col_mayor] [float] NOT NULL,
	[Vlr_ingr_cosecha] [float] NOT NULL,
	[Vlr_ingr_fam_accion] [float] NOT NULL,
	[Vlr_ingr_honorarios] [float] NOT NULL,
	[Vlr_ingr_otro_subsidio] [float] NOT NULL,
	[Vlr_ingr_pension] [float] NOT NULL,
	[Vlr_ingr_remesa_exterior] [float] NOT NULL,
	[Vlr_ingr_remesa_pais] [float] NOT NULL,
	[Vlr_ingr_salario] [float] NOT NULL,
	[Vlr_otros_ingresos] [float] NOT NULL,
 CONSTRAINT [PK__CNS_PERS__3214EC07C75A0941] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ML].[CNS_VIVIENDAS_Logs]    Script Date: 3/8/2018 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ML].[CNS_VIVIENDAS_Logs](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Num_paquete] [int] NOT NULL,
	[Cod_dpto] [varchar](2) NOT NULL,
	[Cod_mpio] [varchar](5) NOT NULL,
	[Num_ficha] [int] NOT NULL,
	[Ide_hogar] [tinyint] NOT NULL,
	[Fec_evaluado] [datetime2](7) NOT NULL,
	[Tip_vivienda] [float] NOT NULL,
	[Tip_mat_paredes] [float] NOT NULL,
	[Tip_mat_pisos] [float] NOT NULL,
	[Ind_tiene_energia] [float] NOT NULL,
	[Tip_estrato_energia] [float] NOT NULL,
	[Ind_tiene_alcantarillado] [float] NOT NULL,
	[Ind_tiene_gas] [float] NOT NULL,
	[Ind_tiene_recoleccion] [float] NOT NULL,
	[Ind_tiene_acueducto] [float] NOT NULL,
	[Tip_estrato_acueducto] [float] NOT NULL,
	[Num_cuartos_vivienda] [float] NOT NULL,
	[Num_hogares_vivienda] [float] NOT NULL,
 CONSTRAINT [PK__CNS_VIVI__3214EC07B8757BC0] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [ML].[CNS_HOGARES_Logs] ADD  DEFAULT (getutcdate()) FOR [Fec_evaluado]
GO
ALTER TABLE [ML].[CNS_HogarViviendaNeuronsLogs] ADD  DEFAULT (getutcdate()) FOR [Fec_evaluado]
GO
ALTER TABLE [ML].[CNS_PersonaNeuronsLogs] ADD  DEFAULT (getutcdate()) FOR [Fec_evaluado]
GO
ALTER TABLE [ML].[CNS_PERSONAS_Logs] ADD  CONSTRAINT [DF__CNS_PERSO__Fec_e__10566F31]  DEFAULT (getutcdate()) FOR [Fec_evaluado]
GO
ALTER TABLE [ML].[CNS_VIVIENDAS_Logs] ADD  CONSTRAINT [DF__CNS_VIVIE__Fec_e__1CBC4616]  DEFAULT (getutcdate()) FOR [Fec_evaluado]
GO
/****** Object:  StoredProcedure [ML].[sp__DAT_Departamentos__Get]    Script Date: 3/8/2018 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [ML].[sp__DAT_Departamentos__Get] as
select
	d.[cod_dpto],
	d.[dpto],
	count(*) num_procesadas,
	sum(case when  h.ML_Irregular = 1 then 1 else 0 end) num_irregulares
from [DAT].[DEPARTAMENTOS] d
left join [DAT].[CNS_HOGARES] h
	on d.cod_dpto = h.Cod_dpto
where h.ML_Procesado is not null
group by d.cod_dpto, d.[dpto]
GO
/****** Object:  StoredProcedure [ML].[sp__ML_ProcesarHogares]    Script Date: 3/8/2018 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [ML].[sp__ML_ProcesarHogares] as
begin
	declare @pendientes bigint
	select @pendientes = count(*) from [DAT].[CNS_HOGARES] where ML_Procesado is null

	while @pendientes > 0 begin
		select top 1
			   [Num_paquete]
			  ,[Cod_dpto]
			  ,[Cod_mpio]
			  ,[Num_ficha]
			  ,[Ide_hogar]
			  ,[Tip_ocupa_vivienda]
			  ,[Num_cuartos_exclusivos]
			  ,[Num_cuartos_dormir]
			  ,[Num_cuartos_unicos_dormir]
			  ,[Tip_sanitario]
			  ,[Tip_ubi_sanitario]
			  ,[Tip_uso_sanitario]
			  ,[Tip_origen_agua]
			  ,[Ind_agua_llega_7dias]
			  ,[Num_dias_llega]
			  ,[Ind_agua_llega_24horas]
			  ,[Num_horas_llega]
			  ,[Tip_uso_agua_beber]
			  ,[Tip_elimina_basura]
			  ,[Ind_tiene_cocina]
			  ,[Tip_prepara_alimentos]
			  ,[Tip_uso_cocina]
			  ,[Tip_energia_cocina]
			  ,[Ind_tiene_nevera]
			  ,[Ind_tiene_lavadora]
			  ,[Ind_tiene_pc]
			  ,[Ind_tiene_internet]
			  ,[Ind_tiene_moto]
			  ,[Ind_tiene_tractor]
			  ,[Ind_tiene_carro]
			  ,[Ind_tiene_bien_raiz]
			  ,[Ind_gasto_alimento]
			  ,[Vlr_gasto_alimento]
			  ,[Ind_gasto_transporte]
			  ,[Vlr_gasto_transporte]
			  ,[Ind_gasto_educacion]
			  ,[Vlr_gasto_educacion]
			  ,[Ind_gasto_salud]
			  ,[Vlr_gasto_salud]
			  ,[Ind_gasto_serv_publicos]
			  ,[Vlr_gasto_serv_publicos]
			  ,[Ind_gasto_celular]
			  ,[Vlr_gasto_celular]
			  ,[Ind_gasto_arriendo]
			  ,[Vlr_gasto_arriendo]
			  ,[Ind_gasto_otros]
			  ,[Vlr_gasto_otros]
			  ,[Vlr_total_gastos]
			  ,[Num_habita_vivienda]
			  ,[Ind_evento_inundacion]
			  ,[Num_evento_inundacion]
			  ,[Ind_evento_avalancha]
			  ,[Num_evento_avalancha]
			  ,[Ind_evento_terremoto]
			  ,[Num_evento_terremoto]
			  ,[Ind_evento_incendio]
			  ,[Num_evento_incendio]
			  ,[Ind_evento_vendaval]
			  ,[Num_evento_vendaval]
			  ,[Ind_evento_hundimiento]
			  ,[Num_evento_hundimiento]
			  ,[Num_personas_posibles]
			  ,[Num_personas_hogar]
			  ,isnull([res_visita2], [res_visita1]) [res_visita]
		into #hogares
		from [DAT].[CNS_HOGARES]
		where ML_Procesado is null

		create index ix__#hogares__num_ficha on #hogares (num_ficha)
		create index ix__#hogares__num_ficha__ide_hogar on #hogares (Num_ficha, Ide_hogar)

		declare @num_paquete int
		declare @cod_dpto varchar(2)
		declare @cod_mpio varchar(5)
		declare @num_ficha int
		declare @ide_hogar tinyint
		select top 1 @num_paquete = num_paquete, @cod_dpto = cod_dpto, @cod_mpio = cod_mpio, @num_ficha = num_ficha, @ide_hogar = ide_hogar from #hogares

		select
			   cast(max([Num_cuartos_exclusivos]) as float) [Num_cuartos_exclusivos_max]
			  ,cast(max([Num_cuartos_dormir]) as float) [Num_cuartos_dormir_max]
			  ,cast(max([Num_cuartos_unicos_dormir]) as float) [Num_cuartos_unicos_dormir_max]
			  ,cast(max([Num_dias_llega]) as float) [Num_dias_llega_max]
			  ,cast(max([Num_horas_llega]) as float) [Num_horas_llega_max]
			  ,cast(max([Vlr_gasto_alimento]) as float) [Vlr_gasto_alimento_max]
			  ,cast(max([Vlr_gasto_transporte]) as float) [Vlr_gasto_transporte_max]
			  ,cast(max([Vlr_gasto_educacion]) as float) [Vlr_gasto_educacion_max]
			  ,cast(max([Vlr_gasto_salud]) as float) [Vlr_gasto_salud_max]
			  ,cast(max([Vlr_gasto_serv_publicos]) as float) [Vlr_gasto_serv_publicos_max]
			  ,cast(max([Vlr_gasto_celular]) as float) [Vlr_gasto_celular_max]
			  ,cast(max([Vlr_gasto_arriendo]) as float) [Vlr_gasto_arriendo_max]
			  ,cast(max([Vlr_gasto_otros]) as float) [Vlr_gasto_otros_max]
			  ,cast(max([Vlr_total_gastos]) as float) [Vlr_total_gastos_max]
			  ,cast(max([Num_evento_inundacion]) as float) [Num_evento_inundacion_max]
			  ,cast(max([Num_evento_avalancha]) as float) [Num_evento_avalancha_max]
			  ,cast(max([Num_evento_terremoto]) as float) [Num_evento_terremoto_max]
			  ,cast(max([Num_evento_incendio]) as float) [Num_evento_incendio_max]
			  ,cast(max([Num_evento_vendaval]) as float) [Num_evento_vendaval_max]
			  ,cast(max([Num_evento_hundimiento]) as float) [Num_evento_hundimiento_max]
			  ,cast(max([Num_personas_posibles]) as float) [Num_personas_posibles_max]
			  ,cast(max([Num_personas_hogar]) as float) [Num_personas_hogar_max]
		into #hogares_maxvals
		from [DAT].[CNS_HOGARES]
		where [cod_mpio] = @cod_mpio

		select
			 cast(max([Num_cuartos_vivienda]) as float) [Num_cuartos_vivienda_max]
			,cast(max([Num_hogares_vivienda]) as float) [Num_hogares_vivienda_max]
		into #viviendas_maxvals
		from [DAT].[CNS_VIVIENDAS]
		where [cod_mpio] = @cod_mpio

		select
			   h.[Cod_dpto]
			  ,h.[Cod_mpio]
			  ,h.[Num_ficha]
			  ,[Ide_hogar]
			  ,case when [Tip_vivienda] = 1 then 1 else 0 end [Tip_vivienda_1]
			  ,case when [Tip_vivienda] = 2 then 1 else 0 end [Tip_vivienda_2]
			  ,case when [Tip_vivienda] = 3 then 1 else 0 end [Tip_vivienda_3]
			  ,case when [Tip_vivienda] = 4 then 1 else 0 end [Tip_vivienda_4]
			  ,case when [Tip_vivienda] = 5 then 1 else 0 end [Tip_vivienda_5]
			  ,case when [Tip_mat_paredes] = 1 then 1 else 0 end [Tip_mat_paredes_1]
			  ,case when [Tip_mat_paredes] = 2 then 1 else 0 end [Tip_mat_paredes_2]
			  ,case when [Tip_mat_paredes] = 3 then 1 else 0 end [Tip_mat_paredes_3]
			  ,case when [Tip_mat_paredes] = 4 then 1 else 0 end [Tip_mat_paredes_4]
			  ,case when [Tip_mat_paredes] = 5 then 1 else 0 end [Tip_mat_paredes_5]
			  ,case when [Tip_mat_paredes] = 6 then 1 else 0 end [Tip_mat_paredes_6]
			  ,case when [Tip_mat_paredes] = 7 then 1 else 0 end [Tip_mat_paredes_7]
			  ,case when [Tip_mat_paredes] = 0 then 1 else 0 end [Tip_mat_paredes_0]
			  ,case when [Tip_mat_pisos] = 1 then 1 else 0 end [Tip_mat_pisos_1]
			  ,case when [Tip_mat_pisos] = 2 then 1 else 0 end [Tip_mat_pisos_2]
			  ,case when [Tip_mat_pisos] = 3 then 1 else 0 end [Tip_mat_pisos_3]
			  ,case when [Tip_mat_pisos] = 4 then 1 else 0 end [Tip_mat_pisos_4]
			  ,case when [Tip_mat_pisos] = 5 then 1 else 0 end [Tip_mat_pisos_5]
			  ,case when [Tip_mat_pisos] = 6 then 1 else 0 end [Tip_mat_pisos_6]
			  ,case when [Ind_tiene_energia] = 1 then 1 else 0 end [Ind_tiene_energia_1]
			  ,case when [Ind_tiene_energia] = 2 then 1 else 0 end [Ind_tiene_energia_2]
			  ,case when [Tip_estrato_energia] = 1 then 1 else 0 end [Tip_estrato_energia_1]
			  ,case when [Tip_estrato_energia] = 2 then 1 else 0 end [Tip_estrato_energia_2]
			  ,case when [Ind_tiene_alcantarillado] = 1 then 1 else 0 end [Ind_tiene_alcantarillado_1]
			  ,case when [Ind_tiene_alcantarillado] = 2 then 1 else 0 end [Ind_tiene_alcantarillado_2]
			  ,case when [Ind_tiene_gas] = 1 then 1 else 0 end [Ind_tiene_gas_1]
			  ,case when [Ind_tiene_gas] = 2 then 1 else 0 end [Ind_tiene_gas_2]
			  ,case when [Ind_tiene_recoleccion] = 1 then 1 else 0 end [Ind_tiene_recoleccion_1]
			  ,case when [Ind_tiene_recoleccion] = 2 then 1 else 0 end [Ind_tiene_recoleccion_2]
			  ,case when [Ind_tiene_acueducto] = 1 then 1 else 0 end [Ind_tiene_acueducto_1]
			  ,case when [Ind_tiene_acueducto] = 2 then 1 else 0 end [Ind_tiene_acueducto_2]
			  ,case when [Tip_estrato_acueducto] = 1 then 1 else 0 end [Tip_estrato_acueducto_1]
			  ,case when [Tip_estrato_acueducto] = 2 then 1 else 0 end [Tip_estrato_acueducto_2]
			  ,[Num_cuartos_vivienda] / case when [Num_cuartos_vivienda_max] < 1 then 1 else [Num_cuartos_vivienda_max] end [Num_cuartos_vivienda_nor]
			  ,[Num_hogares_vivienda] / case when [Num_hogares_vivienda_max] < 1 then 1 else [Num_hogares_vivienda_max] end [Num_hogares_vivienda_nor]
			  ,case when [Tip_ocupa_vivienda] = 1 then 1 else 0 end [Tip_ocupa_vivienda_1]
			  ,case when [Tip_ocupa_vivienda] = 2 then 1 else 0 end [Tip_ocupa_vivienda_2]
			  ,case when [Tip_ocupa_vivienda] = 3 then 1 else 0 end [Tip_ocupa_vivienda_3]
			  ,case when [Tip_ocupa_vivienda] = 4 then 1 else 0 end [Tip_ocupa_vivienda_4]
			  ,case when [Tip_ocupa_vivienda] = 5 then 1 else 0 end [Tip_ocupa_vivienda_5]
			  ,[Num_cuartos_exclusivos] / case when [Num_cuartos_exclusivos_max] < 1 then 1 else [Num_cuartos_exclusivos_max] end [Num_cuartos_exclusivos_nor]
			  ,[Num_cuartos_dormir] / case when [Num_cuartos_dormir_max] < 1 then 1 else [Num_cuartos_dormir_max] end [Num_cuartos_dormir_nor]
			  ,[Num_cuartos_unicos_dormir] / case when [Num_cuartos_unicos_dormir_max] < 1 then 1 else [Num_cuartos_unicos_dormir_max] end [Num_cuartos_unicos_dormir_nor]
			  ,case when [Tip_sanitario] = 1 then 1 else 0 end [Tip_sanitario_1]
			  ,case when [Tip_sanitario] = 2 then 1 else 0 end [Tip_sanitario_2]
			  ,case when [Tip_sanitario] = 3 then 1 else 0 end [Tip_sanitario_3]
			  ,case when [Tip_sanitario] = 4 then 1 else 0 end [Tip_sanitario_4]
			  ,case when [Tip_sanitario] = 5 then 1 else 0 end [Tip_sanitario_5]
			  ,case when [Tip_ubi_sanitario] = 1 then 1 else 0 end [Tip_ubi_sanitario_1]
			  ,case when [Tip_ubi_sanitario] = 2 then 1 else 0 end [Tip_ubi_sanitario_2]
			  ,case when [Tip_uso_sanitario] = 1 then 1 else 0 end [Tip_uso_sanitario_1]
			  ,case when [Tip_uso_sanitario] = 2 then 1 else 0 end [Tip_uso_sanitario_2]
			  ,case when [Tip_uso_sanitario] = 3 then 1 else 0 end [Tip_uso_sanitario_3]
			  ,case when [Tip_origen_agua] = 1 then 1 else 0 end [Tip_origen_agua_1]
			  ,case when [Tip_origen_agua] = 2 then 1 else 0 end [Tip_origen_agua_2]
			  ,case when [Tip_origen_agua] = 3 then 1 else 0 end [Tip_origen_agua_3]
			  ,case when [Tip_origen_agua] = 4 then 1 else 0 end [Tip_origen_agua_4]
			  ,case when [Tip_origen_agua] = 5 then 1 else 0 end [Tip_origen_agua_5]
			  ,case when [Tip_origen_agua] = 6 then 1 else 0 end [Tip_origen_agua_6]
			  ,case when [Tip_origen_agua] = 7 then 1 else 0 end [Tip_origen_agua_7]
			  ,case when [Tip_origen_agua] = 8 then 1 else 0 end [Tip_origen_agua_8]
			  ,case when [Tip_origen_agua] = 9 then 1 else 0 end [Tip_origen_agua_9]
			  ,case when [Ind_agua_llega_7dias] = 1 then 1 else 0 end [Ind_agua_llega_7dias_1]
			  ,case when [Ind_agua_llega_7dias] = 2 then 1 else 0 end [Ind_agua_llega_7dias_2]
			  ,[Num_dias_llega] / case when [Num_dias_llega_max] < 1 then 1 else [Num_dias_llega_max] end [Num_dias_llega_nor]
			  ,case when [Ind_agua_llega_24horas] = 1 then 1 else 0 end [Ind_agua_llega_24horas_1]
			  ,case when [Ind_agua_llega_24horas] = 1 then 1 else 0 end [Ind_agua_llega_24horas_2]
			  ,[Num_horas_llega] / case when [Num_horas_llega_max] < 1 then 1 else [Num_horas_llega_max] end [Num_horas_llega_nor]
			  ,case when [Tip_uso_agua_beber] = 1 then 1 else 0 end [Tip_uso_agua_beber_1]
			  ,case when [Tip_uso_agua_beber] = 2 then 1 else 0 end [Tip_uso_agua_beber_2]
			  ,case when [Tip_uso_agua_beber] = 3 then 1 else 0 end [Tip_uso_agua_beber_3]
			  ,case when [Tip_uso_agua_beber] = 4 then 1 else 0 end [Tip_uso_agua_beber_4]
			  ,case when [Tip_uso_agua_beber] = 5 then 1 else 0 end [Tip_uso_agua_beber_5]
			  ,case when [Tip_uso_agua_beber] = 6 then 1 else 0 end [Tip_uso_agua_beber_6]
			  ,case when [Tip_elimina_basura] = 1 then 1 else 0 end [Tip_elimina_basura_1]
			  ,case when [Tip_elimina_basura] = 2 then 1 else 0 end [Tip_elimina_basura_2]
			  ,case when [Tip_elimina_basura] = 3 then 1 else 0 end [Tip_elimina_basura_3]
			  ,case when [Tip_elimina_basura] = 4 then 1 else 0 end [Tip_elimina_basura_4]
			  ,case when [Tip_elimina_basura] = 5 then 1 else 0 end [Tip_elimina_basura_5]
			  ,case when [Tip_elimina_basura] = 6 then 1 else 0 end [Tip_elimina_basura_6]
			  ,case when [Tip_elimina_basura] = 7 then 1 else 0 end [Tip_elimina_basura_7]
			  ,case when [Ind_tiene_cocina] = 1 then 1 else 0 end [Ind_tiene_cocina_1]
			  ,case when [Ind_tiene_cocina] = 2 then 1 else 0 end [Ind_tiene_cocina_2]
			  ,case when [Tip_prepara_alimentos] = 1 then 1 else 0 end [Tip_prepara_alimentos_1]
			  ,case when [Tip_prepara_alimentos] = 2 then 1 else 0 end [Tip_prepara_alimentos_2]
			  ,case when [Tip_prepara_alimentos] = 3 then 1 else 0 end [Tip_prepara_alimentos_3]
			  ,case when [Tip_prepara_alimentos] = 4 then 1 else 0 end [Tip_prepara_alimentos_4]
			  ,case when [Tip_prepara_alimentos] = 5 then 1 else 0 end [Tip_prepara_alimentos_5]
			  ,case when [Tip_uso_cocina] = 1 then 1 else 0 end [Tip_uso_cocina_1]
			  ,case when [Tip_uso_cocina] = 2 then 1 else 0 end [Tip_uso_cocina_2]
			  ,case when [Tip_uso_cocina] = 3 then 1 else 0 end [Tip_uso_cocina_3]
			  ,case when [Tip_energia_cocina] = 1 then 1 else 0 end [Tip_energia_cocina_1]
			  ,case when [Tip_energia_cocina] = 2 then 1 else 0 end [Tip_energia_cocina_2]
			  ,case when [Tip_energia_cocina] = 3 then 1 else 0 end [Tip_energia_cocina_3]
			  ,case when [Tip_energia_cocina] = 4 then 1 else 0 end [Tip_energia_cocina_4]
			  ,case when [Tip_energia_cocina] = 5 then 1 else 0 end [Tip_energia_cocina_5]
			  ,case when [Tip_energia_cocina] = 6 then 1 else 0 end [Tip_energia_cocina_6]
			  ,case when [Tip_energia_cocina] = 7 then 1 else 0 end [Tip_energia_cocina_7]
			  ,case when [Ind_tiene_nevera] = 1 then 1 else 0 end [Ind_tiene_nevera_1]
			  ,case when [Ind_tiene_nevera] = 2 then 1 else 0 end [Ind_tiene_nevera_2]
			  ,case when [Ind_tiene_lavadora] = 1 then 1 else 0 end [Ind_tiene_lavadora_1]
			  ,case when [Ind_tiene_lavadora] = 2 then 1 else 0 end [Ind_tiene_lavadora_2]
			  ,case when [Ind_tiene_pc] = 1 then 1 else 0 end [Ind_tiene_pc_1]
			  ,case when [Ind_tiene_pc] = 2 then 1 else 0 end [Ind_tiene_pc_2]
			  ,case when [Ind_tiene_internet] = 1 then 1 else 0 end [Ind_tiene_internet_1]
			  ,case when [Ind_tiene_internet] = 2 then 1 else 0 end [Ind_tiene_internet_2]
			  ,case when [Ind_tiene_moto] = 1 then 1 else 0 end [Ind_tiene_moto_1]
			  ,case when [Ind_tiene_moto] = 2 then 1 else 0 end [Ind_tiene_moto_2]
			  ,case when [Ind_tiene_tractor] = 1 then 1 else 0 end [Ind_tiene_tractor_1]
			  ,case when [Ind_tiene_tractor] = 2 then 1 else 0 end [Ind_tiene_tractor_2]
			  ,case when [Ind_tiene_carro] = 1 then 1 else 0 end [Ind_tiene_carro_1]
			  ,case when [Ind_tiene_carro] = 2 then 1 else 0 end [Ind_tiene_carro_2]
			  ,case when [Ind_tiene_bien_raiz] = 1 then 1 else 0 end [Ind_tiene_bien_raiz_1]
			  ,case when [Ind_tiene_bien_raiz] = 2 then 1 else 0 end [Ind_tiene_bien_raiz_2]
			  ,case when [Ind_gasto_alimento] = 1 then 1 else 0 end [Ind_gasto_alimento_1]
			  ,case when [Ind_gasto_alimento] = 2 then 1 else 0 end [Ind_gasto_alimento_2]
			  ,case when [Ind_gasto_alimento] = 9 then 1 else 0 end [Ind_gasto_alimento_9]
			  ,[Vlr_gasto_alimento] / case when [Vlr_gasto_alimento_max] < 1 then 1 else [Vlr_gasto_alimento_max] end [Vlr_gasto_alimento_nor]
			  ,case when [Ind_gasto_transporte] = 1 then 1 else 0 end [Ind_gasto_transporte_1]
			  ,case when [Ind_gasto_transporte] = 2 then 1 else 0 end [Ind_gasto_transporte_2]
			  ,case when [Ind_gasto_transporte] = 9 then 1 else 0 end [Ind_gasto_transporte_9]
			  ,[Vlr_gasto_transporte] / case when [Vlr_gasto_transporte_max] < 1 then 1 else [Vlr_gasto_transporte_max] end [Vlr_gasto_transporte_nor]
			  ,case when [Ind_gasto_educacion] = 1 then 1 else 0 end [Ind_gasto_educacion_1]
			  ,case when [Ind_gasto_educacion] = 2 then 1 else 0 end [Ind_gasto_educacion_2]
			  ,case when [Ind_gasto_educacion] = 9 then 1 else 0 end [Ind_gasto_educacion_9]
			  ,[Vlr_gasto_educacion] / case when [Vlr_gasto_educacion_max] < 1 then 1 else [Vlr_gasto_educacion_max] end [Vlr_gasto_educacion_nor]
			  ,case when [Ind_gasto_salud] = 1 then 1 else 0 end [Ind_gasto_salud_1]
			  ,case when [Ind_gasto_salud] = 2 then 1 else 0 end [Ind_gasto_salud_2]
			  ,case when [Ind_gasto_salud] = 9 then 1 else 0 end [Ind_gasto_salud_9]
			  ,[Vlr_gasto_salud] / case when [Vlr_gasto_salud_max] < 1 then 1 else [Vlr_gasto_salud_max] end [Vlr_gasto_salud_nor]
			  ,case when [Ind_gasto_serv_publicos] = 1 then 1 else 0 end [Ind_gasto_serv_publicos_1]
			  ,case when [Ind_gasto_serv_publicos] = 2 then 1 else 0 end [Ind_gasto_serv_publicos_2]
			  ,case when [Ind_gasto_serv_publicos] = 9 then 1 else 0 end [Ind_gasto_serv_publicos_9]
			  ,[Vlr_gasto_serv_publicos] / case when [Vlr_gasto_serv_publicos_max] < 1 then 1 else [Vlr_gasto_serv_publicos_max] end [Vlr_gasto_serv_publicos_nor]
			  ,case when [Ind_gasto_celular] = 1 then 1 else 0 end [Ind_gasto_celular_1]
			  ,case when [Ind_gasto_celular] = 2 then 1 else 0 end [Ind_gasto_celular_2]
			  ,case when [Ind_gasto_celular] = 9 then 1 else 0 end [Ind_gasto_celular_9]
			  ,[Vlr_gasto_celular] / case when [Vlr_gasto_celular_max] < 1 then 1 else [Vlr_gasto_celular_max] end [Vlr_gasto_celular_nor]
			  ,case when [Ind_gasto_arriendo] = 1 then 1 else 0 end [Ind_gasto_arriendo_1]
			  ,case when [Ind_gasto_arriendo] = 2 then 1 else 0 end [Ind_gasto_arriendo_2]
			  ,case when [Ind_gasto_arriendo] = 9 then 1 else 0 end [Ind_gasto_arriendo_9]
			  ,[Vlr_gasto_arriendo] / case when [Vlr_gasto_arriendo_max] < 1 then 1 else [Vlr_gasto_arriendo_max] end [Vlr_gasto_arriendo_nor]
			  ,case when [Ind_gasto_otros] = 1 then 1 else 0 end [Ind_gasto_otros_1]
			  ,case when [Ind_gasto_otros] = 2 then 1 else 0 end [Ind_gasto_otros_2]
			  ,case when [Ind_gasto_otros] = 9 then 1 else 0 end [Ind_gasto_otros_9]
			  ,[Vlr_gasto_otros] / case when [Vlr_gasto_otros_max] < 1 then 1 else [Vlr_gasto_otros_max] end [Vlr_gasto_otros_nor]
			  ,[Vlr_total_gastos] / case when [Vlr_total_gastos_max] < 1 then 1 else [Vlr_total_gastos_max] end [Vlr_total_gastos_nor]
			  ,case when [Num_habita_vivienda] = 1 then 1 else 0 end [Num_habita_vivienda_1]
			  ,case when [Num_habita_vivienda] = 2 then 1 else 0 end [Num_habita_vivienda_2]
			  ,case when [Num_habita_vivienda] = 3 then 1 else 0 end [Num_habita_vivienda_3]
			  ,case when [Num_habita_vivienda] = 4 then 1 else 0 end [Num_habita_vivienda_4]
			  ,case when [Ind_evento_inundacion] = 1 then 1 else 0 end [Ind_evento_inundacion_1]
			  ,case when [Ind_evento_inundacion] = 2 then 1 else 0 end [Ind_evento_inundacion_2]
			  ,[Num_evento_inundacion] / case when [Num_evento_inundacion_max] < 1 then 1 else [Num_evento_inundacion_max] end [Num_evento_inundacion_nor]
			  ,case when [Ind_evento_avalancha] = 1 then 1 else 0 end [Ind_evento_avalancha_1]
			  ,case when [Ind_evento_avalancha] = 2 then 1 else 0 end [Ind_evento_avalancha_2]
			  ,[Num_evento_avalancha] / case when [Num_evento_avalancha_max] < 1 then 1 else [Num_evento_avalancha_max] end [Num_evento_avalancha_nor]
			  ,case when [Ind_evento_terremoto] = 1 then 1 else 0 end [Ind_evento_terremoto_1]
			  ,case when [Ind_evento_terremoto] = 2 then 1 else 0 end [Ind_evento_terremoto_2]
			  ,[Num_evento_terremoto] / case when [Num_evento_terremoto_max] < 1 then 1 else [Num_evento_terremoto_max] end [Num_evento_terremoto_nor]
			  ,case when [Ind_evento_incendio] = 1 then 1 else 0 end [Ind_evento_incendio_1]
			  ,case when [Ind_evento_incendio] = 2 then 1 else 0 end [Ind_evento_incendio_2]
			  ,[Num_evento_incendio] / case when [Num_evento_incendio_max] < 1 then 1 else [Num_evento_incendio_max] end [Num_evento_incendio_nor]
			  ,case when [Ind_evento_vendaval] = 1 then 1 else 0 end [Ind_evento_vendaval_1]
			  ,case when [Ind_evento_vendaval] = 2 then 1 else 0 end [Ind_evento_vendaval_2]
			  ,[Num_evento_vendaval] / case when [Num_evento_vendaval_max] < 1 then 1 else [Num_evento_vendaval_max] end [Num_evento_vendaval_nor]
			  ,case when [Ind_evento_hundimiento] = 1 then 1 else 0 end [Ind_evento_hundimiento_1]
			  ,case when [Ind_evento_hundimiento] = 2 then 1 else 0 end [Ind_evento_hundimiento_2]
			  ,[Num_evento_hundimiento] / case when [Num_evento_hundimiento_max] < 1 then 1 else [Num_evento_hundimiento_max] end [Num_evento_hundimiento_nor]
			  ,[Num_personas_posibles] / case when [Num_personas_posibles_max] < 1 then 1 else [Num_personas_posibles_max] end [Num_personas_posibles_nor]
			  ,[Num_personas_hogar] / case when [Num_personas_hogar_max] < 1 then 1 else [Num_personas_hogar_max] end [Num_personas_hogar_nor]
			  ,case when [res_visita] = 1 then 1 else 0 end [res_visita_1]
			  ,case when [res_visita] = 2 then 1 else 0 end [res_visita_2]
			  ,case when [res_visita] = 3 then 1 else 0 end [res_visita_3]
			  ,case when [res_visita] = 4 then 1 else 0 end [res_visita_4]
			  ,case when [res_visita] = 5 then 1 else 0 end [res_visita_5]
			  ,case when [res_visita] = 6 then 1 else 0 end [res_visita_6]
			  ,case when [res_visita] = 7 then 1 else 0 end [res_visita_7]
		into #inputs
		from #hogares h
		inner join [DAT].[CNS_VIVIENDAS] v
			on h.Num_ficha = v.Num_ficha
		inner join #hogares_maxvals hmv
			on 1 = 1
		inner join #viviendas_maxvals vmv
			on 1 = 1

		declare @weights_exist int
		select @weights_exist = count(*) from [ML].[CNS_HogarViviendaNeurons] where Cluster = @cod_mpio

		if @weights_exist < 1 begin
			INSERT INTO [ML].[CNS_HogarViviendaNeurons]
			   ([Cluster]
			   ,[Ind_agua_llega_24horas_1]
			   ,[Ind_agua_llega_24horas_2]
			   ,[Ind_agua_llega_7dias_1]
			   ,[Ind_agua_llega_7dias_2]
			   ,[Ind_evento_avalancha_1]
			   ,[Ind_evento_avalancha_2]
			   ,[Ind_evento_hundimiento_1]
			   ,[Ind_evento_hundimiento_2]
			   ,[Ind_evento_incendio_1]
			   ,[Ind_evento_incendio_2]
			   ,[Ind_evento_inundacion_1]
			   ,[Ind_evento_inundacion_2]
			   ,[Ind_evento_terremoto_1]
			   ,[Ind_evento_terremoto_2]
			   ,[Ind_evento_vendaval_1]
			   ,[Ind_evento_vendaval_2]
			   ,[Ind_gasto_alimento_1]
			   ,[Ind_gasto_alimento_2]
			   ,[Ind_gasto_alimento_9]
			   ,[Ind_gasto_arriendo_1]
			   ,[Ind_gasto_arriendo_2]
			   ,[Ind_gasto_arriendo_9]
			   ,[Ind_gasto_celular_1]
			   ,[Ind_gasto_celular_2]
			   ,[Ind_gasto_celular_9]
			   ,[Ind_gasto_educacion_1]
			   ,[Ind_gasto_educacion_2]
			   ,[Ind_gasto_educacion_9]
			   ,[Ind_gasto_otros_1]
			   ,[Ind_gasto_otros_2]
			   ,[Ind_gasto_otros_9]
			   ,[Ind_gasto_salud_1]
			   ,[Ind_gasto_salud_2]
			   ,[Ind_gasto_salud_9]
			   ,[Ind_gasto_serv_publicos_1]
			   ,[Ind_gasto_serv_publicos_2]
			   ,[Ind_gasto_serv_publicos_9]
			   ,[Ind_gasto_transporte_1]
			   ,[Ind_gasto_transporte_2]
			   ,[Ind_gasto_transporte_9]
			   ,[Ind_tiene_acueducto_1]
			   ,[Ind_tiene_acueducto_2]
			   ,[Ind_tiene_alcantarillado_1]
			   ,[Ind_tiene_alcantarillado_2]
			   ,[Ind_tiene_bien_raiz_1]
			   ,[Ind_tiene_bien_raiz_2]
			   ,[Ind_tiene_carro_1]
			   ,[Ind_tiene_carro_2]
			   ,[Ind_tiene_cocina_1]
			   ,[Ind_tiene_cocina_2]
			   ,[Ind_tiene_energia_1]
			   ,[Ind_tiene_energia_2]
			   ,[Ind_tiene_gas_1]
			   ,[Ind_tiene_gas_2]
			   ,[Ind_tiene_internet_1]
			   ,[Ind_tiene_internet_2]
			   ,[Ind_tiene_lavadora_1]
			   ,[Ind_tiene_lavadora_2]
			   ,[Ind_tiene_moto_1]
			   ,[Ind_tiene_moto_2]
			   ,[Ind_tiene_nevera_1]
			   ,[Ind_tiene_nevera_2]
			   ,[Ind_tiene_pc_1]
			   ,[Ind_tiene_pc_2]
			   ,[Ind_tiene_recoleccion_1]
			   ,[Ind_tiene_recoleccion_2]
			   ,[Ind_tiene_tractor_1]
			   ,[Ind_tiene_tractor_2]
			   ,[Num_cuartos_dormir_nor]
			   ,[Num_cuartos_exclusivos_nor]
			   ,[Num_cuartos_unicos_dormir_nor]
			   ,[Num_cuartos_vivienda_nor]
			   ,[Num_dias_llega_nor]
			   ,[Num_evento_avalancha_nor]
			   ,[Num_evento_hundimiento_nor]
			   ,[Num_evento_incendio_nor]
			   ,[Num_evento_inundacion_nor]
			   ,[Num_evento_terremoto_nor]
			   ,[Num_evento_vendaval_nor]
			   ,[Num_habita_vivienda_1]
			   ,[Num_habita_vivienda_2]
			   ,[Num_habita_vivienda_3]
			   ,[Num_habita_vivienda_4]
			   ,[Num_hogares_vivienda_nor]
			   ,[Num_horas_llega_nor]
			   ,[Num_personas_hogar_nor]
			   ,[Num_personas_posibles_nor]
			   ,[res_visita_1]
			   ,[res_visita_2]
			   ,[res_visita_3]
			   ,[res_visita_4]
			   ,[res_visita_5]
			   ,[res_visita_6]
			   ,[res_visita_7]
			   ,[Tip_elimina_basura_1]
			   ,[Tip_elimina_basura_2]
			   ,[Tip_elimina_basura_3]
			   ,[Tip_elimina_basura_4]
			   ,[Tip_elimina_basura_5]
			   ,[Tip_elimina_basura_6]
			   ,[Tip_elimina_basura_7]
			   ,[Tip_energia_cocina_1]
			   ,[Tip_energia_cocina_2]
			   ,[Tip_energia_cocina_3]
			   ,[Tip_energia_cocina_4]
			   ,[Tip_energia_cocina_5]
			   ,[Tip_energia_cocina_6]
			   ,[Tip_energia_cocina_7]
			   ,[Tip_estrato_acueducto_1]
			   ,[Tip_estrato_acueducto_2]
			   ,[Tip_estrato_energia_1]
			   ,[Tip_estrato_energia_2]
			   ,[Tip_mat_paredes_0]
			   ,[Tip_mat_paredes_1]
			   ,[Tip_mat_paredes_2]
			   ,[Tip_mat_paredes_3]
			   ,[Tip_mat_paredes_4]
			   ,[Tip_mat_paredes_5]
			   ,[Tip_mat_paredes_6]
			   ,[Tip_mat_paredes_7]
			   ,[Tip_mat_pisos_1]
			   ,[Tip_mat_pisos_2]
			   ,[Tip_mat_pisos_3]
			   ,[Tip_mat_pisos_4]
			   ,[Tip_mat_pisos_5]
			   ,[Tip_mat_pisos_6]
			   ,[Tip_ocupa_vivienda_1]
			   ,[Tip_ocupa_vivienda_2]
			   ,[Tip_ocupa_vivienda_3]
			   ,[Tip_ocupa_vivienda_4]
			   ,[Tip_ocupa_vivienda_5]
			   ,[Tip_origen_agua_1]
			   ,[Tip_origen_agua_2]
			   ,[Tip_origen_agua_3]
			   ,[Tip_origen_agua_4]
			   ,[Tip_origen_agua_5]
			   ,[Tip_origen_agua_6]
			   ,[Tip_origen_agua_7]
			   ,[Tip_origen_agua_8]
			   ,[Tip_origen_agua_9]
			   ,[Tip_prepara_alimentos_1]
			   ,[Tip_prepara_alimentos_2]
			   ,[Tip_prepara_alimentos_3]
			   ,[Tip_prepara_alimentos_4]
			   ,[Tip_prepara_alimentos_5]
			   ,[Tip_sanitario_1]
			   ,[Tip_sanitario_2]
			   ,[Tip_sanitario_3]
			   ,[Tip_sanitario_4]
			   ,[Tip_sanitario_5]
			   ,[Tip_ubi_sanitario_1]
			   ,[Tip_ubi_sanitario_2]
			   ,[Tip_uso_agua_beber_1]
			   ,[Tip_uso_agua_beber_2]
			   ,[Tip_uso_agua_beber_3]
			   ,[Tip_uso_agua_beber_4]
			   ,[Tip_uso_agua_beber_5]
			   ,[Tip_uso_agua_beber_6]
			   ,[Tip_uso_cocina_1]
			   ,[Tip_uso_cocina_2]
			   ,[Tip_uso_cocina_3]
			   ,[Tip_uso_sanitario_1]
			   ,[Tip_uso_sanitario_2]
			   ,[Tip_uso_sanitario_3]
			   ,[Tip_vivienda_1]
			   ,[Tip_vivienda_2]
			   ,[Tip_vivienda_3]
			   ,[Tip_vivienda_4]
			   ,[Tip_vivienda_5]
			   ,[Vlr_gasto_alimento_nor]
			   ,[Vlr_gasto_arriendo_nor]
			   ,[Vlr_gasto_celular_nor]
			   ,[Vlr_gasto_educacion_nor]
			   ,[Vlr_gasto_otros_nor]
			   ,[Vlr_gasto_salud_nor]
			   ,[Vlr_gasto_serv_publicos_nor]
			   ,[Vlr_gasto_transporte_nor]
			   ,[Vlr_total_gastos_nor])
		 VALUES (
			   @cod_mpio,
			   0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5
		)
		end

		select
			[Ind_agua_llega_24horas_1]
			,[Ind_agua_llega_24horas_2]
			,[Ind_agua_llega_7dias_1]
			,[Ind_agua_llega_7dias_2]
			,[Ind_evento_avalancha_1]
			,[Ind_evento_avalancha_2]
			,[Ind_evento_hundimiento_1]
			,[Ind_evento_hundimiento_2]
			,[Ind_evento_incendio_1]
			,[Ind_evento_incendio_2]
			,[Ind_evento_inundacion_1]
			,[Ind_evento_inundacion_2]
			,[Ind_evento_terremoto_1]
			,[Ind_evento_terremoto_2]
			,[Ind_evento_vendaval_1]
			,[Ind_evento_vendaval_2]
			,[Ind_gasto_alimento_1]
			,[Ind_gasto_alimento_2]
			,[Ind_gasto_alimento_9]
			,[Ind_gasto_arriendo_1]
			,[Ind_gasto_arriendo_2]
			,[Ind_gasto_arriendo_9]
			,[Ind_gasto_celular_1]
			,[Ind_gasto_celular_2]
			,[Ind_gasto_celular_9]
			,[Ind_gasto_educacion_1]
			,[Ind_gasto_educacion_2]
			,[Ind_gasto_educacion_9]
			,[Ind_gasto_otros_1]
			,[Ind_gasto_otros_2]
			,[Ind_gasto_otros_9]
			,[Ind_gasto_salud_1]
			,[Ind_gasto_salud_2]
			,[Ind_gasto_salud_9]
			,[Ind_gasto_serv_publicos_1]
			,[Ind_gasto_serv_publicos_2]
			,[Ind_gasto_serv_publicos_9]
			,[Ind_gasto_transporte_1]
			,[Ind_gasto_transporte_2]
			,[Ind_gasto_transporte_9]
			,[Ind_tiene_acueducto_1]
			,[Ind_tiene_acueducto_2]
			,[Ind_tiene_alcantarillado_1]
			,[Ind_tiene_alcantarillado_2]
			,[Ind_tiene_bien_raiz_1]
			,[Ind_tiene_bien_raiz_2]
			,[Ind_tiene_carro_1]
			,[Ind_tiene_carro_2]
			,[Ind_tiene_cocina_1]
			,[Ind_tiene_cocina_2]
			,[Ind_tiene_energia_1]
			,[Ind_tiene_energia_2]
			,[Ind_tiene_gas_1]
			,[Ind_tiene_gas_2]
			,[Ind_tiene_internet_1]
			,[Ind_tiene_internet_2]
			,[Ind_tiene_lavadora_1]
			,[Ind_tiene_lavadora_2]
			,[Ind_tiene_moto_1]
			,[Ind_tiene_moto_2]
			,[Ind_tiene_nevera_1]
			,[Ind_tiene_nevera_2]
			,[Ind_tiene_pc_1]
			,[Ind_tiene_pc_2]
			,[Ind_tiene_recoleccion_1]
			,[Ind_tiene_recoleccion_2]
			,[Ind_tiene_tractor_1]
			,[Ind_tiene_tractor_2]
			,[Num_cuartos_dormir_nor]
			,[Num_cuartos_exclusivos_nor]
			,[Num_cuartos_unicos_dormir_nor]
			,[Num_cuartos_vivienda_nor]
			,[Num_dias_llega_nor]
			,[Num_evento_avalancha_nor]
			,[Num_evento_hundimiento_nor]
			,[Num_evento_incendio_nor]
			,[Num_evento_inundacion_nor]
			,[Num_evento_terremoto_nor]
			,[Num_evento_vendaval_nor]
			,[Num_habita_vivienda_1]
			,[Num_habita_vivienda_2]
			,[Num_habita_vivienda_3]
			,[Num_habita_vivienda_4]
			,[Num_hogares_vivienda_nor]
			,[Num_horas_llega_nor]
			,[Num_personas_hogar_nor]
			,[Num_personas_posibles_nor]
			,[res_visita_1]
			,[res_visita_2]
			,[res_visita_3]
			,[res_visita_4]
			,[res_visita_5]
			,[res_visita_6]
			,[res_visita_7]
			,[Tip_elimina_basura_1]
			,[Tip_elimina_basura_2]
			,[Tip_elimina_basura_3]
			,[Tip_elimina_basura_4]
			,[Tip_elimina_basura_5]
			,[Tip_elimina_basura_6]
			,[Tip_elimina_basura_7]
			,[Tip_energia_cocina_1]
			,[Tip_energia_cocina_2]
			,[Tip_energia_cocina_3]
			,[Tip_energia_cocina_4]
			,[Tip_energia_cocina_5]
			,[Tip_energia_cocina_6]
			,[Tip_energia_cocina_7]
			,[Tip_estrato_acueducto_1]
			,[Tip_estrato_acueducto_2]
			,[Tip_estrato_energia_1]
			,[Tip_estrato_energia_2]
			,[Tip_mat_paredes_0]
			,[Tip_mat_paredes_1]
			,[Tip_mat_paredes_2]
			,[Tip_mat_paredes_3]
			,[Tip_mat_paredes_4]
			,[Tip_mat_paredes_5]
			,[Tip_mat_paredes_6]
			,[Tip_mat_paredes_7]
			,[Tip_mat_pisos_1]
			,[Tip_mat_pisos_2]
			,[Tip_mat_pisos_3]
			,[Tip_mat_pisos_4]
			,[Tip_mat_pisos_5]
			,[Tip_mat_pisos_6]
			,[Tip_ocupa_vivienda_1]
			,[Tip_ocupa_vivienda_2]
			,[Tip_ocupa_vivienda_3]
			,[Tip_ocupa_vivienda_4]
			,[Tip_ocupa_vivienda_5]
			,[Tip_origen_agua_1]
			,[Tip_origen_agua_2]
			,[Tip_origen_agua_3]
			,[Tip_origen_agua_4]
			,[Tip_origen_agua_5]
			,[Tip_origen_agua_6]
			,[Tip_origen_agua_7]
			,[Tip_origen_agua_8]
			,[Tip_origen_agua_9]
			,[Tip_prepara_alimentos_1]
			,[Tip_prepara_alimentos_2]
			,[Tip_prepara_alimentos_3]
			,[Tip_prepara_alimentos_4]
			,[Tip_prepara_alimentos_5]
			,[Tip_sanitario_1]
			,[Tip_sanitario_2]
			,[Tip_sanitario_3]
			,[Tip_sanitario_4]
			,[Tip_sanitario_5]
			,[Tip_ubi_sanitario_1]
			,[Tip_ubi_sanitario_2]
			,[Tip_uso_agua_beber_1]
			,[Tip_uso_agua_beber_2]
			,[Tip_uso_agua_beber_3]
			,[Tip_uso_agua_beber_4]
			,[Tip_uso_agua_beber_5]
			,[Tip_uso_agua_beber_6]
			,[Tip_uso_cocina_1]
			,[Tip_uso_cocina_2]
			,[Tip_uso_cocina_3]
			,[Tip_uso_sanitario_1]
			,[Tip_uso_sanitario_2]
			,[Tip_uso_sanitario_3]
			,[Tip_vivienda_1]
			,[Tip_vivienda_2]
			,[Tip_vivienda_3]
			,[Tip_vivienda_4]
			,[Tip_vivienda_5]
			,[Vlr_gasto_alimento_nor]
			,[Vlr_gasto_arriendo_nor]
			,[Vlr_gasto_celular_nor]
			,[Vlr_gasto_educacion_nor]
			,[Vlr_gasto_otros_nor]
			,[Vlr_gasto_salud_nor]
			,[Vlr_gasto_serv_publicos_nor]
			,[Vlr_gasto_transporte_nor]
			,[Vlr_total_gastos_nor]
		into #weights
		from [ML].[CNS_HogarViviendaNeurons]
		where Cluster = @cod_mpio

		declare @currhv float
		select @currhv = sqrt(
			power(i.[Ind_agua_llega_24horas_1] * w.[Ind_agua_llega_24horas_1],2) + 
			power(i.[Ind_agua_llega_24horas_2] * w.[Ind_agua_llega_24horas_2],2) + 
			power(i.[Ind_agua_llega_7dias_1] * w.[Ind_agua_llega_7dias_1],2) + 
			power(i.[Ind_agua_llega_7dias_2] * w.[Ind_agua_llega_7dias_2],2) + 
			power(i.[Ind_evento_avalancha_1] * w.[Ind_evento_avalancha_1],2) + 
			power(i.[Ind_evento_avalancha_2] * w.[Ind_evento_avalancha_2],2) + 
			power(i.[Ind_evento_hundimiento_1] * w.[Ind_evento_hundimiento_1],2) + 
			power(i.[Ind_evento_hundimiento_2] * w.[Ind_evento_hundimiento_2],2) + 
			power(i.[Ind_evento_incendio_1] * w.[Ind_evento_incendio_1],2) + 
			power(i.[Ind_evento_incendio_2] * w.[Ind_evento_incendio_2],2) + 
			power(i.[Ind_evento_inundacion_1] * w.[Ind_evento_inundacion_1],2) + 
			power(i.[Ind_evento_inundacion_2] * w.[Ind_evento_inundacion_2],2) + 
			power(i.[Ind_evento_terremoto_1] * w.[Ind_evento_terremoto_1],2) + 
			power(i.[Ind_evento_terremoto_2] * w.[Ind_evento_terremoto_2],2) + 
			power(i.[Ind_evento_vendaval_1] * w.[Ind_evento_vendaval_1],2) + 
			power(i.[Ind_evento_vendaval_2] * w.[Ind_evento_vendaval_2],2) + 
			power(i.[Ind_gasto_alimento_1] * w.[Ind_gasto_alimento_1],2) + 
			power(i.[Ind_gasto_alimento_2] * w.[Ind_gasto_alimento_2],2) + 
			power(i.[Ind_gasto_alimento_9] * w.[Ind_gasto_alimento_9],2) + 
			power(i.[Ind_gasto_arriendo_1] * w.[Ind_gasto_arriendo_1],2) + 
			power(i.[Ind_gasto_arriendo_2] * w.[Ind_gasto_arriendo_2],2) + 
			power(i.[Ind_gasto_arriendo_9] * w.[Ind_gasto_arriendo_9],2) + 
			power(i.[Ind_gasto_celular_1] * w.[Ind_gasto_celular_1],2) + 
			power(i.[Ind_gasto_celular_2] * w.[Ind_gasto_celular_2],2) + 
			power(i.[Ind_gasto_celular_9] * w.[Ind_gasto_celular_9],2) + 
			power(i.[Ind_gasto_educacion_1] * w.[Ind_gasto_educacion_1],2) + 
			power(i.[Ind_gasto_educacion_2] * w.[Ind_gasto_educacion_2],2) + 
			power(i.[Ind_gasto_educacion_9] * w.[Ind_gasto_educacion_9],2) + 
			power(i.[Ind_gasto_otros_1] * w.[Ind_gasto_otros_1],2) + 
			power(i.[Ind_gasto_otros_2] * w.[Ind_gasto_otros_2],2) + 
			power(i.[Ind_gasto_otros_9] * w.[Ind_gasto_otros_9],2) + 
			power(i.[Ind_gasto_salud_1] * w.[Ind_gasto_salud_1],2) + 
			power(i.[Ind_gasto_salud_2] * w.[Ind_gasto_salud_2],2) + 
			power(i.[Ind_gasto_salud_9] * w.[Ind_gasto_salud_9],2) + 
			power(i.[Ind_gasto_serv_publicos_1] * w.[Ind_gasto_serv_publicos_1],2) + 
			power(i.[Ind_gasto_serv_publicos_2] * w.[Ind_gasto_serv_publicos_2],2) + 
			power(i.[Ind_gasto_serv_publicos_9] * w.[Ind_gasto_serv_publicos_9],2) + 
			power(i.[Ind_gasto_transporte_1] * w.[Ind_gasto_transporte_1],2) + 
			power(i.[Ind_gasto_transporte_2] * w.[Ind_gasto_transporte_2],2) + 
			power(i.[Ind_gasto_transporte_9] * w.[Ind_gasto_transporte_9],2) + 
			power(i.[Ind_tiene_acueducto_1] * w.[Ind_tiene_acueducto_1],2) + 
			power(i.[Ind_tiene_acueducto_2] * w.[Ind_tiene_acueducto_2],2) + 
			power(i.[Ind_tiene_alcantarillado_1] * w.[Ind_tiene_alcantarillado_1],2) + 
			power(i.[Ind_tiene_alcantarillado_2] * w.[Ind_tiene_alcantarillado_2],2) + 
			power(i.[Ind_tiene_bien_raiz_1] * w.[Ind_tiene_bien_raiz_1],2) + 
			power(i.[Ind_tiene_bien_raiz_2] * w.[Ind_tiene_bien_raiz_2],2) + 
			power(i.[Ind_tiene_carro_1] * w.[Ind_tiene_carro_1],2) + 
			power(i.[Ind_tiene_carro_2] * w.[Ind_tiene_carro_2],2) + 
			power(i.[Ind_tiene_cocina_1] * w.[Ind_tiene_cocina_1],2) + 
			power(i.[Ind_tiene_cocina_2] * w.[Ind_tiene_cocina_2],2) + 
			power(i.[Ind_tiene_energia_1] * w.[Ind_tiene_energia_1],2) + 
			power(i.[Ind_tiene_energia_2] * w.[Ind_tiene_energia_2],2) + 
			power(i.[Ind_tiene_gas_1] * w.[Ind_tiene_gas_1],2) + 
			power(i.[Ind_tiene_gas_2] * w.[Ind_tiene_gas_2],2) + 
			power(i.[Ind_tiene_internet_1] * w.[Ind_tiene_internet_1],2) + 
			power(i.[Ind_tiene_internet_2] * w.[Ind_tiene_internet_2],2) + 
			power(i.[Ind_tiene_lavadora_1] * w.[Ind_tiene_lavadora_1],2) + 
			power(i.[Ind_tiene_lavadora_2] * w.[Ind_tiene_lavadora_2],2) + 
			power(i.[Ind_tiene_moto_1] * w.[Ind_tiene_moto_1],2) + 
			power(i.[Ind_tiene_moto_2] * w.[Ind_tiene_moto_2],2) + 
			power(i.[Ind_tiene_nevera_1] * w.[Ind_tiene_nevera_1],2) + 
			power(i.[Ind_tiene_nevera_2] * w.[Ind_tiene_nevera_2],2) + 
			power(i.[Ind_tiene_pc_1] * w.[Ind_tiene_pc_1],2) + 
			power(i.[Ind_tiene_pc_2] * w.[Ind_tiene_pc_2],2) + 
			power(i.[Ind_tiene_recoleccion_1] * w.[Ind_tiene_recoleccion_1],2) + 
			power(i.[Ind_tiene_recoleccion_2] * w.[Ind_tiene_recoleccion_2],2) + 
			power(i.[Ind_tiene_tractor_1] * w.[Ind_tiene_tractor_1],2) + 
			power(i.[Ind_tiene_tractor_2] * w.[Ind_tiene_tractor_2],2) + 
			power(i.[Num_cuartos_dormir_nor] * w.[Num_cuartos_dormir_nor],2) + 
			power(i.[Num_cuartos_exclusivos_nor] * w.[Num_cuartos_exclusivos_nor],2) + 
			power(i.[Num_cuartos_unicos_dormir_nor] * w.[Num_cuartos_unicos_dormir_nor],2) + 
			power(i.[Num_cuartos_vivienda_nor] * w.[Num_cuartos_vivienda_nor],2) + 
			power(i.[Num_dias_llega_nor] * w.[Num_dias_llega_nor],2) + 
			power(i.[Num_evento_avalancha_nor] * w.[Num_evento_avalancha_nor],2) + 
			power(i.[Num_evento_hundimiento_nor] * w.[Num_evento_hundimiento_nor],2) + 
			power(i.[Num_evento_incendio_nor] * w.[Num_evento_incendio_nor],2) + 
			power(i.[Num_evento_inundacion_nor] * w.[Num_evento_inundacion_nor],2) + 
			power(i.[Num_evento_terremoto_nor] * w.[Num_evento_terremoto_nor],2) + 
			power(i.[Num_evento_vendaval_nor] * w.[Num_evento_vendaval_nor],2) + 
			power(i.[Num_habita_vivienda_1] * w.[Num_habita_vivienda_1],2) + 
			power(i.[Num_habita_vivienda_2] * w.[Num_habita_vivienda_2],2) + 
			power(i.[Num_habita_vivienda_3] * w.[Num_habita_vivienda_3],2) + 
			power(i.[Num_habita_vivienda_4] * w.[Num_habita_vivienda_4],2) + 
			power(i.[Num_hogares_vivienda_nor] * w.[Num_hogares_vivienda_nor],2) + 
			power(i.[Num_horas_llega_nor] * w.[Num_horas_llega_nor],2) + 
			power(i.[Num_personas_hogar_nor] * w.[Num_personas_hogar_nor],2) + 
			power(i.[Num_personas_posibles_nor] * w.[Num_personas_posibles_nor],2) + 
			power(i.[res_visita_1] * w.[res_visita_1],2) + 
			power(i.[res_visita_2] * w.[res_visita_2],2) + 
			power(i.[res_visita_3] * w.[res_visita_3],2) + 
			power(i.[res_visita_4] * w.[res_visita_4],2) + 
			power(i.[res_visita_5] * w.[res_visita_5],2) + 
			power(i.[res_visita_6] * w.[res_visita_6],2) + 
			power(i.[res_visita_7] * w.[res_visita_7],2) + 
			power(i.[Tip_elimina_basura_1] * w.[Tip_elimina_basura_1],2) + 
			power(i.[Tip_elimina_basura_2] * w.[Tip_elimina_basura_2],2) + 
			power(i.[Tip_elimina_basura_3] * w.[Tip_elimina_basura_3],2) + 
			power(i.[Tip_elimina_basura_4] * w.[Tip_elimina_basura_4],2) + 
			power(i.[Tip_elimina_basura_5] * w.[Tip_elimina_basura_5],2) + 
			power(i.[Tip_elimina_basura_6] * w.[Tip_elimina_basura_6],2) + 
			power(i.[Tip_elimina_basura_7] * w.[Tip_elimina_basura_7],2) + 
			power(i.[Tip_energia_cocina_1] * w.[Tip_energia_cocina_1],2) + 
			power(i.[Tip_energia_cocina_2] * w.[Tip_energia_cocina_2],2) + 
			power(i.[Tip_energia_cocina_3] * w.[Tip_energia_cocina_3],2) + 
			power(i.[Tip_energia_cocina_4] * w.[Tip_energia_cocina_4],2) + 
			power(i.[Tip_energia_cocina_5] * w.[Tip_energia_cocina_5],2) + 
			power(i.[Tip_energia_cocina_6] * w.[Tip_energia_cocina_6],2) + 
			power(i.[Tip_energia_cocina_7] * w.[Tip_energia_cocina_7],2) + 
			power(i.[Tip_estrato_acueducto_1] * w.[Tip_estrato_acueducto_1],2) + 
			power(i.[Tip_estrato_acueducto_2] * w.[Tip_estrato_acueducto_2],2) + 
			power(i.[Tip_estrato_energia_1] * w.[Tip_estrato_energia_1],2) + 
			power(i.[Tip_estrato_energia_2] * w.[Tip_estrato_energia_2],2) + 
			power(i.[Tip_mat_paredes_0] * w.[Tip_mat_paredes_0],2) + 
			power(i.[Tip_mat_paredes_1] * w.[Tip_mat_paredes_1],2) + 
			power(i.[Tip_mat_paredes_2] * w.[Tip_mat_paredes_2],2) + 
			power(i.[Tip_mat_paredes_3] * w.[Tip_mat_paredes_3],2) + 
			power(i.[Tip_mat_paredes_4] * w.[Tip_mat_paredes_4],2) + 
			power(i.[Tip_mat_paredes_5] * w.[Tip_mat_paredes_5],2) + 
			power(i.[Tip_mat_paredes_6] * w.[Tip_mat_paredes_6],2) + 
			power(i.[Tip_mat_paredes_7] * w.[Tip_mat_paredes_7],2) + 
			power(i.[Tip_mat_pisos_1] * w.[Tip_mat_pisos_1],2) + 
			power(i.[Tip_mat_pisos_2] * w.[Tip_mat_pisos_2],2) + 
			power(i.[Tip_mat_pisos_3] * w.[Tip_mat_pisos_3],2) + 
			power(i.[Tip_mat_pisos_4] * w.[Tip_mat_pisos_4],2) + 
			power(i.[Tip_mat_pisos_5] * w.[Tip_mat_pisos_5],2) + 
			power(i.[Tip_mat_pisos_6] * w.[Tip_mat_pisos_6],2) + 
			power(i.[Tip_ocupa_vivienda_1] * w.[Tip_ocupa_vivienda_1],2) + 
			power(i.[Tip_ocupa_vivienda_2] * w.[Tip_ocupa_vivienda_2],2) + 
			power(i.[Tip_ocupa_vivienda_3] * w.[Tip_ocupa_vivienda_3],2) + 
			power(i.[Tip_ocupa_vivienda_4] * w.[Tip_ocupa_vivienda_4],2) + 
			power(i.[Tip_ocupa_vivienda_5] * w.[Tip_ocupa_vivienda_5],2) + 
			power(i.[Tip_origen_agua_1] * w.[Tip_origen_agua_1],2) + 
			power(i.[Tip_origen_agua_2] * w.[Tip_origen_agua_2],2) + 
			power(i.[Tip_origen_agua_3] * w.[Tip_origen_agua_3],2) + 
			power(i.[Tip_origen_agua_4] * w.[Tip_origen_agua_4],2) + 
			power(i.[Tip_origen_agua_5] * w.[Tip_origen_agua_5],2) + 
			power(i.[Tip_origen_agua_6] * w.[Tip_origen_agua_6],2) + 
			power(i.[Tip_origen_agua_7] * w.[Tip_origen_agua_7],2) + 
			power(i.[Tip_origen_agua_8] * w.[Tip_origen_agua_8],2) + 
			power(i.[Tip_origen_agua_9] * w.[Tip_origen_agua_9],2) + 
			power(i.[Tip_prepara_alimentos_1] * w.[Tip_prepara_alimentos_1],2) + 
			power(i.[Tip_prepara_alimentos_2] * w.[Tip_prepara_alimentos_2],2) + 
			power(i.[Tip_prepara_alimentos_3] * w.[Tip_prepara_alimentos_3],2) + 
			power(i.[Tip_prepara_alimentos_4] * w.[Tip_prepara_alimentos_4],2) + 
			power(i.[Tip_prepara_alimentos_5] * w.[Tip_prepara_alimentos_5],2) + 
			power(i.[Tip_sanitario_1] * w.[Tip_sanitario_1],2) + 
			power(i.[Tip_sanitario_2] * w.[Tip_sanitario_2],2) + 
			power(i.[Tip_sanitario_3] * w.[Tip_sanitario_3],2) + 
			power(i.[Tip_sanitario_4] * w.[Tip_sanitario_4],2) + 
			power(i.[Tip_sanitario_5] * w.[Tip_sanitario_5],2) + 
			power(i.[Tip_ubi_sanitario_1] * w.[Tip_ubi_sanitario_1],2) + 
			power(i.[Tip_ubi_sanitario_2] * w.[Tip_ubi_sanitario_2],2) + 
			power(i.[Tip_uso_agua_beber_1] * w.[Tip_uso_agua_beber_1],2) + 
			power(i.[Tip_uso_agua_beber_2] * w.[Tip_uso_agua_beber_2],2) + 
			power(i.[Tip_uso_agua_beber_3] * w.[Tip_uso_agua_beber_3],2) + 
			power(i.[Tip_uso_agua_beber_4] * w.[Tip_uso_agua_beber_4],2) + 
			power(i.[Tip_uso_agua_beber_5] * w.[Tip_uso_agua_beber_5],2) + 
			power(i.[Tip_uso_agua_beber_6] * w.[Tip_uso_agua_beber_6],2) + 
			power(i.[Tip_uso_cocina_1] * w.[Tip_uso_cocina_1],2) + 
			power(i.[Tip_uso_cocina_2] * w.[Tip_uso_cocina_2],2) + 
			power(i.[Tip_uso_cocina_3] * w.[Tip_uso_cocina_3],2) + 
			power(i.[Tip_uso_sanitario_1] * w.[Tip_uso_sanitario_1],2) + 
			power(i.[Tip_uso_sanitario_2] * w.[Tip_uso_sanitario_2],2) + 
			power(i.[Tip_uso_sanitario_3] * w.[Tip_uso_sanitario_3],2) + 
			power(i.[Tip_vivienda_1] * w.[Tip_vivienda_1],2) + 
			power(i.[Tip_vivienda_2] * w.[Tip_vivienda_2],2) + 
			power(i.[Tip_vivienda_3] * w.[Tip_vivienda_3],2) + 
			power(i.[Tip_vivienda_4] * w.[Tip_vivienda_4],2) + 
			power(i.[Tip_vivienda_5] * w.[Tip_vivienda_5],2) + 
			power(i.[Vlr_gasto_alimento_nor] * w.[Vlr_gasto_alimento_nor],2) + 
			power(i.[Vlr_gasto_arriendo_nor] * w.[Vlr_gasto_arriendo_nor],2) + 
			power(i.[Vlr_gasto_celular_nor] * w.[Vlr_gasto_celular_nor],2) + 
			power(i.[Vlr_gasto_educacion_nor] * w.[Vlr_gasto_educacion_nor],2) + 
			power(i.[Vlr_gasto_otros_nor] * w.[Vlr_gasto_otros_nor],2) + 
			power(i.[Vlr_gasto_salud_nor] * w.[Vlr_gasto_salud_nor],2) + 
			power(i.[Vlr_gasto_serv_publicos_nor] * w.[Vlr_gasto_serv_publicos_nor],2) + 
			power(i.[Vlr_gasto_transporte_nor] * w.[Vlr_gasto_transporte_nor],2) + 
			power(i.[Vlr_total_gastos_nor] * w.[Vlr_total_gastos_nor],2)) / sqrt(178)
		from #inputs i
		inner join #weights w
			on 1 = 1

		---------------------
		-- people analysis --
		---------------------

		SELECT 
			  min([Fec_nacimiento]) [Fec_nacimiento]
			  ,cast(max([Grado_alcanzado]) as float) [Grado_alcanzado]
			  ,cast(max([Num_sem_buscando]) as float) [Num_sem_buscando]
			  ,cast(max([Vlr_ingr_salario]) as float) [Vlr_ingr_salario]
			  ,cast(max([Vlr_ingr_honorarios]) as float) [Vlr_ingr_honorarios]
			  ,cast(max([Num_mes_ingr_cosecha]) as float) [Num_mes_ingr_cosecha]
			  ,cast(max([Vlr_ingr_cosecha]) as float) [Vlr_ingr_cosecha]
			  ,cast(max([Vlr_ingr_pension]) as float) [Vlr_ingr_pension]
			  ,cast(max([Vlr_ingr_remesa_pais]) as float) [Vlr_ingr_remesa_pais]
			  ,cast(max([Vlr_ingr_remesa_exterior]) as float) [Vlr_ingr_remesa_exterior]
			  ,cast(max([Vlr_ingr_arriendos]) as float) [Vlr_ingr_arriendos]
			  ,cast(max([Vlr_otros_ingresos]) as float) [Vlr_otros_ingresos]
			  ,cast(max([Vlr_ingr_fam_accion]) as float) [Vlr_ingr_fam_accion]
			  ,cast(max([Vlr_ingr_col_mayor]) as float) [Vlr_ingr_col_mayor]
			  ,cast(max([Vlr_ingr_otro_subsidio]) as float) [Vlr_ingr_otro_subsidio]
			into #personas_maxvals
		  FROM [DAT].[CNS_PERSONAS]
		  where Cod_mpio = @cod_mpio

		SELECT 
			   [Num_paquete]
			  ,[Cod_dpto]
			  ,[Cod_mpio]
			  ,[Num_ficha]
			  ,[Ide_hogar]
			  ,[Ide_persona]
			  ,case when [Sexo_persona] = 1 then 1 else 0 end [Sexo_persona_1]
			  ,case when [Sexo_persona] = 2 then 1 else 0 end [Sexo_persona_2]
			  ,case when [Tip_documento] = 1 then 1 else 0 end [Tip_documento_1]
			  ,case when [Tip_documento] = 2 then 1 else 0 end [Tip_documento_2]
			  ,case when [Tip_documento] = 3 then 1 else 0 end [Tip_documento_3]
			  ,case when [Tip_documento] = 4 then 1 else 0 end [Tip_documento_4]
			  ,case when [Tip_documento] = 5 then 1 else 0 end [Tip_documento_5]
			  ,case when [Tip_documento] = 6 then 1 else 0 end [Tip_documento_6]
			  ,case when [Tip_documento] = 7 then 1 else 0 end [Tip_documento_7]
			  ,case when [Tip_documento] = 8 then 1 else 0 end [Tip_documento_8]
			  ,(datediff(year, p.[Fec_nacimiento], getutcdate())) / cast(datediff(year, mv.[Fec_nacimiento], getutcdate()) as float) [Fec_nacimiento_nor]
			  ,case when [Tip_parentesco] = 1 then 1 else 0 end [Tip_parentesco_1]
			  ,case when [Tip_parentesco] = 2 then 1 else 0 end [Tip_parentesco_2]
			  ,case when [Tip_parentesco] = 3 then 1 else 0 end [Tip_parentesco_3]
			  ,case when [Tip_parentesco] = 4 then 1 else 0 end [Tip_parentesco_4]
			  ,case when [Tip_parentesco] = 5 then 1 else 0 end [Tip_parentesco_5]
			  ,case when [Tip_parentesco] = 6 then 1 else 0 end [Tip_parentesco_6]
			  ,case when [Tip_parentesco] = 7 then 1 else 0 end [Tip_parentesco_7]
			  ,case when [Tip_parentesco] = 8 then 1 else 0 end [Tip_parentesco_8]
			  ,case when [Tip_parentesco] = 9 then 1 else 0 end [Tip_parentesco_9]
			  ,case when [Tip_parentesco] = 10 then 1 else 0 end [Tip_parentesco_10]
			  ,case when [Tip_parentesco] = 11 then 1 else 0 end [Tip_parentesco_11]
			  ,case when [Tip_parentesco] = 12 then 1 else 0 end [Tip_parentesco_12]
			  ,case when [Tip_parentesco] = 13 then 1 else 0 end [Tip_parentesco_13]
			  ,case when [Tip_parentesco] = 14 then 1 else 0 end [Tip_parentesco_14]
			  ,case when [Tip_parentesco] = 15 then 1 else 0 end [Tip_parentesco_15]
			  ,case when [Tip_parentesco] = 16 then 1 else 0 end [Tip_parentesco_16]
			  ,case when [Tip_parentesco] = 17 then 1 else 0 end [Tip_parentesco_17]
			  ,case when [Tip_parentesco] = 18 then 1 else 0 end [Tip_parentesco_18]
			  ,case when [Tip_parentesco] = 19 then 1 else 0 end [Tip_parentesco_19]
			  ,case when [Tip_estado_civil] = 1 then 1 else 0 end [Tip_estado_civil_1]
			  ,case when [Tip_estado_civil] = 2 then 1 else 0 end [Tip_estado_civil_2]
			  ,case when [Tip_estado_civil] = 3 then 1 else 0 end [Tip_estado_civil_3]
			  ,case when [Tip_estado_civil] = 4 then 1 else 0 end [Tip_estado_civil_4]
			  ,case when [Tip_estado_civil] = 5 then 1 else 0 end [Tip_estado_civil_5]
			  ,case when [Ind_conyuge_vive_hogar] = 1 then 1 else 0 end [Ind_conyuge_vive_hogar_1]
			  ,case when [Ind_conyuge_vive_hogar] = 2 then 1 else 0 end [Ind_conyuge_vive_hogar_2]
			  ,case when [Ind_padre_vive_hogar] = 1 then 1 else 0 end [Ind_padre_vive_hogar_1]
			  ,case when [Ind_padre_vive_hogar] = 2 then 1 else 0 end [Ind_padre_vive_hogar_2]
			  ,case when [Ind_pariente_domestico] = 1 then 1 else 0 end [Ind_pariente_domestico_1]
			  ,case when [Ind_pariente_domestico] = 2 then 1 else 0 end [Ind_pariente_domestico_2]
			  ,case when [Ind_discap_ver] = 1 then 1 else 0 end [Ind_discap_ver_1]
			  ,case when [Ind_discap_ver] = 2 then 1 else 0 end [Ind_discap_ver_2]
			  ,case when [Ind_discap_oir] = 1 then 1 else 0 end [Ind_discap_oir_1]
			  ,case when [Ind_discap_oir] = 2 then 1 else 0 end [Ind_discap_oir_2]
			  ,case when [Ind_discap_hablar] = 1 then 1 else 0 end [Ind_discap_hablar_1]
			  ,case when [Ind_discap_hablar] = 2 then 1 else 0 end [Ind_discap_hablar_2]
			  ,case when [Ind_discap_moverse] = 1 then 1 else 0 end [Ind_discap_moverse_1]
			  ,case when [Ind_discap_moverse] = 2 then 1 else 0 end [Ind_discap_moverse_2]
			  ,case when [Ind_discap_bañarse] = 1 then 1 else 0 end [Ind_discap_bañarse_1]
			  ,case when [Ind_discap_bañarse] = 2 then 1 else 0 end [Ind_discap_bañarse_2]
			  ,case when [Ind_discap_salir] = 1 then 1 else 0 end [Ind_discap_salir_1]
			  ,case when [Ind_discap_salir] = 2 then 1 else 0 end [Ind_discap_salir_2]
			  ,case when [Ind_discap_entender] = 1 then 1 else 0 end [Ind_discap_entender_1]
			  ,case when [Ind_discap_entender] = 2 then 1 else 0 end [Ind_discap_entender_2]
			  ,case when [Ind_discap_ninguna] = 1 then 1 else 0 end [Ind_discap_ninguna_1]
			  ,case when [Ind_discap_ninguna] = 2 then 1 else 0 end [Ind_discap_ninguna_2]
			  ,case when [Tip_Seg_social] = 1 then 1 else 0 end [Tip_Seg_social_1]
			  ,case when [Tip_Seg_social] = 2 then 1 else 0 end [Tip_Seg_social_2]
			  ,case when [Tip_Seg_social] = 3 then 1 else 0 end [Tip_Seg_social_3]
			  ,case when [Tip_Seg_social] = 0 then 1 else 0 end [Tip_Seg_social_0]
			  ,case when [Tip_Seg_social] = 9 then 1 else 0 end [Tip_Seg_social_9]
			  ,case when [Ind_enfermo_30] = 1 then 1 else 0 end [Ind_enfermo_30_1]
			  ,case when [Ind_enfermo_30] = 2 then 1 else 0 end [Ind_enfermo_30_2]
			  ,case when [Ind_acudio_salud] = 1 then 1 else 0 end [Ind_acudio_salud_1]
			  ,case when [Ind_acudio_salud] = 2 then 1 else 0 end [Ind_acudio_salud_2]
			  ,case when [Ind_fue_atendido_salud] = 1 then 1 else 0 end [Ind_fue_atendido_salud_1]
			  ,case when [Ind_fue_atendido_salud] = 2 then 1 else 0 end [Ind_fue_atendido_salud_2]
			  ,case when [Ind_esta_embarazada] = 1 then 1 else 0 end [Ind_esta_embarazada_1]
			  ,case when [Ind_esta_embarazada] = 2 then 1 else 0 end [Ind_esta_embarazada_2]
			  ,case when [Ind_tuvo_hijos] = 1 then 1 else 0 end [Ind_tuvo_hijos_1]
			  ,case when [Ind_tuvo_hijos] = 2 then 1 else 0 end [Ind_tuvo_hijos_2]
			  ,case when [Tip_cuidado_niños] = 1 then 1 else 0 end [Tip_cuidado_niños_1]
			  ,case when [Tip_cuidado_niños] = 2 then 1 else 0 end [Tip_cuidado_niños_2]
			  ,case when [Tip_cuidado_niños] = 3 then 1 else 0 end [Tip_cuidado_niños_3]
			  ,case when [Tip_cuidado_niños] = 4 then 1 else 0 end [Tip_cuidado_niños_4]
			  ,case when [Tip_cuidado_niños] = 5 then 1 else 0 end [Tip_cuidado_niños_5]
			  ,case when [Tip_cuidado_niños] = 6 then 1 else 0 end [Tip_cuidado_niños_6]
			  ,case when [Tip_cuidado_niños] = 7 then 1 else 0 end [Tip_cuidado_niños_7]
			  ,case when [Tip_cuidado_niños] = 8 then 1 else 0 end [Tip_cuidado_niños_8]
			  ,case when [Ind_recibe_comida] = 1 then 1 else 0 end [Ind_recibe_comida_1]
			  ,case when [Ind_recibe_comida] = 2 then 1 else 0 end [Ind_recibe_comida_2]
			  ,case when [Ind_leer_escribir] = 1 then 1 else 0 end [Ind_leer_escribir_1]
			  ,case when [Ind_leer_escribir] = 2 then 1 else 0 end [Ind_leer_escribir_2]
			  ,case when [Ind_estudia] = 1 then 1 else 0 end [Ind_estudia_1]
			  ,case when [Ind_estudia] = 2 then 1 else 0 end [Ind_estudia_2]
			  ,case when [Niv_educativo] = 0 then 1 else 0 end [Niv_educativo_0]
			  ,case when [Niv_educativo] = 1 then 1 else 0 end [Niv_educativo_1]
			  ,case when [Niv_educativo] = 2 then 1 else 0 end [Niv_educativo_2]
			  ,case when [Niv_educativo] = 3 then 1 else 0 end [Niv_educativo_3]
			  ,case when [Niv_educativo] = 4 then 1 else 0 end [Niv_educativo_4]
			  ,case when [Niv_educativo] = 5 then 1 else 0 end [Niv_educativo_5]
			  ,case when [Niv_educativo] = 6 then 1 else 0 end [Niv_educativo_6]
			  ,case when [Niv_educativo] = 7 then 1 else 0 end [Niv_educativo_7]
			  ,p.[Grado_alcanzado] / case when mv.[Grado_alcanzado] = 0 then 1.0 else mv.[Grado_alcanzado] end [Grado_alcanzado_nor]
			  ,case when [Ind_fondo_pensiones] = 1 then 1 else 0 end [Ind_fondo_pensiones_1]
			  ,case when [Ind_fondo_pensiones] = 2 then 1 else 0 end [Ind_fondo_pensiones_2]
			  ,case when [Ind_fondo_pensiones] = 3 then 1 else 0 end [Ind_fondo_pensiones_3]
			  ,case when [Tip_actividad_mes] = 1 then 1 else 0 end [Tip_actividad_mes_1]
			  ,case when [Tip_actividad_mes] = 2 then 1 else 0 end [Tip_actividad_mes_2]
			  ,case when [Tip_actividad_mes] = 3 then 1 else 0 end [Tip_actividad_mes_3]
			  ,case when [Tip_actividad_mes] = 4 then 1 else 0 end [Tip_actividad_mes_4]
			  ,case when [Tip_actividad_mes] = 5 then 1 else 0 end [Tip_actividad_mes_5]
			  ,case when [Tip_actividad_mes] = 6 then 1 else 0 end [Tip_actividad_mes_6]
			  ,case when [Tip_actividad_mes] = 7 then 1 else 0 end [Tip_actividad_mes_7]
			  ,case when [Tip_actividad_mes] = 0 then 1 else 0 end [Tip_actividad_mes_0]
			  ,p.[Num_sem_buscando] / case when mv.[Num_sem_buscando] = 0 then 1.0 else mv.[Num_sem_buscando] end [Num_sem_buscando_nor]
			  ,case when [Tip_empleado] = 1 then 1 else 0 end [Tip_empleado_1]
			  ,case when [Tip_empleado] = 2 then 1 else 0 end [Tip_empleado_2]
			  ,case when [Tip_empleado] = 3 then 1 else 0 end [Tip_empleado_3]
			  ,case when [Tip_empleado] = 4 then 1 else 0 end [Tip_empleado_4]
			  ,case when [Tip_empleado] = 5 then 1 else 0 end [Tip_empleado_5]
			  ,case when [Tip_empleado] = 6 then 1 else 0 end [Tip_empleado_6]
			  ,case when [Tip_empleado] = 7 then 1 else 0 end [Tip_empleado_7]
			  ,case when [Tip_empleado] = 8 then 1 else 0 end [Tip_empleado_8]
			  ,case when [Tip_empleado] = 9 then 1 else 0 end [Tip_empleado_9]
			  ,case when [Tip_empleado] = 10 then 1 else 0 end [Tip_empleado_10]
			  ,case when [Ind_ingr_salario] = 1 then 1 else 0 end [Ind_ingr_salario_1]
			  ,case when [Ind_ingr_salario] = 2 then 1 else 0 end [Ind_ingr_salario_2]
			  ,case when [Ind_ingr_salario] = 9 then 1 else 0 end [Ind_ingr_salario_9]
			  ,p.[Vlr_ingr_salario] / case when mv.[Vlr_ingr_salario] = 0 then 1.0 else mv.[Vlr_ingr_salario] end [Vlr_ingr_salario_nor]
			  ,case when [Ind_ingr_honorarios] = 1 then 1 else 0 end [Ind_ingr_honorarios_1]
			  ,case when [Ind_ingr_honorarios] = 2 then 1 else 0 end [Ind_ingr_honorarios_2]
			  ,case when [Ind_ingr_honorarios] = 9 then 1 else 0 end [Ind_ingr_honorarios_9]
			  ,p.[Vlr_ingr_honorarios] / case when mv.[Vlr_ingr_honorarios] = 0 then 1.0 else mv.[Vlr_ingr_honorarios] end [Vlr_ingr_honorarios_nor]
			  ,case when [Ind_ingr_cosecha] = 1 then 1 else 0 end [Ind_ingr_cosecha_1]
			  ,case when [Ind_ingr_cosecha] = 2 then 1 else 0 end [Ind_ingr_cosecha_2]
			  ,case when [Ind_ingr_cosecha] = 9 then 1 else 0 end [Ind_ingr_cosecha_9]
			  ,p.[Num_mes_ingr_cosecha] / case when mv.[Num_mes_ingr_cosecha] = 0 then 1.0 else mv.[Num_mes_ingr_cosecha] end [Num_mes_ingr_cosecha_nor]
			  ,p.[Vlr_ingr_cosecha] / case when mv.[Vlr_ingr_cosecha] = 0 then 1.0 else mv.[Vlr_ingr_cosecha] end [Vlr_ingr_cosecha_nor]
			  ,case when [Ind_ingr_pension] = 1 then 1 else 0 end [Ind_ingr_pension_1]
			  ,case when [Ind_ingr_pension] = 2 then 1 else 0 end [Ind_ingr_pension_2]
			  ,case when [Ind_ingr_pension] = 9 then 1 else 0 end [Ind_ingr_pension_9]
			  ,p.[Vlr_ingr_pension] / case when mv.[Vlr_ingr_pension] = 0 then 1.0 else mv.[Vlr_ingr_pension] end [Vlr_ingr_pension_nor]
			  ,case when [Ind_ingr_remesa_pais] = 1 then 1 else 0 end [Ind_ingr_remesa_pais_1]
			  ,case when [Ind_ingr_remesa_pais] = 2 then 1 else 0 end [Ind_ingr_remesa_pais_2]
			  ,case when [Ind_ingr_remesa_pais] = 9 then 1 else 0 end [Ind_ingr_remesa_pais_9]
			  ,p.[Vlr_ingr_remesa_pais] / case when mv.[Vlr_ingr_remesa_pais] = 0 then 1.0 else mv.[Vlr_ingr_remesa_pais] end [Vlr_ingr_remesa_pais_nor]
			  ,case when [Ind_ingr_remesa_exterior] = 1 then 1 else 0 end [Ind_ingr_remesa_exterior_1]
			  ,case when [Ind_ingr_remesa_exterior] = 2 then 1 else 0 end [Ind_ingr_remesa_exterior_2]
			  ,case when [Ind_ingr_remesa_exterior] = 9 then 1 else 0 end [Ind_ingr_remesa_exterior_9]
			  ,p.[Vlr_ingr_remesa_exterior] / case when mv.[Vlr_ingr_remesa_exterior] = 0 then 1.0 else mv.[Vlr_ingr_remesa_exterior] end [Vlr_ingr_remesa_exterior_nor]
			  ,case when [Ind_ingr_arriendos] = 1 then 1 else 0 end [Ind_ingr_arriendos_1]
			  ,case when [Ind_ingr_arriendos] = 2 then 1 else 0 end [Ind_ingr_arriendos_2]
			  ,case when [Ind_ingr_arriendos] = 9 then 1 else 0 end [Ind_ingr_arriendos_9]
			  ,p.[Vlr_ingr_arriendos] / case when mv.[Vlr_ingr_arriendos] = 0 then 1.0 else mv.[Vlr_ingr_arriendos] end [Vlr_ingr_arriendos_nor]
			  ,case when [Ind_otros_ingresos] = 1 then 1 else 0 end [Ind_otros_ingresos_1]
			  ,case when [Ind_otros_ingresos] = 2 then 1 else 0 end [Ind_otros_ingresos_2]
			  ,case when [Ind_otros_ingresos] = 9 then 1 else 0 end [Ind_otros_ingresos_9]
			  ,p.[Vlr_otros_ingresos] / case when mv.[Vlr_otros_ingresos] = 0 then 1.0 else mv.[Vlr_otros_ingresos] end [Vlr_otros_ingresos_nor]
			  ,case when [Ind_ingr_estado] = 1 then 1 else 0 end [Ind_ingr_estado_1]
			  ,case when [Ind_ingr_estado] = 2 then 1 else 0 end [Ind_ingr_estado_2]
			  ,p.[Vlr_ingr_fam_accion] / case when mv.[Vlr_ingr_fam_accion] = 0 then 1.0 else mv.[Vlr_ingr_fam_accion] end [Vlr_ingr_fam_accion_nor]
			  ,p.[Vlr_ingr_col_mayor] / case when mv.[Vlr_ingr_col_mayor] = 0 then 1.0 else mv.[Vlr_ingr_col_mayor] end [Vlr_ingr_col_mayor_nor]
			  ,p.[Vlr_ingr_otro_subsidio] / case when mv.[Vlr_ingr_otro_subsidio] = 0 then 1.0 else mv.[Vlr_ingr_otro_subsidio] end [Vlr_ingr_otro_subsidio_nor]
		into #personas_inputs
		FROM [DAT].[CNS_PERSONAS] p
		inner join #personas_maxvals mv
			on 1 = 1
		where Cod_mpio = @cod_mpio
			and Num_ficha = @num_ficha
			and Ide_hogar = @ide_hogar

		select @weights_exist = count(*) from [ML].[CNS_PersonaNeurons] where Cluster = @cod_mpio

		if @weights_exist < 1 begin
			INSERT INTO [ML].[CNS_PersonaNeurons]
				   ([Cluster]
				   ,[Fec_nacimiento_nor]
				   ,[Grado_alcanzado_nor]
				   ,[Ind_acudio_salud_1]
				   ,[Ind_acudio_salud_2]
				   ,[Ind_conyuge_vive_hogar_1]
				   ,[Ind_conyuge_vive_hogar_2]
				   ,[Ind_discap_bañarse_1]
				   ,[Ind_discap_bañarse_2]
				   ,[Ind_discap_entender_1]
				   ,[Ind_discap_entender_2]
				   ,[Ind_discap_hablar_1]
				   ,[Ind_discap_hablar_2]
				   ,[Ind_discap_moverse_1]
				   ,[Ind_discap_moverse_2]
				   ,[Ind_discap_ninguna_1]
				   ,[Ind_discap_ninguna_2]
				   ,[Ind_discap_oir_1]
				   ,[Ind_discap_oir_2]
				   ,[Ind_discap_salir_1]
				   ,[Ind_discap_salir_2]
				   ,[Ind_discap_ver_1]
				   ,[Ind_discap_ver_2]
				   ,[Ind_enfermo_30_1]
				   ,[Ind_enfermo_30_2]
				   ,[Ind_esta_embarazada_1]
				   ,[Ind_esta_embarazada_2]
				   ,[Ind_estudia_1]
				   ,[Ind_estudia_2]
				   ,[Ind_fondo_pensiones_1]
				   ,[Ind_fondo_pensiones_2]
				   ,[Ind_fondo_pensiones_3]
				   ,[Ind_fue_atendido_salud_1]
				   ,[Ind_fue_atendido_salud_2]
				   ,[Ind_ingr_arriendos_1]
				   ,[Ind_ingr_arriendos_2]
				   ,[Ind_ingr_arriendos_9]
				   ,[Ind_ingr_cosecha_1]
				   ,[Ind_ingr_cosecha_2]
				   ,[Ind_ingr_cosecha_9]
				   ,[Ind_ingr_estado_1]
				   ,[Ind_ingr_estado_2]
				   ,[Ind_ingr_honorarios_1]
				   ,[Ind_ingr_honorarios_2]
				   ,[Ind_ingr_honorarios_9]
				   ,[Ind_ingr_pension_1]
				   ,[Ind_ingr_pension_2]
				   ,[Ind_ingr_pension_9]
				   ,[Ind_ingr_remesa_exterior_1]
				   ,[Ind_ingr_remesa_exterior_2]
				   ,[Ind_ingr_remesa_exterior_9]
				   ,[Ind_ingr_remesa_pais_1]
				   ,[Ind_ingr_remesa_pais_2]
				   ,[Ind_ingr_remesa_pais_9]
				   ,[Ind_ingr_salario_1]
				   ,[Ind_ingr_salario_2]
				   ,[Ind_ingr_salario_9]
				   ,[Ind_leer_escribir_1]
				   ,[Ind_leer_escribir_2]
				   ,[Ind_otros_ingresos_1]
				   ,[Ind_otros_ingresos_2]
				   ,[Ind_otros_ingresos_9]
				   ,[Ind_padre_vive_hogar_1]
				   ,[Ind_padre_vive_hogar_2]
				   ,[Ind_pariente_domestico_1]
				   ,[Ind_pariente_domestico_2]
				   ,[Ind_recibe_comida_1]
				   ,[Ind_recibe_comida_2]
				   ,[Ind_tuvo_hijos_1]
				   ,[Ind_tuvo_hijos_2]
				   ,[Niv_educativo_0]
				   ,[Niv_educativo_1]
				   ,[Niv_educativo_2]
				   ,[Niv_educativo_3]
				   ,[Niv_educativo_4]
				   ,[Niv_educativo_5]
				   ,[Niv_educativo_6]
				   ,[Niv_educativo_7]
				   ,[Num_mes_ingr_cosecha_nor]
				   ,[Num_sem_buscando_nor]
				   ,[Sexo_persona_1]
				   ,[Sexo_persona_2]
				   ,[Tip_actividad_mes_0]
				   ,[Tip_actividad_mes_1]
				   ,[Tip_actividad_mes_2]
				   ,[Tip_actividad_mes_3]
				   ,[Tip_actividad_mes_4]
				   ,[Tip_actividad_mes_5]
				   ,[Tip_actividad_mes_6]
				   ,[Tip_actividad_mes_7]
				   ,[Tip_cuidado_niños_1]
				   ,[Tip_cuidado_niños_2]
				   ,[Tip_cuidado_niños_3]
				   ,[Tip_cuidado_niños_4]
				   ,[Tip_cuidado_niños_5]
				   ,[Tip_cuidado_niños_6]
				   ,[Tip_cuidado_niños_7]
				   ,[Tip_cuidado_niños_8]
				   ,[Tip_documento_1]
				   ,[Tip_documento_2]
				   ,[Tip_documento_3]
				   ,[Tip_documento_4]
				   ,[Tip_documento_5]
				   ,[Tip_documento_6]
				   ,[Tip_documento_7]
				   ,[Tip_documento_8]
				   ,[Tip_empleado_1]
				   ,[Tip_empleado_10]
				   ,[Tip_empleado_2]
				   ,[Tip_empleado_3]
				   ,[Tip_empleado_4]
				   ,[Tip_empleado_5]
				   ,[Tip_empleado_6]
				   ,[Tip_empleado_7]
				   ,[Tip_empleado_8]
				   ,[Tip_empleado_9]
				   ,[Tip_estado_civil_1]
				   ,[Tip_estado_civil_2]
				   ,[Tip_estado_civil_3]
				   ,[Tip_estado_civil_4]
				   ,[Tip_estado_civil_5]
				   ,[Tip_parentesco_1]
				   ,[Tip_parentesco_10]
				   ,[Tip_parentesco_11]
				   ,[Tip_parentesco_12]
				   ,[Tip_parentesco_13]
				   ,[Tip_parentesco_14]
				   ,[Tip_parentesco_15]
				   ,[Tip_parentesco_16]
				   ,[Tip_parentesco_17]
				   ,[Tip_parentesco_18]
				   ,[Tip_parentesco_19]
				   ,[Tip_parentesco_2]
				   ,[Tip_parentesco_3]
				   ,[Tip_parentesco_4]
				   ,[Tip_parentesco_5]
				   ,[Tip_parentesco_6]
				   ,[Tip_parentesco_7]
				   ,[Tip_parentesco_8]
				   ,[Tip_parentesco_9]
				   ,[Tip_Seg_social_0]
				   ,[Tip_Seg_social_1]
				   ,[Tip_Seg_social_2]
				   ,[Tip_Seg_social_3]
				   ,[Tip_Seg_social_9]
				   ,[Vlr_ingr_arriendos_nor]
				   ,[Vlr_ingr_col_mayor_nor]
				   ,[Vlr_ingr_cosecha_nor]
				   ,[Vlr_ingr_fam_accion_nor]
				   ,[Vlr_ingr_honorarios_nor]
				   ,[Vlr_ingr_otro_subsidio_nor]
				   ,[Vlr_ingr_pension_nor]
				   ,[Vlr_ingr_remesa_exterior_nor]
				   ,[Vlr_ingr_remesa_pais_nor]
				   ,[Vlr_ingr_salario_nor]
				   ,[Vlr_otros_ingresos_nor])
			VALUES (
				@cod_mpio,
				0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5
			)
		end

		select
			[Fec_nacimiento_nor]
			,[Grado_alcanzado_nor]
			,[Ind_acudio_salud_1]
			,[Ind_acudio_salud_2]
			,[Ind_conyuge_vive_hogar_1]
			,[Ind_conyuge_vive_hogar_2]
			,[Ind_discap_bañarse_1]
			,[Ind_discap_bañarse_2]
			,[Ind_discap_entender_1]
			,[Ind_discap_entender_2]
			,[Ind_discap_hablar_1]
			,[Ind_discap_hablar_2]
			,[Ind_discap_moverse_1]
			,[Ind_discap_moverse_2]
			,[Ind_discap_ninguna_1]
			,[Ind_discap_ninguna_2]
			,[Ind_discap_oir_1]
			,[Ind_discap_oir_2]
			,[Ind_discap_salir_1]
			,[Ind_discap_salir_2]
			,[Ind_discap_ver_1]
			,[Ind_discap_ver_2]
			,[Ind_enfermo_30_1]
			,[Ind_enfermo_30_2]
			,[Ind_esta_embarazada_1]
			,[Ind_esta_embarazada_2]
			,[Ind_estudia_1]
			,[Ind_estudia_2]
			,[Ind_fondo_pensiones_1]
			,[Ind_fondo_pensiones_2]
			,[Ind_fondo_pensiones_3]
			,[Ind_fue_atendido_salud_1]
			,[Ind_fue_atendido_salud_2]
			,[Ind_ingr_arriendos_1]
			,[Ind_ingr_arriendos_2]
			,[Ind_ingr_arriendos_9]
			,[Ind_ingr_cosecha_1]
			,[Ind_ingr_cosecha_2]
			,[Ind_ingr_cosecha_9]
			,[Ind_ingr_estado_1]
			,[Ind_ingr_estado_2]
			,[Ind_ingr_honorarios_1]
			,[Ind_ingr_honorarios_2]
			,[Ind_ingr_honorarios_9]
			,[Ind_ingr_pension_1]
			,[Ind_ingr_pension_2]
			,[Ind_ingr_pension_9]
			,[Ind_ingr_remesa_exterior_1]
			,[Ind_ingr_remesa_exterior_2]
			,[Ind_ingr_remesa_exterior_9]
			,[Ind_ingr_remesa_pais_1]
			,[Ind_ingr_remesa_pais_2]
			,[Ind_ingr_remesa_pais_9]
			,[Ind_ingr_salario_1]
			,[Ind_ingr_salario_2]
			,[Ind_ingr_salario_9]
			,[Ind_leer_escribir_1]
			,[Ind_leer_escribir_2]
			,[Ind_otros_ingresos_1]
			,[Ind_otros_ingresos_2]
			,[Ind_otros_ingresos_9]
			,[Ind_padre_vive_hogar_1]
			,[Ind_padre_vive_hogar_2]
			,[Ind_pariente_domestico_1]
			,[Ind_pariente_domestico_2]
			,[Ind_recibe_comida_1]
			,[Ind_recibe_comida_2]
			,[Ind_tuvo_hijos_1]
			,[Ind_tuvo_hijos_2]
			,[Niv_educativo_0]
			,[Niv_educativo_1]
			,[Niv_educativo_2]
			,[Niv_educativo_3]
			,[Niv_educativo_4]
			,[Niv_educativo_5]
			,[Niv_educativo_6]
			,[Niv_educativo_7]
			,[Num_mes_ingr_cosecha_nor]
			,[Num_sem_buscando_nor]
			,[Sexo_persona_1]
			,[Sexo_persona_2]
			,[Tip_actividad_mes_0]
			,[Tip_actividad_mes_1]
			,[Tip_actividad_mes_2]
			,[Tip_actividad_mes_3]
			,[Tip_actividad_mes_4]
			,[Tip_actividad_mes_5]
			,[Tip_actividad_mes_6]
			,[Tip_actividad_mes_7]
			,[Tip_cuidado_niños_1]
			,[Tip_cuidado_niños_2]
			,[Tip_cuidado_niños_3]
			,[Tip_cuidado_niños_4]
			,[Tip_cuidado_niños_5]
			,[Tip_cuidado_niños_6]
			,[Tip_cuidado_niños_7]
			,[Tip_cuidado_niños_8]
			,[Tip_documento_1]
			,[Tip_documento_2]
			,[Tip_documento_3]
			,[Tip_documento_4]
			,[Tip_documento_5]
			,[Tip_documento_6]
			,[Tip_documento_7]
			,[Tip_documento_8]
			,[Tip_empleado_1]
			,[Tip_empleado_10]
			,[Tip_empleado_2]
			,[Tip_empleado_3]
			,[Tip_empleado_4]
			,[Tip_empleado_5]
			,[Tip_empleado_6]
			,[Tip_empleado_7]
			,[Tip_empleado_8]
			,[Tip_empleado_9]
			,[Tip_estado_civil_1]
			,[Tip_estado_civil_2]
			,[Tip_estado_civil_3]
			,[Tip_estado_civil_4]
			,[Tip_estado_civil_5]
			,[Tip_parentesco_1]
			,[Tip_parentesco_10]
			,[Tip_parentesco_11]
			,[Tip_parentesco_12]
			,[Tip_parentesco_13]
			,[Tip_parentesco_14]
			,[Tip_parentesco_15]
			,[Tip_parentesco_16]
			,[Tip_parentesco_17]
			,[Tip_parentesco_18]
			,[Tip_parentesco_19]
			,[Tip_parentesco_2]
			,[Tip_parentesco_3]
			,[Tip_parentesco_4]
			,[Tip_parentesco_5]
			,[Tip_parentesco_6]
			,[Tip_parentesco_7]
			,[Tip_parentesco_8]
			,[Tip_parentesco_9]
			,[Tip_Seg_social_0]
			,[Tip_Seg_social_1]
			,[Tip_Seg_social_2]
			,[Tip_Seg_social_3]
			,[Tip_Seg_social_9]
			,[Vlr_ingr_arriendos_nor]
			,[Vlr_ingr_col_mayor_nor]
			,[Vlr_ingr_cosecha_nor]
			,[Vlr_ingr_fam_accion_nor]
			,[Vlr_ingr_honorarios_nor]
			,[Vlr_ingr_otro_subsidio_nor]
			,[Vlr_ingr_pension_nor]
			,[Vlr_ingr_remesa_exterior_nor]
			,[Vlr_ingr_remesa_pais_nor]
			,[Vlr_ingr_salario_nor]
			,[Vlr_otros_ingresos_nor]
		into #persona_weights
		from [ML].[CNS_PersonaNeurons] n
		where Cluster = @cod_mpio

		declare @currp_sum float
		select
			@currp_sum = sum(power(sqrt(power(i.[Fec_nacimiento_nor] * w.[Fec_nacimiento_nor],2) +
			power(i.[Grado_alcanzado_nor] * w.[Grado_alcanzado_nor],2) +
			power(i.[Ind_acudio_salud_1] * w.[Ind_acudio_salud_1],2) +
			power(i.[Ind_acudio_salud_2] * w.[Ind_acudio_salud_2],2) +
			power(i.[Ind_conyuge_vive_hogar_1] * w.[Ind_conyuge_vive_hogar_1],2) +
			power(i.[Ind_conyuge_vive_hogar_2] * w.[Ind_conyuge_vive_hogar_2],2) +
			power(i.[Ind_discap_bañarse_1] * w.[Ind_discap_bañarse_1],2) +
			power(i.[Ind_discap_bañarse_2] * w.[Ind_discap_bañarse_2],2) +
			power(i.[Ind_discap_entender_1] * w.[Ind_discap_entender_1],2) +
			power(i.[Ind_discap_entender_2] * w.[Ind_discap_entender_2],2) +
			power(i.[Ind_discap_hablar_1] * w.[Ind_discap_hablar_1],2) +
			power(i.[Ind_discap_hablar_2] * w.[Ind_discap_hablar_2],2) +
			power(i.[Ind_discap_moverse_1] * w.[Ind_discap_moverse_1],2) +
			power(i.[Ind_discap_moverse_2] * w.[Ind_discap_moverse_2],2) +
			power(i.[Ind_discap_ninguna_1] * w.[Ind_discap_ninguna_1],2) +
			power(i.[Ind_discap_ninguna_2] * w.[Ind_discap_ninguna_2],2) +
			power(i.[Ind_discap_oir_1] * w.[Ind_discap_oir_1],2) +
			power(i.[Ind_discap_oir_2] * w.[Ind_discap_oir_2],2) +
			power(i.[Ind_discap_salir_1] * w.[Ind_discap_salir_1],2) +
			power(i.[Ind_discap_salir_2] * w.[Ind_discap_salir_2],2) +
			power(i.[Ind_discap_ver_1] * w.[Ind_discap_ver_1],2) +
			power(i.[Ind_discap_ver_2] * w.[Ind_discap_ver_2],2) +
			power(i.[Ind_enfermo_30_1] * w.[Ind_enfermo_30_1],2) +
			power(i.[Ind_enfermo_30_2] * w.[Ind_enfermo_30_2],2) +
			power(i.[Ind_esta_embarazada_1] * w.[Ind_esta_embarazada_1],2) +
			power(i.[Ind_esta_embarazada_2] * w.[Ind_esta_embarazada_2],2) +
			power(i.[Ind_estudia_1] * w.[Ind_estudia_1],2) +
			power(i.[Ind_estudia_2] * w.[Ind_estudia_2],2) +
			power(i.[Ind_fondo_pensiones_1] * w.[Ind_fondo_pensiones_1],2) +
			power(i.[Ind_fondo_pensiones_2] * w.[Ind_fondo_pensiones_2],2) +
			power(i.[Ind_fondo_pensiones_3] * w.[Ind_fondo_pensiones_3],2) +
			power(i.[Ind_fue_atendido_salud_1] * w.[Ind_fue_atendido_salud_1],2) +
			power(i.[Ind_fue_atendido_salud_2] * w.[Ind_fue_atendido_salud_2],2) +
			power(i.[Ind_ingr_arriendos_1] * w.[Ind_ingr_arriendos_1],2) +
			power(i.[Ind_ingr_arriendos_2] * w.[Ind_ingr_arriendos_2],2) +
			power(i.[Ind_ingr_arriendos_9] * w.[Ind_ingr_arriendos_9],2) +
			power(i.[Ind_ingr_cosecha_1] * w.[Ind_ingr_cosecha_1],2) +
			power(i.[Ind_ingr_cosecha_2] * w.[Ind_ingr_cosecha_2],2) +
			power(i.[Ind_ingr_cosecha_9] * w.[Ind_ingr_cosecha_9],2) +
			power(i.[Ind_ingr_estado_1] * w.[Ind_ingr_estado_1],2) +
			power(i.[Ind_ingr_estado_2] * w.[Ind_ingr_estado_2],2) +
			power(i.[Ind_ingr_honorarios_1] * w.[Ind_ingr_honorarios_1],2) +
			power(i.[Ind_ingr_honorarios_2] * w.[Ind_ingr_honorarios_2],2) +
			power(i.[Ind_ingr_honorarios_9] * w.[Ind_ingr_honorarios_9],2) +
			power(i.[Ind_ingr_pension_1] * w.[Ind_ingr_pension_1],2) +
			power(i.[Ind_ingr_pension_2] * w.[Ind_ingr_pension_2],2) +
			power(i.[Ind_ingr_pension_9] * w.[Ind_ingr_pension_9],2) +
			power(i.[Ind_ingr_remesa_exterior_1] * w.[Ind_ingr_remesa_exterior_1],2) +
			power(i.[Ind_ingr_remesa_exterior_2] * w.[Ind_ingr_remesa_exterior_2],2) +
			power(i.[Ind_ingr_remesa_exterior_9] * w.[Ind_ingr_remesa_exterior_9],2) +
			power(i.[Ind_ingr_remesa_pais_1] * w.[Ind_ingr_remesa_pais_1],2) +
			power(i.[Ind_ingr_remesa_pais_2] * w.[Ind_ingr_remesa_pais_2],2) +
			power(i.[Ind_ingr_remesa_pais_9] * w.[Ind_ingr_remesa_pais_9],2) +
			power(i.[Ind_ingr_salario_1] * w.[Ind_ingr_salario_1],2) +
			power(i.[Ind_ingr_salario_2] * w.[Ind_ingr_salario_2],2) +
			power(i.[Ind_ingr_salario_9] * w.[Ind_ingr_salario_9],2) +
			power(i.[Ind_leer_escribir_1] * w.[Ind_leer_escribir_1],2) +
			power(i.[Ind_leer_escribir_2] * w.[Ind_leer_escribir_2],2) +
			power(i.[Ind_otros_ingresos_1] * w.[Ind_otros_ingresos_1],2) +
			power(i.[Ind_otros_ingresos_2] * w.[Ind_otros_ingresos_2],2) +
			power(i.[Ind_otros_ingresos_9] * w.[Ind_otros_ingresos_9],2) +
			power(i.[Ind_padre_vive_hogar_1] * w.[Ind_padre_vive_hogar_1],2) +
			power(i.[Ind_padre_vive_hogar_2] * w.[Ind_padre_vive_hogar_2],2) +
			power(i.[Ind_pariente_domestico_1] * w.[Ind_pariente_domestico_1],2) +
			power(i.[Ind_pariente_domestico_2] * w.[Ind_pariente_domestico_2],2) +
			power(i.[Ind_recibe_comida_1] * w.[Ind_recibe_comida_1],2) +
			power(i.[Ind_recibe_comida_2] * w.[Ind_recibe_comida_2],2) +
			power(i.[Ind_tuvo_hijos_1] * w.[Ind_tuvo_hijos_1],2) +
			power(i.[Ind_tuvo_hijos_2] * w.[Ind_tuvo_hijos_2],2) +
			power(i.[Niv_educativo_0] * w.[Niv_educativo_0],2) +
			power(i.[Niv_educativo_1] * w.[Niv_educativo_1],2) +
			power(i.[Niv_educativo_2] * w.[Niv_educativo_2],2) +
			power(i.[Niv_educativo_3] * w.[Niv_educativo_3],2) +
			power(i.[Niv_educativo_4] * w.[Niv_educativo_4],2) +
			power(i.[Niv_educativo_5] * w.[Niv_educativo_5],2) +
			power(i.[Niv_educativo_6] * w.[Niv_educativo_6],2) +
			power(i.[Niv_educativo_7] * w.[Niv_educativo_7],2) +
			power(i.[Num_mes_ingr_cosecha_nor] * w.[Num_mes_ingr_cosecha_nor],2) +
			power(i.[Num_sem_buscando_nor] * w.[Num_sem_buscando_nor],2) +
			power(i.[Sexo_persona_1] * w.[Sexo_persona_1],2) +
			power(i.[Sexo_persona_2] * w.[Sexo_persona_2],2) +
			power(i.[Tip_actividad_mes_0] * w.[Tip_actividad_mes_0],2) +
			power(i.[Tip_actividad_mes_1] * w.[Tip_actividad_mes_1],2) +
			power(i.[Tip_actividad_mes_2] * w.[Tip_actividad_mes_2],2) +
			power(i.[Tip_actividad_mes_3] * w.[Tip_actividad_mes_3],2) +
			power(i.[Tip_actividad_mes_4] * w.[Tip_actividad_mes_4],2) +
			power(i.[Tip_actividad_mes_5] * w.[Tip_actividad_mes_5],2) +
			power(i.[Tip_actividad_mes_6] * w.[Tip_actividad_mes_6],2) +
			power(i.[Tip_actividad_mes_7] * w.[Tip_actividad_mes_7],2) +
			power(i.[Tip_cuidado_niños_1] * w.[Tip_cuidado_niños_1],2) +
			power(i.[Tip_cuidado_niños_2] * w.[Tip_cuidado_niños_2],2) +
			power(i.[Tip_cuidado_niños_3] * w.[Tip_cuidado_niños_3],2) +
			power(i.[Tip_cuidado_niños_4] * w.[Tip_cuidado_niños_4],2) +
			power(i.[Tip_cuidado_niños_5] * w.[Tip_cuidado_niños_5],2) +
			power(i.[Tip_cuidado_niños_6] * w.[Tip_cuidado_niños_6],2) +
			power(i.[Tip_cuidado_niños_7] * w.[Tip_cuidado_niños_7],2) +
			power(i.[Tip_cuidado_niños_8] * w.[Tip_cuidado_niños_8],2) +
			power(i.[Tip_documento_1] * w.[Tip_documento_1],2) +
			power(i.[Tip_documento_2] * w.[Tip_documento_2],2) +
			power(i.[Tip_documento_3] * w.[Tip_documento_3],2) +
			power(i.[Tip_documento_4] * w.[Tip_documento_4],2) +
			power(i.[Tip_documento_5] * w.[Tip_documento_5],2) +
			power(i.[Tip_documento_6] * w.[Tip_documento_6],2) +
			power(i.[Tip_documento_7] * w.[Tip_documento_7],2) +
			power(i.[Tip_documento_8] * w.[Tip_documento_8],2) +
			power(i.[Tip_empleado_1] * w.[Tip_empleado_1],2) +
			power(i.[Tip_empleado_10] * w.[Tip_empleado_10],2) +
			power(i.[Tip_empleado_2] * w.[Tip_empleado_2],2) +
			power(i.[Tip_empleado_3] * w.[Tip_empleado_3],2) +
			power(i.[Tip_empleado_4] * w.[Tip_empleado_4],2) +
			power(i.[Tip_empleado_5] * w.[Tip_empleado_5],2) +
			power(i.[Tip_empleado_6] * w.[Tip_empleado_6],2) +
			power(i.[Tip_empleado_7] * w.[Tip_empleado_7],2) +
			power(i.[Tip_empleado_8] * w.[Tip_empleado_8],2) +
			power(i.[Tip_empleado_9] * w.[Tip_empleado_9],2) +
			power(i.[Tip_estado_civil_1] * w.[Tip_estado_civil_1],2) +
			power(i.[Tip_estado_civil_2] * w.[Tip_estado_civil_2],2) +
			power(i.[Tip_estado_civil_3] * w.[Tip_estado_civil_3],2) +
			power(i.[Tip_estado_civil_4] * w.[Tip_estado_civil_4],2) +
			power(i.[Tip_estado_civil_5] * w.[Tip_estado_civil_5],2) +
			power(i.[Tip_parentesco_1] * w.[Tip_parentesco_1],2) +
			power(i.[Tip_parentesco_10] * w.[Tip_parentesco_10],2) +
			power(i.[Tip_parentesco_11] * w.[Tip_parentesco_11],2) +
			power(i.[Tip_parentesco_12] * w.[Tip_parentesco_12],2) +
			power(i.[Tip_parentesco_13] * w.[Tip_parentesco_13],2) +
			power(i.[Tip_parentesco_14] * w.[Tip_parentesco_14],2) +
			power(i.[Tip_parentesco_15] * w.[Tip_parentesco_15],2) +
			power(i.[Tip_parentesco_16] * w.[Tip_parentesco_16],2) +
			power(i.[Tip_parentesco_17] * w.[Tip_parentesco_17],2) +
			power(i.[Tip_parentesco_18] * w.[Tip_parentesco_18],2) +
			power(i.[Tip_parentesco_19] * w.[Tip_parentesco_19],2) +
			power(i.[Tip_parentesco_2] * w.[Tip_parentesco_2],2) +
			power(i.[Tip_parentesco_3] * w.[Tip_parentesco_3],2) +
			power(i.[Tip_parentesco_4] * w.[Tip_parentesco_4],2) +
			power(i.[Tip_parentesco_5] * w.[Tip_parentesco_5],2) +
			power(i.[Tip_parentesco_6] * w.[Tip_parentesco_6],2) +
			power(i.[Tip_parentesco_7] * w.[Tip_parentesco_7],2) +
			power(i.[Tip_parentesco_8] * w.[Tip_parentesco_8],2) +
			power(i.[Tip_parentesco_9] * w.[Tip_parentesco_9],2) +
			power(i.[Tip_Seg_social_0] * w.[Tip_Seg_social_0],2) +
			power(i.[Tip_Seg_social_1] * w.[Tip_Seg_social_1],2) +
			power(i.[Tip_Seg_social_2] * w.[Tip_Seg_social_2],2) +
			power(i.[Tip_Seg_social_3] * w.[Tip_Seg_social_3],2) +
			power(i.[Tip_Seg_social_9] * w.[Tip_Seg_social_9],2) +
			power(i.[Vlr_ingr_arriendos_nor] * w.[Vlr_ingr_arriendos_nor],2) +
			power(i.[Vlr_ingr_col_mayor_nor] * w.[Vlr_ingr_col_mayor_nor],2) +
			power(i.[Vlr_ingr_cosecha_nor] * w.[Vlr_ingr_cosecha_nor],2) +
			power(i.[Vlr_ingr_fam_accion_nor] * w.[Vlr_ingr_fam_accion_nor],2) +
			power(i.[Vlr_ingr_honorarios_nor] * w.[Vlr_ingr_honorarios_nor],2) +
			power(i.[Vlr_ingr_otro_subsidio_nor] * w.[Vlr_ingr_otro_subsidio_nor],2) +
			power(i.[Vlr_ingr_pension_nor] * w.[Vlr_ingr_pension_nor],2) +
			power(i.[Vlr_ingr_remesa_exterior_nor] * w.[Vlr_ingr_remesa_exterior_nor],2) +
			power(i.[Vlr_ingr_remesa_pais_nor] * w.[Vlr_ingr_remesa_pais_nor],2) +
			power(i.[Vlr_ingr_salario_nor] * w.[Vlr_ingr_salario_nor],2) +
			power(i.[Vlr_otros_ingresos_nor] * w.[Vlr_otros_ingresos_nor],2)) / sqrt(155), 2))
		from #personas_inputs i
		inner join #persona_weights w
			on 1 = 1

		declare @num_personas int
		select @num_personas = count(*) from #personas_inputs

		declare @curr float = sqrt(power(@currhv,2) + @currp_sum) / sqrt(@num_personas + 1)

		------------------
		-- set analysis --
		------------------

		declare @set_exists int
		select @set_exists = count(*) from [ML].[CNS_CategorySets] where Cluster = @cod_mpio

		declare @k tinyint
		declare @min float
		declare @max float
		declare @p_i float
		declare @tolerance float
		declare @p_ip1 float
		declare @evalMin float
		declare @evalMax float
		declare @minObs float
		declare @maxObs float
		declare @avgEval float
		declare @avgObs float
		declare @evalDist float
		declare @evalMinX float
		declare @evalMaxX float
		declare @alertMin float
		declare @alertMax float

		if @set_exists < 1 begin
			set @k = 0
			set @min = @curr
			set @max = @curr
			set @p_i = @curr
			set @tolerance = 0
			set @p_ip1 = (@k * @p_i + @curr) / (@k + 1)
			set @evalMin = @p_ip1
			set @evalMax = @p_ip1
			set @minObs = @curr
			set @maxObs = @curr
			set @avgEval = @p_ip1
			set @avgObs = @p_ip1
			set @evalDist = 0
			set @evalMinX = @p_ip1
			set @evalMaxX = @p_ip1
			set @alertMin = @p_ip1
			set @alertMax = @p_ip1

			insert into [ML].[CNS_CategorySets] (
				[Cluster]
				,[k]
				,[Min]
				,[Max]
				,[P_i]
				,[Curr]
				,[Tolerance]
				,[P_ip1]
				,[EvalMin]
				,[EvalMax]
				,[MinObs]
				,[MaxObs]
				,[AvgEval]
				,[AvgObs]
				,[EvalDist]
				,[EvalMinX]
				,[EvalMaxX]
				,[AlertMin]
				,[AlertMax]
			) values (
				@cod_mpio
				,@k
				,@min
				,@max
				,@p_i
				,@curr
				,@tolerance
				,@p_ip1
				,@evalMin
				,@evalMax
				,@minObs
				,@maxObs
				,@avgEval
				,@avgObs
				,@evalDist
				,@evalMinX
				,@evalMaxX
				,@alertMin
				,@alertMax
			)

			update [DAT].[CNS_HOGARES]
			set ML_Procesado = getutcdate(),
				ML_Irregular = 0
			where [Num_ficha] = @num_ficha and [Ide_hogar] = @ide_hogar
		end else begin
			declare @_k tinyint
			declare @_min float
			declare @_max float
			declare @_p_i float
			declare @_tolerance float
			declare @_p_ip1 float
			declare @_evalMin float
			declare @_evalMax float
			declare @_minObs float
			declare @_maxObs float
			declare @_avgEval float
			declare @_avgObs float
			declare @_evalDist float
			declare @_evalMinX float
			declare @_evalMaxX float
			declare @_alertMin float
			declare @_alertMax float

			select
				@_k = k
				,@_min = [Min]
				,@_max = [Max]
				,@_p_i = [P_i]
				,@_tolerance =  [Tolerance]
				,@_p_ip1 = [P_ip1]
				,@_evalMin = [EvalMin]
				,@_evalMax = [EvalMax]
				,@_minObs = [MinObs]
				,@_maxObs = [MaxObs]
				,@_avgEval = [AvgEval]
				,@_avgObs = [AvgObs]
				,@_evalDist = [EvalDist]
				,@_evalMinX = [EvalMinX]
				,@_evalMaxX = [EvalMaxX]
				,@_alertMin = [AlertMin]
				,@_alertMax = [AlertMax]
			from [ML].[CNS_CategorySets]
			where Cluster = @cod_mpio

			set @k = case when @_k + 1 > 12 then 12 else @_k + 1 end
			set @min = case when @_evalMinX < @curr then @_evalMinX else @curr end
			set @max = case when @_evalMaxX > @curr then @_evalMaxX else @curr end
			set @p_i = @_p_ip1
			set @tolerance = ABS(@max - @_min) * exp(exp(1) - pi())
			set @p_ip1 = (@k * @p_i + @curr) / (@k + 1)
			set @evalMin = case when @_max < (@p_ip1 - @tolerance) * (1 - EXP(EXP(1) - PI())) * 0.01 + @_min then @max else (@p_ip1 - @tolerance) * (1 - EXP(EXP(1) - PI())) * 0.01 + @_min end
			set @evalMax = case when @_min > @_max - (@p_ip1 + @tolerance) * (1 - EXP(EXP(1) - PI())) * 0.01 then @_min else @_max - (@p_ip1 + @tolerance) * (1 - EXP(EXP(1) - PI())) * 0.01 end
			set @minObs = case when @curr < @_minObs then @curr else @_minObs end
			set @maxObs = case when @curr > @_maxObs then @curr else @_maxObs end
			set @avgEval = (@_avgEval * 2 + (@evalMin + @evalMax) / 2) / 3
			set @avgObs = (@minObs + @maxObs) / 2
			set @evalDist = ABS(@evalMax - @evalMin) / 2
			set @evalMinX = @avgEval - @evalDist
			set @evalMaxX = @avgEval + @evalDist
			set @alertMin = @avgEval - (1 + EXP(EXP(1) - PI())) * @evalDist
			set @alertMax = @avgEval + (1 + EXP(EXP(1) - PI())) * @evalDist

			declare @irregular bit = case when @k >= 12 and (@curr < @evalMinX or @curr > @evalMaxX) then 1 else 0 end

			update [ML].[CNS_CategorySets]
			set k = @k
				,[Min] = @min
				,[Max] = @max
				,[P_i] = @p_i
				,[Curr] = @curr
				,[Tolerance] = @tolerance
				,[P_ip1] = @p_ip1
				,[EvalMin] = @evalMin
				,[EvalMax] = @evalMax
				,[MinObs] = @minObs
				,[MaxObs] = @maxObs
				,[AvgEval] = @avgEval
				,[AvgObs] = @avgObs
				,[EvalDist] = @evalDist
				,[EvalMinX] = @evalMinX
				,[EvalMaxX] = @evalMaxX
				,[AlertMin] = @alertMin
				,[AlertMax] = @alertMax
			where Cluster = @cod_mpio

			update [DAT].[CNS_HOGARES]
			set ML_Procesado = getutcdate(),
				ML_Irregular = @irregular
			where [Num_ficha] = @num_ficha and [Ide_hogar] = @ide_hogar
		end

		INSERT INTO [ML].[CNS_VIVIENDAS_Logs]
           ([Num_paquete]
           ,[Cod_dpto]
           ,[Cod_mpio]
           ,[Num_ficha]
           ,[Ide_hogar]
           ,[Fec_evaluado]
           ,[Tip_vivienda]
           ,[Tip_mat_paredes]
           ,[Tip_mat_pisos]
           ,[Ind_tiene_energia]
		   ,[Tip_estrato_energia]
           ,[Ind_tiene_alcantarillado]
           ,[Ind_tiene_gas]
           ,[Ind_tiene_recoleccion]
           ,[Ind_tiene_acueducto]
           ,[Tip_estrato_acueducto]
           ,[Num_cuartos_vivienda]
           ,[Num_hogares_vivienda])
		select
			@num_paquete
           ,@cod_dpto
           ,@cod_mpio
           ,@num_ficha
           ,@ide_hogar
           ,getutcdate()
           ,case when i.Tip_vivienda_1 = 1 then
				w.Tip_vivienda_1
			else case when i.Tip_vivienda_2 = 1 then
				w.Tip_vivienda_2
			else case when i.Tip_vivienda_3 = 1 then
				w.Tip_vivienda_3
			else case when i.Tip_vivienda_4 = 1 then
				w.Tip_vivienda_4
			else
				w.Tip_vivienda_5
			end end end end Tip_vivienda
           ,case when i.Tip_mat_paredes_0 = 1 then
				w.Tip_mat_paredes_0
			else case when i.Tip_mat_paredes_1 = 1 then
				w.Tip_mat_paredes_1
			else case when i.Tip_mat_paredes_2 = 1 then
				w.Tip_mat_paredes_2
			else case when i.Tip_mat_paredes_3 = 1 then
				w.Tip_mat_paredes_3
			else case when i.Tip_mat_paredes_4 = 1 then
				w.Tip_mat_paredes_4
			else case when i.Tip_mat_paredes_5 = 1 then
				w.Tip_mat_paredes_5
			else case when i.Tip_mat_paredes_6 = 1 then
				w.Tip_mat_paredes_6
			else
				w.Tip_mat_paredes_7
			end end end end end end end Tip_mat_paredes
           ,case when i.Tip_mat_pisos_1 = 1 then
				w.Tip_mat_pisos_1
			else case when i.Tip_mat_pisos_2 = 1 then
				w.Tip_mat_pisos_2
			else case when i.Tip_mat_pisos_3 = 1 then
				w.Tip_mat_pisos_3
			else case when i.Tip_mat_pisos_4 = 1 then
				w.Tip_mat_pisos_4
			else case when i.Tip_mat_pisos_5 = 1 then
				w.Tip_mat_pisos_5
			else
				w.Tip_mat_pisos_6
			end end end end end Tip_mat_pisos
           ,case when i.Ind_tiene_energia_1 = 1 then
				w.Ind_tiene_energia_1
			else
				w.Ind_tiene_energia_2
			end Ind_tiene_energia
           ,case when i.Tip_estrato_energia_1 = 1 then
				w.Tip_estrato_energia_1
			else
				w.Tip_estrato_energia_2
			end Tip_estrato_energia
		   ,case when i.Ind_tiene_alcantarillado_1 = 1 then
				w.Ind_tiene_alcantarillado_1
			else
				w.Ind_tiene_energia_2
			end Ind_tiene_alcantarillado
           ,case when i.Ind_tiene_gas_1 = 1 then
				w.Ind_tiene_gas_1
			else
				w.Ind_tiene_gas_2
			end Ind_tiene_gas
           ,case when i.Ind_tiene_recoleccion_1 = 1 then
				w.Ind_tiene_recoleccion_1
			else
				w.Ind_tiene_recoleccion_2
			end Ind_tiene_recoleccion
           ,case when i.Ind_tiene_acueducto_1 = 1 then
				w.Ind_tiene_acueducto_1
			else
				w.Ind_tiene_acueducto_2
			end Ind_tiene_acueducto
           ,case when i.Tip_estrato_acueducto_1 = 1 then
				w.Tip_estrato_acueducto_1
			else
				w.Tip_estrato_acueducto_2
			end Tip_estrato_acueducto
           ,i.Num_cuartos_vivienda_nor Num_cuartos_vivienda
           ,i.Num_hogares_vivienda_nor Num_hogares_vivienda
		from #weights w
		inner join #inputs i
			on 1 = 1

		INSERT INTO [ML].[CNS_HOGARES_Logs]
           ([Num_paquete]
           ,[Cod_dpto]
           ,[Cod_mpio]
           ,[Num_ficha]
           ,[Ide_hogar]
           ,[Fec_evaluado]
           ,[Tip_ocupa_vivienda]
           ,[Num_cuartos_exclusivos]
           ,[Num_cuartos_dormir]
           ,[Num_cuartos_unicos_dormir]
           ,[Tip_sanitario]
           ,[Tip_ubi_sanitario]
           ,[Tip_uso_sanitario]
           ,[Tip_origen_agua]
           ,[Ind_agua_llega_7dias]
           ,[Num_dias_llega]
           ,[Ind_agua_llega_24horas]
           ,[Num_horas_llega]
           ,[Tip_uso_agua_beber]
           ,[Tip_elimina_basura]
           ,[Ind_tiene_cocina]
           ,[Tip_prepara_alimentos]
           ,[Tip_uso_cocina]
           ,[Tip_energia_cocina]
           ,[Ind_tiene_nevera]
           ,[Ind_tiene_lavadora]
           ,[Ind_tiene_pc]
           ,[Ind_tiene_internet]
           ,[Ind_tiene_moto]
           ,[Ind_tiene_tractor]
           ,[Ind_tiene_carro]
           ,[Ind_tiene_bien_raiz]
           ,[Ind_gasto_alimento]
           ,[Vlr_gasto_alimento]
           ,[Ind_gasto_transporte]
           ,[Vlr_gasto_transporte]
           ,[Ind_gasto_educacion]
           ,[Vlr_gasto_educacion]
           ,[Ind_gasto_salud]
           ,[Vlr_gasto_salud]
           ,[Ind_gasto_serv_publicos]
           ,[Vlr_gasto_serv_publicos]
           ,[Ind_gasto_celular]
           ,[Vlr_gasto_celular]
           ,[Ind_gasto_arriendo]
           ,[Vlr_gasto_arriendo]
           ,[Ind_gasto_otros]
           ,[Vlr_gasto_otros]
           ,[Vlr_total_gastos]
           ,[Num_habita_vivienda]
           ,[Ind_evento_inundacion]
           ,[Num_evento_inundacion]
           ,[Ind_evento_avalancha]
           ,[Num_evento_avalancha]
           ,[Ind_evento_terremoto]
           ,[Num_evento_terremoto]
           ,[Ind_evento_incendio]
           ,[Num_evento_incendio]
           ,[Ind_evento_vendaval]
           ,[Num_evento_vendaval]
           ,[Ind_evento_hundimiento]
           ,[Num_evento_hundimiento]
           ,[Num_personas_posibles]
           ,[Num_personas_hogar]
           ,[res_visita])
		select
            @num_paquete
           ,@cod_dpto
           ,@cod_mpio
           ,@num_ficha
           ,@ide_hogar
           ,getutcdate()
           ,case when i.Tip_ocupa_vivienda_1 = 1 then
				w.Tip_ocupa_vivienda_1
			else case when i.Tip_ocupa_vivienda_2 = 1 then
				w.Tip_ocupa_vivienda_2
			else case when i.Tip_ocupa_vivienda_3 = 1 then
				w.Tip_ocupa_vivienda_3
			else case when i.Tip_ocupa_vivienda_4 = 1 then
				w.Tip_ocupa_vivienda_4
			else
				w.Tip_ocupa_vivienda_5
			end end end end Tip_ocupa_vivienda
           ,i.Num_cuartos_exclusivos_nor Num_cuartos_exclusivos
           ,i.Num_cuartos_dormir_nor Num_cuartos_dormir
           ,i.Num_cuartos_unicos_dormir_nor Num_cuartos_unicos_dormir
           ,case when i.Tip_sanitario_1 = 1 then
				w.Tip_sanitario_1
		    else case when i.Tip_sanitario_2 = 1 then
				w.Tip_sanitario_2
			else case when i.Tip_sanitario_3 = 1 then
				w.Tip_sanitario_3
			else case when i.Tip_sanitario_4 = 1 then
				w.Tip_sanitario_4
			else
				w.Tip_sanitario_5
		    end end end end Tip_sanitario
           ,case when i.Tip_ubi_sanitario_1 = 1 then
				w.Tip_ubi_sanitario_1
			else
				w.Tip_ubi_sanitario_2
			end Tip_ubi_sanitario
           ,case when i.Tip_uso_sanitario_1 = 1 then
				w.Tip_uso_sanitario_1
		    else case when i.Tip_uso_sanitario_2 = 1 then
				w.Tip_uso_sanitario_2
			else
				w.Tip_uso_sanitario_3
		    end end Tip_uso_sanitario
           ,case when i.Tip_origen_agua_1 = 1 then
				w.Tip_origen_agua_1
			else case when i.Tip_origen_agua_2 = 1 then
				w.Tip_origen_agua_2
			else case when i.Tip_origen_agua_3 = 1 then
				w.Tip_origen_agua_3
			else case when i.Tip_origen_agua_4 = 1 then
				w.Tip_origen_agua_4
			else case when i.Tip_origen_agua_5 = 1 then
				w.Tip_origen_agua_5
			else case when i.Tip_origen_agua_6 = 1 then
				w.Tip_origen_agua_6
			else case when i.Tip_origen_agua_7 = 1 then
				w.Tip_origen_agua_7
			else case when i.Tip_origen_agua_8 = 1 then
				w.Tip_origen_agua_8
			else
				w.Tip_origen_agua_9
		    end end end end end end end end Tip_origen_agua
           ,case when i.Ind_agua_llega_7dias_1 = 1 then
				w.Ind_agua_llega_7dias_1
			else
				w.Ind_agua_llega_7dias_2
			end Ind_agua_llega_7dias
           ,i.Num_dias_llega_nor Num_dias_llega
           ,case when i.Ind_agua_llega_24horas_1 = 1 then
				w.Ind_agua_llega_24horas_1
			else
				w.Ind_agua_llega_24horas_2
			end Ind_agua_llega_24horas
           ,i.Num_horas_llega_nor Num_horas_llega
           ,case when i.Tip_uso_agua_beber_1 = 1 then
				w.Tip_uso_agua_beber_1
			else case when i.Tip_uso_agua_beber_2 = 1 then
				w.Tip_uso_agua_beber_2
			else case when i.Tip_uso_agua_beber_3 = 1 then
				w.Tip_uso_agua_beber_3
			else case when i.Tip_uso_agua_beber_4 = 1 then
				w.Tip_uso_agua_beber_4
			else case when i.Tip_uso_agua_beber_5 = 1 then
				w.Tip_uso_agua_beber_5
			else
				w.Tip_uso_agua_beber_6
			end end end end end Tip_uso_agua_beber
           ,case when i.Tip_elimina_basura_1 = 1 then
				w.Tip_elimina_basura_1
			else case when i.Tip_elimina_basura_2 = 1 then
				w.Tip_elimina_basura_2
			else case when i.Tip_elimina_basura_3 = 1 then
				w.Tip_elimina_basura_3
			else case when i.Tip_elimina_basura_4 = 1 then
				w.Tip_elimina_basura_4
			else case when i.Tip_elimina_basura_5 = 1 then
				w.Tip_elimina_basura_5
			else case when i.Tip_elimina_basura_6 = 1 then
				w.Tip_elimina_basura_6
			else
				w.Tip_elimina_basura_7
			end end end end end end Tip_elimina_basura
           ,case when i.Ind_tiene_cocina_1 = 1 then
				w.Ind_tiene_cocina_1
			else
				w.Ind_tiene_cocina_2
			end Ind_tiene_cocina
           ,case when i.Tip_prepara_alimentos_1 = 1 then
				w.Tip_prepara_alimentos_1
			else case when i.Tip_prepara_alimentos_2 = 1 then
				w.Tip_prepara_alimentos_2
			else case when i.Tip_prepara_alimentos_3 = 1 then
				w.Tip_prepara_alimentos_3
			else case when i.Tip_prepara_alimentos_4 = 1 then
				w.Tip_prepara_alimentos_4
			else
				w.Tip_prepara_alimentos_5
			end end end end Tip_prepara_alimentos
           ,case when i.Tip_uso_cocina_1 = 1 then
				w.Tip_uso_cocina_1
			else case when i.Tip_uso_cocina_2 = 1 then
				w.Tip_uso_cocina_2
			else
				w.Tip_uso_cocina_3
			end end Tip_uso_cocina
           ,case when i.Tip_energia_cocina_1 = 1 then
				w.Tip_energia_cocina_1
			else case when i.Tip_energia_cocina_2 = 1 then
				w.Tip_energia_cocina_2
			else case when i.Tip_energia_cocina_3 = 1 then
				w.Tip_energia_cocina_3
			else case when i.Tip_energia_cocina_4 = 1 then
				w.Tip_energia_cocina_4
			else case when i.Tip_energia_cocina_5 = 1 then
				w.Tip_energia_cocina_5
			else case when i.Tip_energia_cocina_6 = 1 then
				w.Tip_energia_cocina_6
			else
				w.Tip_energia_cocina_7
			end end end end end end Tip_energia_cocina
           ,case when i.Ind_tiene_nevera_1 = 1 then
				w.Ind_tiene_nevera_1
			else
				w.Ind_tiene_nevera_2
			end Ind_tiene_nevera
           ,case when i.Ind_tiene_lavadora_1 = 1 then
				w.Ind_tiene_lavadora_1
			else
				w.Ind_tiene_lavadora_2
			end Ind_tiene_lavadora
           ,case when i.Ind_tiene_pc_1 = 1 then
				w.Ind_tiene_pc_1
			else
				w.Ind_tiene_pc_2
			end Ind_tiene_pc
           ,case when i.Ind_tiene_internet_1 = 1 then
				w.Ind_tiene_internet_1
			else
				w.Ind_tiene_internet_2
			end Ind_tiene_internet
           ,case when i.Ind_tiene_moto_1 = 1 then
				w.Ind_tiene_moto_1
			else
				w.Ind_tiene_moto_2
			end Ind_tiene_moto
           ,case when i.Ind_tiene_tractor_1 = 1 then
				w.Ind_tiene_tractor_1
			else
				w.Ind_tiene_tractor_2
			end Ind_tiene_tractor
           ,case when i.Ind_tiene_carro_1 = 1 then
				w.Ind_tiene_carro_1
			else
				w.Ind_tiene_carro_2
			end Ind_tiene_carro
           ,case when i.Ind_tiene_bien_raiz_1 = 1 then
				w.Ind_tiene_bien_raiz_1
			else
				w.Ind_tiene_bien_raiz_2
			end Ind_tiene_bien_raiz
           ,case when i.Ind_gasto_alimento_1 = 1 then
				w.Ind_gasto_alimento_1
			else case when i.Ind_gasto_alimento_2 = 1 then
				w.Ind_gasto_alimento_2
			else
				w.Ind_gasto_alimento_9
			end end Ind_gasto_alimento
           ,i.Vlr_gasto_alimento_nor Vlr_gasto_alimento
           ,case when i.Ind_gasto_transporte_1 = 1 then
				w.Ind_gasto_transporte_1
			else case when i.Ind_gasto_transporte_2 = 1 then
				w.Ind_gasto_transporte_2
			else
				w.Ind_gasto_transporte_9
			end end Ind_gasto_transporte
           ,i.Vlr_gasto_transporte_nor Vlr_gasto_transporte
           ,case when i.Ind_gasto_educacion_1 = 1 then
				w.Ind_gasto_educacion_1
			else case when i.Ind_gasto_educacion_2 = 1 then
				w.Ind_gasto_educacion_2
			else
				w.Ind_gasto_educacion_9
			end end Ind_gasto_educacion
           ,i.Vlr_gasto_educacion_nor Vlr_gasto_educacion
           ,case when i.Ind_gasto_salud_1 = 1 then
				w.Ind_gasto_salud_1
			else case when i.Ind_gasto_salud_2 = 1 then
				w.Ind_gasto_salud_2
			else
				w.Ind_gasto_salud_9
			end end Ind_gasto_salud
           ,i.Vlr_gasto_salud_nor Vlr_gasto_salud
           ,case when i.Ind_gasto_serv_publicos_1 = 1 then
				w.Ind_gasto_serv_publicos_1
			else case when i.Ind_gasto_serv_publicos_2 = 1 then
				w.Ind_gasto_serv_publicos_2
			else
				w.Ind_gasto_serv_publicos_9
			end end Ind_gasto_serv_publicos
           ,i.Vlr_gasto_serv_publicos_nor Vlr_gasto_serv_publicos
           ,case when i.Ind_gasto_celular_1 = 1 then
				w.Ind_gasto_celular_1
			else case when i.Ind_gasto_celular_2 = 1 then
				w.Ind_gasto_celular_2
			else
				w.Ind_gasto_celular_9
			end end Ind_gasto_celular
           ,i.Vlr_gasto_celular_nor Vlr_gasto_celular
           ,case when i.Ind_gasto_arriendo_1 = 1 then
				w.Ind_gasto_arriendo_1
			else case when i.Ind_gasto_arriendo_2 = 1 then
				w.Ind_gasto_arriendo_2
			else
				w.Ind_gasto_arriendo_9
			end end Ind_gasto_arriendo
           ,i.Vlr_gasto_arriendo_nor Vlr_gasto_arriendo
           ,case when i.Ind_gasto_otros_1 = 1 then
				w.Ind_gasto_otros_1
			else case when i.Ind_gasto_otros_2 = 1 then
				w.Ind_gasto_otros_2
			else
				w.Ind_gasto_otros_9
			end end Ind_gasto_otros
           ,i.Vlr_gasto_otros_nor Vlr_gasto_otros
           ,i.Vlr_total_gastos_nor Vlr_total_gastos
           ,case when i.Num_habita_vivienda_1 = 1 then
				w.Num_habita_vivienda_1
			else case when i.Num_habita_vivienda_2 = 1 then
				w.Num_habita_vivienda_2
			else case when i.Num_habita_vivienda_3 = 1 then
				w.Num_habita_vivienda_3
			else
				w.Num_habita_vivienda_4
			end end end Num_habita_vivienda
           ,case when i.Ind_evento_inundacion_1 = 1 then
				w.Ind_evento_inundacion_1
			else
				w.Ind_evento_inundacion_2
			end Ind_evento_inundacion
           ,i.Num_evento_inundacion_nor Num_evento_inundacion
           ,case when i.Ind_evento_avalancha_1 = 1 then
				w.Ind_evento_avalancha_1
			else
				w.Ind_evento_avalancha_2
			end Ind_evento_avalancha
           ,i.Num_evento_avalancha_nor Num_evento_avalancha
           ,case when i.Ind_evento_terremoto_1 = 1 then
				w.Ind_evento_terremoto_1
			else
				w.Ind_evento_terremoto_2
			end Ind_evento_terremoto
           ,i.Num_evento_terremoto_nor Num_evento_terremoto
           ,case when i.Ind_evento_incendio_1 = 1 then
				w.Ind_evento_incendio_1
			else
				w.Ind_evento_incendio_2
			end Ind_evento_incendio
           ,i.Num_evento_incendio_nor Num_evento_incendio
           ,case when i.Ind_evento_vendaval_1 = 1 then
				w.Ind_evento_vendaval_1
			else
				w.Ind_evento_vendaval_2
			end Ind_evento_vendaval
           ,i.Num_evento_vendaval_nor Num_evento_vendaval
           ,case when i.Ind_evento_hundimiento_1 = 1 then
				w.Ind_evento_hundimiento_1
			else
				w.Ind_evento_hundimiento_2
			end Ind_evento_hundimiento
           ,i.Num_evento_hundimiento_nor Num_evento_hundimiento
           ,i.Num_personas_posibles_nor Num_personas_posibles
           ,i.Num_personas_hogar_nor Num_personas_hogar
           ,case when i.res_visita_1 = 1 then
				w.res_visita_1
			else case when i.res_visita_2 = 1 then
				w.res_visita_2
			else case when i.res_visita_3 = 1 then
				w.res_visita_3
			else case when i.res_visita_4 = 1 then
				w.res_visita_4
			else case when i.res_visita_5 = 1 then
				w.res_visita_5
			else case when i.res_visita_6 = 1 then
				w.res_visita_6
			else
				w.res_visita_7
			end end end end end end res_visita
		from #weights w
		inner join #inputs i
			on 1 = 1

		INSERT INTO [ML].[CNS_HogarViviendaNeuronsLogs]
           ([Cluster]
           ,[Num_ficha]
           ,[Ide_hogar]
           ,[Ind_agua_llega_24horas_1]
           ,[Ind_agua_llega_24horas_2]
           ,[Ind_agua_llega_7dias_1]
           ,[Ind_agua_llega_7dias_2]
           ,[Ind_evento_avalancha_1]
           ,[Ind_evento_avalancha_2]
           ,[Ind_evento_hundimiento_1]
           ,[Ind_evento_hundimiento_2]
           ,[Ind_evento_incendio_1]
           ,[Ind_evento_incendio_2]
           ,[Ind_evento_inundacion_1]
           ,[Ind_evento_inundacion_2]
           ,[Ind_evento_terremoto_1]
           ,[Ind_evento_terremoto_2]
           ,[Ind_evento_vendaval_1]
           ,[Ind_evento_vendaval_2]
           ,[Ind_gasto_alimento_1]
           ,[Ind_gasto_alimento_2]
           ,[Ind_gasto_alimento_9]
           ,[Ind_gasto_arriendo_1]
           ,[Ind_gasto_arriendo_2]
           ,[Ind_gasto_arriendo_9]
           ,[Ind_gasto_celular_1]
           ,[Ind_gasto_celular_2]
           ,[Ind_gasto_celular_9]
           ,[Ind_gasto_educacion_1]
           ,[Ind_gasto_educacion_2]
           ,[Ind_gasto_educacion_9]
           ,[Ind_gasto_otros_1]
           ,[Ind_gasto_otros_2]
           ,[Ind_gasto_otros_9]
           ,[Ind_gasto_salud_1]
           ,[Ind_gasto_salud_2]
           ,[Ind_gasto_salud_9]
           ,[Ind_gasto_serv_publicos_1]
           ,[Ind_gasto_serv_publicos_2]
           ,[Ind_gasto_serv_publicos_9]
           ,[Ind_gasto_transporte_1]
           ,[Ind_gasto_transporte_2]
           ,[Ind_gasto_transporte_9]
           ,[Ind_tiene_acueducto_1]
           ,[Ind_tiene_acueducto_2]
           ,[Ind_tiene_alcantarillado_1]
           ,[Ind_tiene_alcantarillado_2]
           ,[Ind_tiene_bien_raiz_1]
           ,[Ind_tiene_bien_raiz_2]
           ,[Ind_tiene_carro_1]
           ,[Ind_tiene_carro_2]
           ,[Ind_tiene_cocina_1]
           ,[Ind_tiene_cocina_2]
           ,[Ind_tiene_energia_1]
           ,[Ind_tiene_energia_2]
           ,[Ind_tiene_gas_1]
           ,[Ind_tiene_gas_2]
           ,[Ind_tiene_internet_1]
           ,[Ind_tiene_internet_2]
           ,[Ind_tiene_lavadora_1]
           ,[Ind_tiene_lavadora_2]
           ,[Ind_tiene_moto_1]
           ,[Ind_tiene_moto_2]
           ,[Ind_tiene_nevera_1]
           ,[Ind_tiene_nevera_2]
           ,[Ind_tiene_pc_1]
           ,[Ind_tiene_pc_2]
           ,[Ind_tiene_recoleccion_1]
           ,[Ind_tiene_recoleccion_2]
           ,[Ind_tiene_tractor_1]
           ,[Ind_tiene_tractor_2]
           ,[Num_cuartos_dormir_nor]
           ,[Num_cuartos_exclusivos_nor]
           ,[Num_cuartos_unicos_dormir_nor]
           ,[Num_cuartos_vivienda_nor]
           ,[Num_dias_llega_nor]
           ,[Num_evento_avalancha_nor]
           ,[Num_evento_hundimiento_nor]
           ,[Num_evento_incendio_nor]
           ,[Num_evento_inundacion_nor]
           ,[Num_evento_terremoto_nor]
           ,[Num_evento_vendaval_nor]
           ,[Num_habita_vivienda_1]
           ,[Num_habita_vivienda_2]
           ,[Num_habita_vivienda_3]
           ,[Num_habita_vivienda_4]
           ,[Num_hogares_vivienda_nor]
           ,[Num_horas_llega_nor]
           ,[Num_personas_hogar_nor]
           ,[Num_personas_posibles_nor]
           ,[res_visita_1]
           ,[res_visita_2]
           ,[res_visita_3]
           ,[res_visita_4]
           ,[res_visita_5]
           ,[res_visita_6]
           ,[res_visita_7]
           ,[Tip_elimina_basura_1]
           ,[Tip_elimina_basura_2]
           ,[Tip_elimina_basura_3]
           ,[Tip_elimina_basura_4]
           ,[Tip_elimina_basura_5]
           ,[Tip_elimina_basura_6]
           ,[Tip_elimina_basura_7]
           ,[Tip_energia_cocina_1]
           ,[Tip_energia_cocina_2]
           ,[Tip_energia_cocina_3]
           ,[Tip_energia_cocina_4]
           ,[Tip_energia_cocina_5]
           ,[Tip_energia_cocina_6]
           ,[Tip_energia_cocina_7]
           ,[Tip_estrato_acueducto_1]
           ,[Tip_estrato_acueducto_2]
           ,[Tip_estrato_energia_1]
           ,[Tip_estrato_energia_2]
           ,[Tip_mat_paredes_0]
           ,[Tip_mat_paredes_1]
           ,[Tip_mat_paredes_2]
           ,[Tip_mat_paredes_3]
           ,[Tip_mat_paredes_4]
           ,[Tip_mat_paredes_5]
           ,[Tip_mat_paredes_6]
           ,[Tip_mat_paredes_7]
           ,[Tip_mat_pisos_1]
           ,[Tip_mat_pisos_2]
           ,[Tip_mat_pisos_3]
           ,[Tip_mat_pisos_4]
           ,[Tip_mat_pisos_5]
           ,[Tip_mat_pisos_6]
           ,[Tip_ocupa_vivienda_1]
           ,[Tip_ocupa_vivienda_2]
           ,[Tip_ocupa_vivienda_3]
           ,[Tip_ocupa_vivienda_4]
           ,[Tip_ocupa_vivienda_5]
           ,[Tip_origen_agua_1]
           ,[Tip_origen_agua_2]
           ,[Tip_origen_agua_3]
           ,[Tip_origen_agua_4]
           ,[Tip_origen_agua_5]
           ,[Tip_origen_agua_6]
           ,[Tip_origen_agua_7]
           ,[Tip_origen_agua_8]
           ,[Tip_origen_agua_9]
           ,[Tip_prepara_alimentos_1]
           ,[Tip_prepara_alimentos_2]
           ,[Tip_prepara_alimentos_3]
           ,[Tip_prepara_alimentos_4]
           ,[Tip_prepara_alimentos_5]
           ,[Tip_sanitario_1]
           ,[Tip_sanitario_2]
           ,[Tip_sanitario_3]
           ,[Tip_sanitario_4]
           ,[Tip_sanitario_5]
           ,[Tip_ubi_sanitario_1]
           ,[Tip_ubi_sanitario_2]
           ,[Tip_uso_agua_beber_1]
           ,[Tip_uso_agua_beber_2]
           ,[Tip_uso_agua_beber_3]
           ,[Tip_uso_agua_beber_4]
           ,[Tip_uso_agua_beber_5]
           ,[Tip_uso_agua_beber_6]
           ,[Tip_uso_cocina_1]
           ,[Tip_uso_cocina_2]
           ,[Tip_uso_cocina_3]
           ,[Tip_uso_sanitario_1]
           ,[Tip_uso_sanitario_2]
           ,[Tip_uso_sanitario_3]
           ,[Tip_vivienda_1]
           ,[Tip_vivienda_2]
           ,[Tip_vivienda_3]
           ,[Tip_vivienda_4]
           ,[Tip_vivienda_5]
           ,[Vlr_gasto_alimento_nor]
           ,[Vlr_gasto_arriendo_nor]
           ,[Vlr_gasto_celular_nor]
           ,[Vlr_gasto_educacion_nor]
           ,[Vlr_gasto_otros_nor]
           ,[Vlr_gasto_salud_nor]
           ,[Vlr_gasto_serv_publicos_nor]
           ,[Vlr_gasto_transporte_nor]
           ,[Vlr_total_gastos_nor])
		select
           @cod_mpio
           ,@num_ficha
           ,@ide_hogar
		   ,[Ind_agua_llega_24horas_1]
           ,[Ind_agua_llega_24horas_2]
           ,[Ind_agua_llega_7dias_1]
           ,[Ind_agua_llega_7dias_2]
           ,[Ind_evento_avalancha_1]
           ,[Ind_evento_avalancha_2]
           ,[Ind_evento_hundimiento_1]
           ,[Ind_evento_hundimiento_2]
           ,[Ind_evento_incendio_1]
           ,[Ind_evento_incendio_2]
           ,[Ind_evento_inundacion_1]
           ,[Ind_evento_inundacion_2]
           ,[Ind_evento_terremoto_1]
           ,[Ind_evento_terremoto_2]
           ,[Ind_evento_vendaval_1]
           ,[Ind_evento_vendaval_2]
           ,[Ind_gasto_alimento_1]
           ,[Ind_gasto_alimento_2]
           ,[Ind_gasto_alimento_9]
           ,[Ind_gasto_arriendo_1]
           ,[Ind_gasto_arriendo_2]
           ,[Ind_gasto_arriendo_9]
           ,[Ind_gasto_celular_1]
           ,[Ind_gasto_celular_2]
           ,[Ind_gasto_celular_9]
           ,[Ind_gasto_educacion_1]
           ,[Ind_gasto_educacion_2]
           ,[Ind_gasto_educacion_9]
           ,[Ind_gasto_otros_1]
           ,[Ind_gasto_otros_2]
           ,[Ind_gasto_otros_9]
           ,[Ind_gasto_salud_1]
           ,[Ind_gasto_salud_2]
           ,[Ind_gasto_salud_9]
           ,[Ind_gasto_serv_publicos_1]
           ,[Ind_gasto_serv_publicos_2]
           ,[Ind_gasto_serv_publicos_9]
           ,[Ind_gasto_transporte_1]
           ,[Ind_gasto_transporte_2]
           ,[Ind_gasto_transporte_9]
           ,[Ind_tiene_acueducto_1]
           ,[Ind_tiene_acueducto_2]
           ,[Ind_tiene_alcantarillado_1]
           ,[Ind_tiene_alcantarillado_2]
           ,[Ind_tiene_bien_raiz_1]
           ,[Ind_tiene_bien_raiz_2]
           ,[Ind_tiene_carro_1]
           ,[Ind_tiene_carro_2]
           ,[Ind_tiene_cocina_1]
           ,[Ind_tiene_cocina_2]
           ,[Ind_tiene_energia_1]
           ,[Ind_tiene_energia_2]
           ,[Ind_tiene_gas_1]
           ,[Ind_tiene_gas_2]
           ,[Ind_tiene_internet_1]
           ,[Ind_tiene_internet_2]
           ,[Ind_tiene_lavadora_1]
           ,[Ind_tiene_lavadora_2]
           ,[Ind_tiene_moto_1]
           ,[Ind_tiene_moto_2]
           ,[Ind_tiene_nevera_1]
           ,[Ind_tiene_nevera_2]
           ,[Ind_tiene_pc_1]
           ,[Ind_tiene_pc_2]
           ,[Ind_tiene_recoleccion_1]
           ,[Ind_tiene_recoleccion_2]
           ,[Ind_tiene_tractor_1]
           ,[Ind_tiene_tractor_2]
           ,[Num_cuartos_dormir_nor]
           ,[Num_cuartos_exclusivos_nor]
           ,[Num_cuartos_unicos_dormir_nor]
           ,[Num_cuartos_vivienda_nor]
           ,[Num_dias_llega_nor]
           ,[Num_evento_avalancha_nor]
           ,[Num_evento_hundimiento_nor]
           ,[Num_evento_incendio_nor]
           ,[Num_evento_inundacion_nor]
           ,[Num_evento_terremoto_nor]
           ,[Num_evento_vendaval_nor]
           ,[Num_habita_vivienda_1]
           ,[Num_habita_vivienda_2]
           ,[Num_habita_vivienda_3]
           ,[Num_habita_vivienda_4]
           ,[Num_hogares_vivienda_nor]
           ,[Num_horas_llega_nor]
           ,[Num_personas_hogar_nor]
           ,[Num_personas_posibles_nor]
           ,[res_visita_1]
           ,[res_visita_2]
           ,[res_visita_3]
           ,[res_visita_4]
           ,[res_visita_5]
           ,[res_visita_6]
           ,[res_visita_7]
           ,[Tip_elimina_basura_1]
           ,[Tip_elimina_basura_2]
           ,[Tip_elimina_basura_3]
           ,[Tip_elimina_basura_4]
           ,[Tip_elimina_basura_5]
           ,[Tip_elimina_basura_6]
           ,[Tip_elimina_basura_7]
           ,[Tip_energia_cocina_1]
           ,[Tip_energia_cocina_2]
           ,[Tip_energia_cocina_3]
           ,[Tip_energia_cocina_4]
           ,[Tip_energia_cocina_5]
           ,[Tip_energia_cocina_6]
           ,[Tip_energia_cocina_7]
           ,[Tip_estrato_acueducto_1]
           ,[Tip_estrato_acueducto_2]
           ,[Tip_estrato_energia_1]
           ,[Tip_estrato_energia_2]
           ,[Tip_mat_paredes_0]
           ,[Tip_mat_paredes_1]
           ,[Tip_mat_paredes_2]
           ,[Tip_mat_paredes_3]
           ,[Tip_mat_paredes_4]
           ,[Tip_mat_paredes_5]
           ,[Tip_mat_paredes_6]
           ,[Tip_mat_paredes_7]
           ,[Tip_mat_pisos_1]
           ,[Tip_mat_pisos_2]
           ,[Tip_mat_pisos_3]
           ,[Tip_mat_pisos_4]
           ,[Tip_mat_pisos_5]
           ,[Tip_mat_pisos_6]
           ,[Tip_ocupa_vivienda_1]
           ,[Tip_ocupa_vivienda_2]
           ,[Tip_ocupa_vivienda_3]
           ,[Tip_ocupa_vivienda_4]
           ,[Tip_ocupa_vivienda_5]
           ,[Tip_origen_agua_1]
           ,[Tip_origen_agua_2]
           ,[Tip_origen_agua_3]
           ,[Tip_origen_agua_4]
           ,[Tip_origen_agua_5]
           ,[Tip_origen_agua_6]
           ,[Tip_origen_agua_7]
           ,[Tip_origen_agua_8]
           ,[Tip_origen_agua_9]
           ,[Tip_prepara_alimentos_1]
           ,[Tip_prepara_alimentos_2]
           ,[Tip_prepara_alimentos_3]
           ,[Tip_prepara_alimentos_4]
           ,[Tip_prepara_alimentos_5]
           ,[Tip_sanitario_1]
           ,[Tip_sanitario_2]
           ,[Tip_sanitario_3]
           ,[Tip_sanitario_4]
           ,[Tip_sanitario_5]
           ,[Tip_ubi_sanitario_1]
           ,[Tip_ubi_sanitario_2]
           ,[Tip_uso_agua_beber_1]
           ,[Tip_uso_agua_beber_2]
           ,[Tip_uso_agua_beber_3]
           ,[Tip_uso_agua_beber_4]
           ,[Tip_uso_agua_beber_5]
           ,[Tip_uso_agua_beber_6]
           ,[Tip_uso_cocina_1]
           ,[Tip_uso_cocina_2]
           ,[Tip_uso_cocina_3]
           ,[Tip_uso_sanitario_1]
           ,[Tip_uso_sanitario_2]
           ,[Tip_uso_sanitario_3]
           ,[Tip_vivienda_1]
           ,[Tip_vivienda_2]
           ,[Tip_vivienda_3]
           ,[Tip_vivienda_4]
           ,[Tip_vivienda_5]
           ,[Vlr_gasto_alimento_nor]
           ,[Vlr_gasto_arriendo_nor]
           ,[Vlr_gasto_celular_nor]
           ,[Vlr_gasto_educacion_nor]
           ,[Vlr_gasto_otros_nor]
           ,[Vlr_gasto_salud_nor]
           ,[Vlr_gasto_serv_publicos_nor]
           ,[Vlr_gasto_transporte_nor]
           ,[Vlr_total_gastos_nor]
		from #weights

		INSERT INTO [ML].[CNS_PERSONAS_Logs]
           ([Num_paquete]
           ,[Cod_dpto]
           ,[Cod_mpio]
           ,[Num_ficha]
           ,[Ide_hogar]
		   ,[Ide_persona]
           ,[Fec_evaluado]
           ,[Fec_nacimiento]
           ,[Grado_alcanzado]
           ,[Ind_acudio_salud]
           ,[Ind_conyuge_vive_hogar]
           ,[Ind_discap_bañarse]
           ,[Ind_discap_entender]
           ,[Ind_discap_hablar]
           ,[Ind_discap_moverse]
           ,[Ind_discap_ninguna]
           ,[Ind_discap_oir]
           ,[Ind_discap_salir]
           ,[Ind_discap_ver]
           ,[Ind_enfermo_30]
           ,[Ind_esta_embarazada]
           ,[Ind_estudia]
           ,[Ind_fondo_pensiones]
           ,[Ind_fue_atendido_salud]
           ,[Ind_ingr_arriendos]
           ,[Ind_ingr_cosecha]
           ,[Ind_ingr_estado]
           ,[Ind_ingr_honorarios]
           ,[Ind_ingr_pension]
           ,[Ind_ingr_remesa_exterior]
           ,[Ind_ingr_remesa_pais]
           ,[Ind_ingr_salario]
           ,[Ind_leer_escribir]
           ,[Ind_otros_ingresos]
           ,[Ind_padre_vive_hogar]
           ,[Ind_pariente_domestico]
           ,[Ind_recibe_comida]
           ,[Ind_tuvo_hijos]
           ,[Niv_educativo]
           ,[Num_mes_ingr_cosecha]
           ,[Num_sem_buscando]
           ,[Sexo_persona]
           ,[Tip_actividad_mes]
           ,[Tip_cuidado_niños]
           ,[Tip_documento]
           ,[Tip_empleado]
           ,[Tip_estado_civil]
           ,[Tip_parentesco]
           ,[Tip_Seg_social]
           ,[Vlr_ingr_arriendos]
           ,[Vlr_ingr_col_mayor]
           ,[Vlr_ingr_cosecha]
           ,[Vlr_ingr_fam_accion]
           ,[Vlr_ingr_honorarios]
           ,[Vlr_ingr_otro_subsidio]
           ,[Vlr_ingr_pension]
           ,[Vlr_ingr_remesa_exterior]
           ,[Vlr_ingr_remesa_pais]
           ,[Vlr_ingr_salario]
           ,[Vlr_otros_ingresos])
		select
            @num_paquete
           ,@cod_dpto
           ,@cod_mpio
           ,@num_ficha
           ,@ide_hogar
		   ,i.Ide_persona
           ,getutcdate()
           ,i.Fec_nacimiento_nor Fec_nacimiento
           ,i.Grado_alcanzado_nor Grado_alcanzado
           ,case when i.Ind_acudio_salud_1 = 1 then
				w.Ind_acudio_salud_1
			else
				w.Ind_acudio_salud_2
			end Ind_acudio_salud
           ,case when i.Ind_conyuge_vive_hogar_1 = 1 then
				w.Ind_conyuge_vive_hogar_1
			else
				w.Ind_conyuge_vive_hogar_2
			end Ind_conyuge_vive_hogar
           ,case when i.Ind_discap_bañarse_1 = 1 then
				w.Ind_discap_bañarse_1
			else
				w.Ind_discap_bañarse_2
			end Ind_discap_bañarse
           ,case when i.Ind_discap_entender_1 = 1 then
				w.Ind_discap_entender_1
			else
				w.Ind_discap_entender_2
			end Ind_discap_entender
           ,case when i.Ind_discap_hablar_1 = 1 then
				w.Ind_discap_hablar_1
			else
				w.Ind_discap_hablar_2
			end Ind_discap_hablar
           ,case when i.Ind_discap_moverse_1 = 1 then
				w.Ind_discap_moverse_1
			else
				w.Ind_discap_moverse_2
			end Ind_discap_moverse
           ,case when i.Ind_discap_ninguna_1 = 1 then
				w.Ind_discap_ninguna_1
			else
				w.Ind_discap_ninguna_2
			end Ind_discap_ninguna
           ,case when i.Ind_discap_oir_1 = 1 then
				w.Ind_discap_oir_1
			else
				w.Ind_discap_oir_2
			end Ind_discap_oir
           ,case when i.Ind_discap_salir_1 = 1 then
				w.Ind_discap_salir_1
			else
				w.Ind_discap_salir_2
			end Ind_discap_salir
           ,case when i.Ind_discap_ver_1 = 1 then
				w.Ind_discap_ver_1
			else
				w.Ind_discap_ver_2
			end Ind_discap_ver
           ,case when i.Ind_enfermo_30_1 = 1 then
				w.Ind_enfermo_30_1
			else
				w.Ind_enfermo_30_2
			end Ind_enfermo_30
           ,case when i.Ind_esta_embarazada_1 = 1 then
				w.Ind_esta_embarazada_1
			else
				w.Ind_esta_embarazada_2
			end Ind_esta_embarazada
           ,case when i.Ind_estudia_1 = 1 then
				w.Ind_estudia_1
			else
				w.Ind_estudia_2
			end Ind_estudia
           ,case when i.Ind_fondo_pensiones_1 = 1 then
				w.Ind_fondo_pensiones_1
			else case when i.Ind_fondo_pensiones_2 = 1 then
				w.Ind_fondo_pensiones_2
			else
				w.Ind_fondo_pensiones_3
			end end Ind_fondo_pensiones
           ,case when i.Ind_fue_atendido_salud_1 = 1 then
				w.Ind_fue_atendido_salud_1
			else
				w.Ind_fue_atendido_salud_2
			end Ind_fue_atendido_salud
           ,case when i.Ind_ingr_arriendos_1 = 1 then
				w.Ind_ingr_arriendos_1
			else case when i.Ind_ingr_arriendos_2 = 1 then
				w.Ind_ingr_arriendos_2
			else
				w.Ind_ingr_arriendos_9
			end end Ind_ingr_arriendos
           ,case when i.Ind_ingr_cosecha_1 = 1 then
				w.Ind_ingr_cosecha_1
			else
				w.Ind_ingr_cosecha_2
			end Ind_ingr_cosecha
           ,case when i.Ind_ingr_estado_1 = 1 then
				w.Ind_ingr_estado_1
			else
				w.Ind_ingr_estado_2
			end Ind_ingr_estado
           ,case when i.Ind_ingr_honorarios_1 = 1 then
				w.Ind_ingr_honorarios_1
			else case when i.Ind_ingr_honorarios_2 = 1 then
				w.Ind_ingr_honorarios_2
			else
				w.Ind_ingr_honorarios_9
			end end Ind_ingr_honorarios
           ,case when i.Ind_ingr_pension_1 = 1 then
				w.Ind_ingr_pension_1
			else case when i.Ind_ingr_pension_2 = 1 then
				w.Ind_ingr_pension_2
			else
				w.Ind_ingr_pension_9
			end end Ind_ingr_pension
           ,case when i.Ind_ingr_remesa_exterior_1 = 1 then
				w.Ind_ingr_remesa_exterior_1
			else case when i.Ind_ingr_remesa_exterior_2 = 1 then
				w.Ind_ingr_remesa_exterior_2
			else
				w.Ind_ingr_remesa_exterior_9
			end end Ind_ingr_remesa_exterior
           ,case when i.Ind_ingr_remesa_pais_1 = 1 then
				w.Ind_ingr_remesa_pais_1
			else case when i.Ind_ingr_remesa_pais_2 = 1 then
				w.Ind_ingr_remesa_pais_2
			else
				w.Ind_ingr_remesa_pais_9
			end end Ind_ingr_remesa_pais
           ,case when i.Ind_ingr_salario_1 = 1 then
				w.Ind_ingr_salario_1
			else case when i.Ind_ingr_salario_2 = 1 then
				w.Ind_ingr_salario_2
			else
				w.Ind_ingr_salario_9
			end end Ind_ingr_salario
           ,case when i.Ind_leer_escribir_1 = 1 then
				w.Ind_leer_escribir_1
			else
				w.Ind_leer_escribir_2
			end Ind_leer_escribir
           ,case when i.Ind_otros_ingresos_1 = 1 then
				w.Ind_otros_ingresos_1
			else case when i.Ind_otros_ingresos_2 = 1 then
				w.Ind_otros_ingresos_2
			else
				w.Ind_otros_ingresos_9
			end end Ind_otros_ingresos
           ,case when i.Ind_padre_vive_hogar_1 = 1 then
				w.Ind_padre_vive_hogar_1
			else
				w.Ind_padre_vive_hogar_2
			end Ind_padre_vive_hogar
           ,case when i.Ind_pariente_domestico_1 = 1 then
				w.Ind_pariente_domestico_1
			else
				w.Ind_pariente_domestico_2
			end Ind_pariente_domestico
           ,case when i.Ind_recibe_comida_1 = 1 then
				w.Ind_recibe_comida_1
			else
				w.Ind_recibe_comida_2
			end Ind_recibe_comida
           ,case when i.Ind_tuvo_hijos_1 = 1 then
				w.Ind_tuvo_hijos_1
			else
				w.Ind_tuvo_hijos_2
			end Ind_tuvo_hijos
           ,case when i.Niv_educativo_0 = 1 then
				w.Niv_educativo_0
			else case when i.Niv_educativo_1 = 1 then
				w.Niv_educativo_1
			else case when i.Niv_educativo_2 = 1 then
				w.Niv_educativo_2
			else case when i.Niv_educativo_3 = 1 then
				w.Niv_educativo_3
			else case when i.Niv_educativo_4 = 1 then
				w.Niv_educativo_4
			else case when i.Niv_educativo_5 = 1 then
				w.Niv_educativo_5
			else case when i.Niv_educativo_6 = 1 then
				w.Niv_educativo_6
			else
				w.Niv_educativo_7
			end end end end end end end Niv_educativo
           ,i.Num_mes_ingr_cosecha_nor Num_mes_ingr_cosecha
           ,i.Num_sem_buscando_nor Num_sem_buscando
           ,case when i.Sexo_persona_1 = 1 then
				w.Sexo_persona_1
			else
				w.Sexo_persona_2
			end Sexo_persona
           ,case when i.Tip_actividad_mes_0 = 1 then
				w.Tip_actividad_mes_0
			else case when i.Tip_actividad_mes_1 = 1 then
				w.Tip_actividad_mes_1
			else case when i.Tip_actividad_mes_2 = 1 then
				w.Tip_actividad_mes_2
			else case when i.Tip_actividad_mes_3 = 1 then
				w.Tip_actividad_mes_3
			else case when i.Tip_actividad_mes_4 = 1 then
				w.Tip_actividad_mes_4
			else case when i.Tip_actividad_mes_5 = 1 then
				w.Tip_actividad_mes_5
			else case when i.Tip_actividad_mes_6 = 1 then
				w.Tip_actividad_mes_6
			else
				w.Tip_actividad_mes_7
			end end end end end end end Tip_actividad_mes
           ,case when i.Tip_cuidado_niños_1 = 1 then
				w.Tip_cuidado_niños_1
			else case when i.Tip_cuidado_niños_2 = 1 then
				w.Tip_cuidado_niños_2
			else case when i.Tip_cuidado_niños_3 = 1 then
				w.Tip_cuidado_niños_3
			else case when i.Tip_cuidado_niños_4 = 1 then
				w.Tip_cuidado_niños_4
			else case when i.Tip_cuidado_niños_5 = 1 then
				w.Tip_cuidado_niños_5
			else case when i.Tip_cuidado_niños_6 = 1 then
				w.Tip_cuidado_niños_6
			else case when i.Tip_cuidado_niños_7 = 1 then
				w.Tip_cuidado_niños_7
			else
				w.Tip_cuidado_niños_8
			end end end end end end end Tip_cuidado_niños
           ,case when i.Tip_documento_1 = 1 then
				w.Tip_documento_1
			else case when i.Tip_documento_2 = 1 then
				w.Tip_documento_2
			else case when i.Tip_documento_3 = 1 then
				w.Tip_documento_3
			else case when i.Tip_documento_4 = 1 then
				w.Tip_documento_4
			else case when i.Tip_documento_5 = 1 then
				w.Tip_documento_5
			else case when i.Tip_documento_6 = 1 then
				w.Tip_documento_6
			else case when i.Tip_documento_7 = 1 then
				w.Tip_documento_7
			else
				w.Tip_documento_8
			end end end end end end end Tip_documento
           ,case when i.Tip_empleado_1 = 1 then
				w.Tip_empleado_1
			else case when i.Tip_empleado_2 = 1 then
				w.Tip_empleado_2
			else case when i.Tip_empleado_3 = 1 then
				w.Tip_empleado_3
			else case when i.Tip_empleado_4 = 1 then
				w.Tip_empleado_4
			else case when i.Tip_empleado_5 = 1 then
				w.Tip_empleado_5
			else case when i.Tip_empleado_6 = 1 then
				w.Tip_empleado_6
			else case when i.Tip_empleado_7 = 1 then
				w.Tip_empleado_7
			else case when i.Tip_empleado_8 = 1 then
				w.Tip_empleado_8
			else case when i.Tip_empleado_9 = 1 then
				w.Tip_empleado_9
			else
				w.Tip_empleado_10
			end end end end end end end end end Tip_empleado
           ,case when i.Tip_estado_civil_1 = 1 then
				w.Tip_estado_civil_1
			else case when i.Tip_estado_civil_2 = 1 then
				w.Tip_estado_civil_2
			else case when i.Tip_estado_civil_3 = 1 then
				w.Tip_estado_civil_3
			else case when i.Tip_estado_civil_4 = 1 then
				w.Tip_estado_civil_4
			else
				w.Tip_estado_civil_5
			end end end end Tip_estado_civil
           ,coalesce(case when i.Tip_parentesco_1 = 1 then
				w.Tip_parentesco_1
			else case when i.Tip_parentesco_10 = 1 then
				w.Tip_parentesco_10
			else case when i.Tip_parentesco_11 = 1 then
				w.Tip_parentesco_11
			else case when i.Tip_parentesco_12 = 1 then
				w.Tip_parentesco_12
			else case when i.Tip_parentesco_13 = 1 then
				w.Tip_parentesco_13
			else case when i.Tip_parentesco_14 = 1 then
				w.Tip_parentesco_14
			else case when i.Tip_parentesco_15 = 1 then
				w.Tip_parentesco_15
			else case when i.Tip_parentesco_16 = 1 then
				w.Tip_parentesco_16
			else case when i.Tip_parentesco_17 = 1 then
				w.Tip_parentesco_17
			else
				null
			end end end end end end end end end,
			case when i.Tip_parentesco_18 = 1 then
				w.Tip_parentesco_18
			else case when i.Tip_parentesco_19 = 1 then
				w.Tip_parentesco_19
			else case when i.Tip_parentesco_2 = 1 then
				w.Tip_parentesco_2
			else case when i.Tip_parentesco_3 = 1 then
				w.Tip_parentesco_3
			else case when i.Tip_parentesco_4 = 1 then
				w.Tip_parentesco_4
			else case when i.Tip_parentesco_5 = 1 then
				w.Tip_parentesco_5
			else case when i.Tip_parentesco_6 = 1 then
				w.Tip_parentesco_6
			else case when i.Tip_parentesco_7 = 1 then
				w.Tip_parentesco_7
			else case when i.Tip_parentesco_8 = 1 then
				w.Tip_parentesco_8
			else
				w.Tip_parentesco_9
			end end end end end end end end end) Tip_parentesco
           ,case when i.Tip_Seg_social_0 = 1 then
				w.Tip_Seg_social_0
			else case when i.Tip_Seg_social_1 = 1 then
				w.Tip_Seg_social_1
			else case when i.Tip_Seg_social_2 = 1 then
				w.Tip_Seg_social_2
			else case when i.Tip_Seg_social_3 = 1 then
				w.Tip_Seg_social_3
			else
				w.Tip_Seg_social_9
			end end end end Tip_Seg_social
           ,i.Vlr_ingr_arriendos_nor Vlr_ingr_arriendos
           ,i.Vlr_ingr_col_mayor_nor Vlr_ingr_col_mayor
           ,i.Vlr_ingr_cosecha_nor Vlr_ingr_cosecha
           ,i.Vlr_ingr_fam_accion_nor Vlr_ingr_fam_accion
           ,i.Vlr_ingr_honorarios_nor Vlr_ingr_honorarios
           ,i.Vlr_ingr_otro_subsidio_nor Vlr_ingr_otro_subsidio
           ,i.Vlr_ingr_pension_nor Vlr_ingr_pension
           ,i.Vlr_ingr_remesa_exterior_nor Vlr_ingr_remesa_exterior_nor
           ,i.Vlr_ingr_remesa_pais_nor Vlr_ingr_remesa_pais
           ,i.Vlr_ingr_salario_nor Vlr_ingr_salario
           ,i.Vlr_otros_ingresos_nor Vlr_otros_ingresos
		from #persona_weights w
		inner join #personas_inputs i
			on 1 = 1

		INSERT INTO [ML].[CNS_PersonaNeuronsLogs]
           ([Cluster]
           ,[Num_ficha]
           ,[Ide_hogar]
           ,[Fec_nacimiento_nor]
           ,[Grado_alcanzado_nor]
           ,[Ind_acudio_salud_1]
           ,[Ind_acudio_salud_2]
           ,[Ind_conyuge_vive_hogar_1]
           ,[Ind_conyuge_vive_hogar_2]
           ,[Ind_discap_bañarse_1]
           ,[Ind_discap_bañarse_2]
           ,[Ind_discap_entender_1]
           ,[Ind_discap_entender_2]
           ,[Ind_discap_hablar_1]
           ,[Ind_discap_hablar_2]
           ,[Ind_discap_moverse_1]
           ,[Ind_discap_moverse_2]
           ,[Ind_discap_ninguna_1]
           ,[Ind_discap_ninguna_2]
           ,[Ind_discap_oir_1]
           ,[Ind_discap_oir_2]
           ,[Ind_discap_salir_1]
           ,[Ind_discap_salir_2]
           ,[Ind_discap_ver_1]
           ,[Ind_discap_ver_2]
           ,[Ind_enfermo_30_1]
           ,[Ind_enfermo_30_2]
           ,[Ind_esta_embarazada_1]
           ,[Ind_esta_embarazada_2]
           ,[Ind_estudia_1]
           ,[Ind_estudia_2]
           ,[Ind_fondo_pensiones_1]
           ,[Ind_fondo_pensiones_2]
           ,[Ind_fondo_pensiones_3]
           ,[Ind_fue_atendido_salud_1]
           ,[Ind_fue_atendido_salud_2]
           ,[Ind_ingr_arriendos_1]
           ,[Ind_ingr_arriendos_2]
           ,[Ind_ingr_arriendos_9]
           ,[Ind_ingr_cosecha_1]
           ,[Ind_ingr_cosecha_2]
           ,[Ind_ingr_cosecha_9]
           ,[Ind_ingr_estado_1]
           ,[Ind_ingr_estado_2]
           ,[Ind_ingr_honorarios_1]
           ,[Ind_ingr_honorarios_2]
           ,[Ind_ingr_honorarios_9]
           ,[Ind_ingr_pension_1]
           ,[Ind_ingr_pension_2]
           ,[Ind_ingr_pension_9]
           ,[Ind_ingr_remesa_exterior_1]
           ,[Ind_ingr_remesa_exterior_2]
           ,[Ind_ingr_remesa_exterior_9]
           ,[Ind_ingr_remesa_pais_1]
           ,[Ind_ingr_remesa_pais_2]
           ,[Ind_ingr_remesa_pais_9]
           ,[Ind_ingr_salario_1]
           ,[Ind_ingr_salario_2]
           ,[Ind_ingr_salario_9]
           ,[Ind_leer_escribir_1]
           ,[Ind_leer_escribir_2]
           ,[Ind_otros_ingresos_1]
           ,[Ind_otros_ingresos_2]
           ,[Ind_otros_ingresos_9]
           ,[Ind_padre_vive_hogar_1]
           ,[Ind_padre_vive_hogar_2]
           ,[Ind_pariente_domestico_1]
           ,[Ind_pariente_domestico_2]
           ,[Ind_recibe_comida_1]
           ,[Ind_recibe_comida_2]
           ,[Ind_tuvo_hijos_1]
           ,[Ind_tuvo_hijos_2]
           ,[Niv_educativo_0]
           ,[Niv_educativo_1]
           ,[Niv_educativo_2]
           ,[Niv_educativo_3]
           ,[Niv_educativo_4]
           ,[Niv_educativo_5]
           ,[Niv_educativo_6]
           ,[Niv_educativo_7]
           ,[Num_mes_ingr_cosecha_nor]
           ,[Num_sem_buscando_nor]
           ,[Sexo_persona_1]
           ,[Sexo_persona_2]
           ,[Tip_actividad_mes_0]
           ,[Tip_actividad_mes_1]
           ,[Tip_actividad_mes_2]
           ,[Tip_actividad_mes_3]
           ,[Tip_actividad_mes_4]
           ,[Tip_actividad_mes_5]
           ,[Tip_actividad_mes_6]
           ,[Tip_actividad_mes_7]
           ,[Tip_cuidado_niños_1]
           ,[Tip_cuidado_niños_2]
           ,[Tip_cuidado_niños_3]
           ,[Tip_cuidado_niños_4]
           ,[Tip_cuidado_niños_5]
           ,[Tip_cuidado_niños_6]
           ,[Tip_cuidado_niños_7]
           ,[Tip_cuidado_niños_8]
           ,[Tip_documento_1]
           ,[Tip_documento_2]
           ,[Tip_documento_3]
           ,[Tip_documento_4]
           ,[Tip_documento_5]
           ,[Tip_documento_6]
           ,[Tip_documento_7]
           ,[Tip_documento_8]
           ,[Tip_empleado_1]
           ,[Tip_empleado_10]
           ,[Tip_empleado_2]
           ,[Tip_empleado_3]
           ,[Tip_empleado_4]
           ,[Tip_empleado_5]
           ,[Tip_empleado_6]
           ,[Tip_empleado_7]
           ,[Tip_empleado_8]
           ,[Tip_empleado_9]
           ,[Tip_estado_civil_1]
           ,[Tip_estado_civil_2]
           ,[Tip_estado_civil_3]
           ,[Tip_estado_civil_4]
           ,[Tip_estado_civil_5]
           ,[Tip_parentesco_1]
           ,[Tip_parentesco_10]
           ,[Tip_parentesco_11]
           ,[Tip_parentesco_12]
           ,[Tip_parentesco_13]
           ,[Tip_parentesco_14]
           ,[Tip_parentesco_15]
           ,[Tip_parentesco_16]
           ,[Tip_parentesco_17]
           ,[Tip_parentesco_18]
           ,[Tip_parentesco_19]
           ,[Tip_parentesco_2]
           ,[Tip_parentesco_3]
           ,[Tip_parentesco_4]
           ,[Tip_parentesco_5]
           ,[Tip_parentesco_6]
           ,[Tip_parentesco_7]
           ,[Tip_parentesco_8]
           ,[Tip_parentesco_9]
           ,[Tip_Seg_social_0]
           ,[Tip_Seg_social_1]
           ,[Tip_Seg_social_2]
           ,[Tip_Seg_social_3]
           ,[Tip_Seg_social_9]
           ,[Vlr_ingr_arriendos_nor]
           ,[Vlr_ingr_col_mayor_nor]
           ,[Vlr_ingr_cosecha_nor]
           ,[Vlr_ingr_fam_accion_nor]
           ,[Vlr_ingr_honorarios_nor]
           ,[Vlr_ingr_otro_subsidio_nor]
           ,[Vlr_ingr_pension_nor]
           ,[Vlr_ingr_remesa_exterior_nor]
           ,[Vlr_ingr_remesa_pais_nor]
           ,[Vlr_ingr_salario_nor]
           ,[Vlr_otros_ingresos_nor])
		select
           @cod_mpio
           ,@num_ficha
           ,@ide_hogar
           ,[Fec_nacimiento_nor]
           ,[Grado_alcanzado_nor]
           ,[Ind_acudio_salud_1]
           ,[Ind_acudio_salud_2]
           ,[Ind_conyuge_vive_hogar_1]
           ,[Ind_conyuge_vive_hogar_2]
           ,[Ind_discap_bañarse_1]
           ,[Ind_discap_bañarse_2]
           ,[Ind_discap_entender_1]
           ,[Ind_discap_entender_2]
           ,[Ind_discap_hablar_1]
           ,[Ind_discap_hablar_2]
           ,[Ind_discap_moverse_1]
           ,[Ind_discap_moverse_2]
           ,[Ind_discap_ninguna_1]
           ,[Ind_discap_ninguna_2]
           ,[Ind_discap_oir_1]
           ,[Ind_discap_oir_2]
           ,[Ind_discap_salir_1]
           ,[Ind_discap_salir_2]
           ,[Ind_discap_ver_1]
           ,[Ind_discap_ver_2]
           ,[Ind_enfermo_30_1]
           ,[Ind_enfermo_30_2]
           ,[Ind_esta_embarazada_1]
           ,[Ind_esta_embarazada_2]
           ,[Ind_estudia_1]
           ,[Ind_estudia_2]
           ,[Ind_fondo_pensiones_1]
           ,[Ind_fondo_pensiones_2]
           ,[Ind_fondo_pensiones_3]
           ,[Ind_fue_atendido_salud_1]
           ,[Ind_fue_atendido_salud_2]
           ,[Ind_ingr_arriendos_1]
           ,[Ind_ingr_arriendos_2]
           ,[Ind_ingr_arriendos_9]
           ,[Ind_ingr_cosecha_1]
           ,[Ind_ingr_cosecha_2]
           ,[Ind_ingr_cosecha_9]
           ,[Ind_ingr_estado_1]
           ,[Ind_ingr_estado_2]
           ,[Ind_ingr_honorarios_1]
           ,[Ind_ingr_honorarios_2]
           ,[Ind_ingr_honorarios_9]
           ,[Ind_ingr_pension_1]
           ,[Ind_ingr_pension_2]
           ,[Ind_ingr_pension_9]
           ,[Ind_ingr_remesa_exterior_1]
           ,[Ind_ingr_remesa_exterior_2]
           ,[Ind_ingr_remesa_exterior_9]
           ,[Ind_ingr_remesa_pais_1]
           ,[Ind_ingr_remesa_pais_2]
           ,[Ind_ingr_remesa_pais_9]
           ,[Ind_ingr_salario_1]
           ,[Ind_ingr_salario_2]
           ,[Ind_ingr_salario_9]
           ,[Ind_leer_escribir_1]
           ,[Ind_leer_escribir_2]
           ,[Ind_otros_ingresos_1]
           ,[Ind_otros_ingresos_2]
           ,[Ind_otros_ingresos_9]
           ,[Ind_padre_vive_hogar_1]
           ,[Ind_padre_vive_hogar_2]
           ,[Ind_pariente_domestico_1]
           ,[Ind_pariente_domestico_2]
           ,[Ind_recibe_comida_1]
           ,[Ind_recibe_comida_2]
           ,[Ind_tuvo_hijos_1]
           ,[Ind_tuvo_hijos_2]
           ,[Niv_educativo_0]
           ,[Niv_educativo_1]
           ,[Niv_educativo_2]
           ,[Niv_educativo_3]
           ,[Niv_educativo_4]
           ,[Niv_educativo_5]
           ,[Niv_educativo_6]
           ,[Niv_educativo_7]
           ,[Num_mes_ingr_cosecha_nor]
           ,[Num_sem_buscando_nor]
           ,[Sexo_persona_1]
           ,[Sexo_persona_2]
           ,[Tip_actividad_mes_0]
           ,[Tip_actividad_mes_1]
           ,[Tip_actividad_mes_2]
           ,[Tip_actividad_mes_3]
           ,[Tip_actividad_mes_4]
           ,[Tip_actividad_mes_5]
           ,[Tip_actividad_mes_6]
           ,[Tip_actividad_mes_7]
           ,[Tip_cuidado_niños_1]
           ,[Tip_cuidado_niños_2]
           ,[Tip_cuidado_niños_3]
           ,[Tip_cuidado_niños_4]
           ,[Tip_cuidado_niños_5]
           ,[Tip_cuidado_niños_6]
           ,[Tip_cuidado_niños_7]
           ,[Tip_cuidado_niños_8]
           ,[Tip_documento_1]
           ,[Tip_documento_2]
           ,[Tip_documento_3]
           ,[Tip_documento_4]
           ,[Tip_documento_5]
           ,[Tip_documento_6]
           ,[Tip_documento_7]
           ,[Tip_documento_8]
           ,[Tip_empleado_1]
           ,[Tip_empleado_10]
           ,[Tip_empleado_2]
           ,[Tip_empleado_3]
           ,[Tip_empleado_4]
           ,[Tip_empleado_5]
           ,[Tip_empleado_6]
           ,[Tip_empleado_7]
           ,[Tip_empleado_8]
           ,[Tip_empleado_9]
           ,[Tip_estado_civil_1]
           ,[Tip_estado_civil_2]
           ,[Tip_estado_civil_3]
           ,[Tip_estado_civil_4]
           ,[Tip_estado_civil_5]
           ,[Tip_parentesco_1]
           ,[Tip_parentesco_10]
           ,[Tip_parentesco_11]
           ,[Tip_parentesco_12]
           ,[Tip_parentesco_13]
           ,[Tip_parentesco_14]
           ,[Tip_parentesco_15]
           ,[Tip_parentesco_16]
           ,[Tip_parentesco_17]
           ,[Tip_parentesco_18]
           ,[Tip_parentesco_19]
           ,[Tip_parentesco_2]
           ,[Tip_parentesco_3]
           ,[Tip_parentesco_4]
           ,[Tip_parentesco_5]
           ,[Tip_parentesco_6]
           ,[Tip_parentesco_7]
           ,[Tip_parentesco_8]
           ,[Tip_parentesco_9]
           ,[Tip_Seg_social_0]
           ,[Tip_Seg_social_1]
           ,[Tip_Seg_social_2]
           ,[Tip_Seg_social_3]
           ,[Tip_Seg_social_9]
           ,[Vlr_ingr_arriendos_nor]
           ,[Vlr_ingr_col_mayor_nor]
           ,[Vlr_ingr_cosecha_nor]
           ,[Vlr_ingr_fam_accion_nor]
           ,[Vlr_ingr_honorarios_nor]
           ,[Vlr_ingr_otro_subsidio_nor]
           ,[Vlr_ingr_pension_nor]
           ,[Vlr_ingr_remesa_exterior_nor]
           ,[Vlr_ingr_remesa_pais_nor]
           ,[Vlr_ingr_salario_nor]
           ,[Vlr_otros_ingresos_nor]
		from #persona_weights

		update [ML].[CNS_HogarViviendaNeurons]
		set [Ind_agua_llega_24horas_1] = (case when i.[Ind_agua_llega_24horas_1] > 0 then 1 else 0 end + w.[Ind_agua_llega_24horas_1]) / (case when i.[Ind_agua_llega_24horas_1] > 0 then 1 else 0 end + w.[Ind_agua_llega_24horas_1] + case when i.[Ind_agua_llega_24horas_2] > 0 then 1 else 0 end + w.[Ind_agua_llega_24horas_2])
			,[Ind_agua_llega_24horas_2] = (case when i.[Ind_agua_llega_24horas_2] > 0 then 1 else 0 end + w.[Ind_agua_llega_24horas_2]) / (case when i.[Ind_agua_llega_24horas_1] > 0 then 1 else 0 end + w.[Ind_agua_llega_24horas_1] + case when i.[Ind_agua_llega_24horas_2] > 0 then 1 else 0 end + w.[Ind_agua_llega_24horas_2])
			,[Ind_agua_llega_7dias_1] = (case when i.[Ind_agua_llega_7dias_1] > 0 then 1 else 0 end + w.[Ind_agua_llega_7dias_1]) / (case when i.[Ind_agua_llega_7dias_1] > 0 then 1 else 0 end + w.[Ind_agua_llega_7dias_1] + case when i.[Ind_agua_llega_7dias_2] > 0 then 1 else 0 end + w.[Ind_agua_llega_7dias_2])
			,[Ind_agua_llega_7dias_2] = (case when i.[Ind_agua_llega_7dias_2] > 0 then 1 else 0 end + w.[Ind_agua_llega_7dias_2]) / (case when i.[Ind_agua_llega_7dias_1] > 0 then 1 else 0 end + w.[Ind_agua_llega_7dias_1] + case when i.[Ind_agua_llega_7dias_2] > 0 then 1 else 0 end + w.[Ind_agua_llega_7dias_2])
			,[Ind_evento_avalancha_1] = (case when i.[Ind_evento_avalancha_1] > 0 then 1 else 0 end + w.[Ind_evento_avalancha_1]) / (case when i.[Ind_evento_avalancha_1] > 0 then 1 else 0 end + w.[Ind_evento_avalancha_1] + case when i.[Ind_evento_avalancha_2] > 0 then 1 else 0 end + w.[Ind_evento_avalancha_2])
			,[Ind_evento_avalancha_2] = (case when i.[Ind_evento_avalancha_2] > 0 then 1 else 0 end + w.[Ind_evento_avalancha_2]) / (case when i.[Ind_evento_avalancha_1] > 0 then 1 else 0 end + w.[Ind_evento_avalancha_1] + case when i.[Ind_evento_avalancha_2] > 0 then 1 else 0 end + w.[Ind_evento_avalancha_2])
			,[Ind_evento_hundimiento_1] = (case when i.[Ind_evento_hundimiento_1] > 0 then 1 else 0 end + w.[Ind_evento_hundimiento_1]) / (case when i.[Ind_evento_hundimiento_1] > 0 then 1 else 0 end + w.[Ind_evento_hundimiento_1] + case when i.[Ind_evento_hundimiento_2] > 0 then 1 else 0 end + w.[Ind_evento_hundimiento_2])
			,[Ind_evento_hundimiento_2] = (case when i.[Ind_evento_hundimiento_2] > 0 then 1 else 0 end + w.[Ind_evento_hundimiento_2]) / (case when i.[Ind_evento_hundimiento_1] > 0 then 1 else 0 end + w.[Ind_evento_hundimiento_1] + case when i.[Ind_evento_hundimiento_2] > 0 then 1 else 0 end + w.[Ind_evento_hundimiento_2])
			,[Ind_evento_incendio_1] = (case when i.[Ind_evento_incendio_1] > 0 then 1 else 0 end + w.[Ind_evento_incendio_1]) / (case when i.[Ind_evento_incendio_1] > 0 then 1 else 0 end + w.[Ind_evento_incendio_1] + case when i.[Ind_evento_incendio_2] > 0 then 1 else 0 end + w.[Ind_evento_incendio_2])
			,[Ind_evento_incendio_2] = (case when i.[Ind_evento_incendio_2] > 0 then 1 else 0 end + w.[Ind_evento_incendio_2]) / (case when i.[Ind_evento_incendio_1] > 0 then 1 else 0 end + w.[Ind_evento_incendio_1] + case when i.[Ind_evento_incendio_2] > 0 then 1 else 0 end + w.[Ind_evento_incendio_2])
			,[Ind_evento_inundacion_1] = (case when i.[Ind_evento_inundacion_1] > 0 then 1 else 0 end + w.[Ind_evento_inundacion_1]) / (case when i.[Ind_evento_inundacion_1] > 0 then 1 else 0 end + w.[Ind_evento_inundacion_1] + case when i.[Ind_evento_inundacion_2] > 0 then 1 else 0 end + w.[Ind_evento_inundacion_2])
			,[Ind_evento_inundacion_2] = (case when i.[Ind_evento_inundacion_2] > 0 then 1 else 0 end + w.[Ind_evento_inundacion_2]) / (case when i.[Ind_evento_inundacion_1] > 0 then 1 else 0 end + w.[Ind_evento_inundacion_1] + case when i.[Ind_evento_inundacion_2] > 0 then 1 else 0 end + w.[Ind_evento_inundacion_2])
			,[Ind_evento_terremoto_1] = (case when i.[Ind_evento_terremoto_1] > 0 then 1 else 0 end + w.[Ind_evento_terremoto_1]) / (case when i.[Ind_evento_terremoto_1] > 0 then 1 else 0 end + w.[Ind_evento_terremoto_1] + case when i.[Ind_evento_terremoto_2] > 0 then 1 else 0 end + w.[Ind_evento_terremoto_2])
			,[Ind_evento_terremoto_2] = (case when i.[Ind_evento_terremoto_2] > 0 then 1 else 0 end + w.[Ind_evento_terremoto_2]) / (case when i.[Ind_evento_terremoto_1] > 0 then 1 else 0 end + w.[Ind_evento_terremoto_1] + case when i.[Ind_evento_terremoto_2] > 0 then 1 else 0 end + w.[Ind_evento_terremoto_2])
			,[Ind_evento_vendaval_1] = (case when i.[Ind_evento_vendaval_1] > 0 then 1 else 0 end + w.[Ind_evento_vendaval_1]) / (case when i.[Ind_evento_vendaval_1] > 0 then 1 else 0 end + w.[Ind_evento_vendaval_1] + case when i.[Ind_evento_vendaval_2] > 0 then 1 else 0 end + w.[Ind_evento_vendaval_2])
			,[Ind_evento_vendaval_2] = (case when i.[Ind_evento_vendaval_2] > 0 then 1 else 0 end + w.[Ind_evento_vendaval_2]) / (case when i.[Ind_evento_vendaval_1] > 0 then 1 else 0 end + w.[Ind_evento_vendaval_1] + case when i.[Ind_evento_vendaval_2] > 0 then 1 else 0 end + w.[Ind_evento_vendaval_2])
			,[Ind_gasto_alimento_1] = (case when i.[Ind_gasto_alimento_1] > 0 then 1 else 0 end + w.[Ind_gasto_alimento_1]) / (case when i.[Ind_gasto_alimento_1] > 0 then 1 else 0 end + w.[Ind_gasto_alimento_1] + case when i.[Ind_gasto_alimento_2] > 0 then 1 else 0 end + w.[Ind_gasto_alimento_2] + case when i.[Ind_gasto_alimento_9] > 0 then 1 else 0 end + w.[Ind_gasto_alimento_9])
			,[Ind_gasto_alimento_2] = (case when i.[Ind_gasto_alimento_2] > 0 then 1 else 0 end + w.[Ind_gasto_alimento_2]) / (case when i.[Ind_gasto_alimento_1] > 0 then 1 else 0 end + w.[Ind_gasto_alimento_1] + case when i.[Ind_gasto_alimento_2] > 0 then 1 else 0 end + w.[Ind_gasto_alimento_2] + case when i.[Ind_gasto_alimento_9] > 0 then 1 else 0 end + w.[Ind_gasto_alimento_9])
			,[Ind_gasto_alimento_9] = (case when i.[Ind_gasto_alimento_9] > 0 then 1 else 0 end + w.[Ind_gasto_alimento_9]) / (case when i.[Ind_gasto_alimento_1] > 0 then 1 else 0 end + w.[Ind_gasto_alimento_1] + case when i.[Ind_gasto_alimento_2] > 0 then 1 else 0 end + w.[Ind_gasto_alimento_2] + case when i.[Ind_gasto_alimento_9] > 0 then 1 else 0 end + w.[Ind_gasto_alimento_9])
			,[Ind_gasto_arriendo_1] = (case when i.[Ind_gasto_arriendo_1] > 0 then 1 else 0 end + w.[Ind_gasto_arriendo_1]) / (case when i.[Ind_gasto_arriendo_1] > 0 then 1 else 0 end + w.[Ind_gasto_arriendo_1] + case when i.[Ind_gasto_arriendo_2] > 0 then 1 else 0 end + w.[Ind_gasto_arriendo_2] + case when i.[Ind_gasto_arriendo_9] > 0 then 1 else 0 end + w.[Ind_gasto_arriendo_9])
			,[Ind_gasto_arriendo_2] = (case when i.[Ind_gasto_arriendo_2] > 0 then 1 else 0 end + w.[Ind_gasto_arriendo_2]) / (case when i.[Ind_gasto_arriendo_1] > 0 then 1 else 0 end + w.[Ind_gasto_arriendo_1] + case when i.[Ind_gasto_arriendo_2] > 0 then 1 else 0 end + w.[Ind_gasto_arriendo_2] + case when i.[Ind_gasto_arriendo_9] > 0 then 1 else 0 end + w.[Ind_gasto_arriendo_9])
			,[Ind_gasto_arriendo_9] = (case when i.[Ind_gasto_arriendo_9] > 0 then 1 else 0 end + w.[Ind_gasto_arriendo_9]) / (case when i.[Ind_gasto_arriendo_1] > 0 then 1 else 0 end + w.[Ind_gasto_arriendo_1] + case when i.[Ind_gasto_arriendo_2] > 0 then 1 else 0 end + w.[Ind_gasto_arriendo_2] + case when i.[Ind_gasto_arriendo_9] > 0 then 1 else 0 end + w.[Ind_gasto_arriendo_9])
			,[Ind_gasto_celular_1] = (case when i.[Ind_gasto_celular_1] > 0 then 1 else 0 end + w.[Ind_gasto_celular_1]) / (case when i.[Ind_gasto_celular_1] > 0 then 1 else 0 end + w.[Ind_gasto_celular_1] + case when i.[Ind_gasto_celular_2] > 0 then 1 else 0 end + w.[Ind_gasto_celular_2] + case when i.[Ind_gasto_celular_9] > 0 then 1 else 0 end + w.[Ind_gasto_celular_9])
			,[Ind_gasto_celular_2] = (case when i.[Ind_gasto_celular_2] > 0 then 1 else 0 end + w.[Ind_gasto_celular_2]) / (case when i.[Ind_gasto_celular_1] > 0 then 1 else 0 end + w.[Ind_gasto_celular_1] + case when i.[Ind_gasto_celular_2] > 0 then 1 else 0 end + w.[Ind_gasto_celular_2] + case when i.[Ind_gasto_celular_9] > 0 then 1 else 0 end + w.[Ind_gasto_celular_9])
			,[Ind_gasto_celular_9] = (case when i.[Ind_gasto_celular_9] > 0 then 1 else 0 end + w.[Ind_gasto_celular_9]) / (case when i.[Ind_gasto_celular_1] > 0 then 1 else 0 end + w.[Ind_gasto_celular_1] + case when i.[Ind_gasto_celular_2] > 0 then 1 else 0 end + w.[Ind_gasto_celular_2] + case when i.[Ind_gasto_celular_9] > 0 then 1 else 0 end + w.[Ind_gasto_celular_9])
			,[Ind_gasto_educacion_1] = (case when i.[Ind_gasto_educacion_1] > 0 then 1 else 0 end + w.[Ind_gasto_educacion_1]) / (case when i.[Ind_gasto_educacion_1] > 0 then 1 else 0 end + w.[Ind_gasto_educacion_1] + case when i.[Ind_gasto_educacion_2] > 0 then 1 else 0 end + w.[Ind_gasto_educacion_2] + case when i.[Ind_gasto_educacion_9] > 0 then 1 else 0 end + w.[Ind_gasto_educacion_9])
			,[Ind_gasto_educacion_2] = (case when i.[Ind_gasto_educacion_2] > 0 then 1 else 0 end + w.[Ind_gasto_educacion_2]) / (case when i.[Ind_gasto_educacion_1] > 0 then 1 else 0 end + w.[Ind_gasto_educacion_1] + case when i.[Ind_gasto_educacion_2] > 0 then 1 else 0 end + w.[Ind_gasto_educacion_2] + case when i.[Ind_gasto_educacion_9] > 0 then 1 else 0 end + w.[Ind_gasto_educacion_9])
			,[Ind_gasto_educacion_9] = (case when i.[Ind_gasto_educacion_9] > 0 then 1 else 0 end + w.[Ind_gasto_educacion_9]) / (case when i.[Ind_gasto_educacion_1] > 0 then 1 else 0 end + w.[Ind_gasto_educacion_1] + case when i.[Ind_gasto_educacion_2] > 0 then 1 else 0 end + w.[Ind_gasto_educacion_2] + case when i.[Ind_gasto_educacion_9] > 0 then 1 else 0 end + w.[Ind_gasto_educacion_9])
			,[Ind_gasto_otros_1] = (case when i.[Ind_gasto_otros_1] > 0 then 1 else 0 end + w.[Ind_gasto_otros_1]) / (case when i.[Ind_gasto_otros_1] > 0 then 1 else 0 end + w.[Ind_gasto_otros_1] + case when i.[Ind_gasto_otros_2] > 0 then 1 else 0 end + w.[Ind_gasto_otros_2] + case when i.[Ind_gasto_otros_9] > 0 then 1 else 0 end + w.[Ind_gasto_otros_9])
			,[Ind_gasto_otros_2] = (case when i.[Ind_gasto_otros_2] > 0 then 1 else 0 end + w.[Ind_gasto_otros_2]) / (case when i.[Ind_gasto_otros_1] > 0 then 1 else 0 end + w.[Ind_gasto_otros_1] + case when i.[Ind_gasto_otros_2] > 0 then 1 else 0 end + w.[Ind_gasto_otros_2] + case when i.[Ind_gasto_otros_9] > 0 then 1 else 0 end + w.[Ind_gasto_otros_9])
			,[Ind_gasto_otros_9] = (case when i.[Ind_gasto_otros_9] > 0 then 1 else 0 end + w.[Ind_gasto_otros_9]) / (case when i.[Ind_gasto_otros_1] > 0 then 1 else 0 end + w.[Ind_gasto_otros_1] + case when i.[Ind_gasto_otros_2] > 0 then 1 else 0 end + w.[Ind_gasto_otros_2] + case when i.[Ind_gasto_otros_9] > 0 then 1 else 0 end + w.[Ind_gasto_otros_9])
			,[Ind_gasto_salud_1] = (case when i.[Ind_gasto_salud_1] > 0 then 1 else 0 end + w.[Ind_gasto_salud_1]) / (case when i.[Ind_gasto_salud_1] > 0 then 1 else 0 end + w.[Ind_gasto_salud_1] + case when i.[Ind_gasto_salud_2] > 0 then 1 else 0 end + w.[Ind_gasto_salud_2] + case when i.[Ind_gasto_salud_9] > 0 then 1 else 0 end + w.[Ind_gasto_salud_9])
			,[Ind_gasto_salud_2] = (case when i.[Ind_gasto_salud_2] > 0 then 1 else 0 end + w.[Ind_gasto_salud_2]) / (case when i.[Ind_gasto_salud_1] > 0 then 1 else 0 end + w.[Ind_gasto_salud_1] + case when i.[Ind_gasto_salud_2] > 0 then 1 else 0 end + w.[Ind_gasto_salud_2] + case when i.[Ind_gasto_salud_9] > 0 then 1 else 0 end + w.[Ind_gasto_salud_9])
			,[Ind_gasto_salud_9] = (case when i.[Ind_gasto_salud_9] > 0 then 1 else 0 end + w.[Ind_gasto_salud_9]) / (case when i.[Ind_gasto_salud_1] > 0 then 1 else 0 end + w.[Ind_gasto_salud_1] + case when i.[Ind_gasto_salud_2] > 0 then 1 else 0 end + w.[Ind_gasto_salud_2] + case when i.[Ind_gasto_salud_9] > 0 then 1 else 0 end + w.[Ind_gasto_salud_9])
			,[Ind_gasto_serv_publicos_1] = (case when i.[Ind_gasto_serv_publicos_1] > 0 then 1 else 0 end + w.[Ind_gasto_serv_publicos_1]) / (case when i.[Ind_gasto_serv_publicos_1] > 0 then 1 else 0 end + w.[Ind_gasto_serv_publicos_1] + case when i.[Ind_gasto_serv_publicos_2] > 0 then 1 else 0 end + w.[Ind_gasto_serv_publicos_2] + case when i.[Ind_gasto_serv_publicos_9] > 0 then 1 else 0 end + w.[Ind_gasto_serv_publicos_9])
			,[Ind_gasto_serv_publicos_2] = (case when i.[Ind_gasto_serv_publicos_2] > 0 then 1 else 0 end + w.[Ind_gasto_serv_publicos_2]) / (case when i.[Ind_gasto_serv_publicos_1] > 0 then 1 else 0 end + w.[Ind_gasto_serv_publicos_1] + case when i.[Ind_gasto_serv_publicos_2] > 0 then 1 else 0 end + w.[Ind_gasto_serv_publicos_2] + case when i.[Ind_gasto_serv_publicos_9] > 0 then 1 else 0 end + w.[Ind_gasto_serv_publicos_9])
			,[Ind_gasto_serv_publicos_9] = (case when i.[Ind_gasto_serv_publicos_9] > 0 then 1 else 0 end + w.[Ind_gasto_serv_publicos_9]) / (case when i.[Ind_gasto_serv_publicos_1] > 0 then 1 else 0 end + w.[Ind_gasto_serv_publicos_1] + case when i.[Ind_gasto_serv_publicos_2] > 0 then 1 else 0 end + w.[Ind_gasto_serv_publicos_2] + case when i.[Ind_gasto_serv_publicos_9] > 0 then 1 else 0 end + w.[Ind_gasto_serv_publicos_9])
			,[Ind_gasto_transporte_1] = (case when i.[Ind_gasto_transporte_1] > 0 then 1 else 0 end + w.[Ind_gasto_transporte_1]) / (case when i.[Ind_gasto_transporte_1] > 0 then 1 else 0 end + w.[Ind_gasto_transporte_1] + case when i.[Ind_gasto_transporte_2] > 0 then 1 else 0 end + w.[Ind_gasto_transporte_2] + case when i.[Ind_gasto_transporte_9] > 0 then 1 else 0 end + w.[Ind_gasto_transporte_9])
			,[Ind_gasto_transporte_2] = (case when i.[Ind_gasto_transporte_2] > 0 then 1 else 0 end + w.[Ind_gasto_transporte_2]) / (case when i.[Ind_gasto_transporte_1] > 0 then 1 else 0 end + w.[Ind_gasto_transporte_1] + case when i.[Ind_gasto_transporte_2] > 0 then 1 else 0 end + w.[Ind_gasto_transporte_2] + case when i.[Ind_gasto_transporte_9] > 0 then 1 else 0 end + w.[Ind_gasto_transporte_9])
			,[Ind_gasto_transporte_9] = (case when i.[Ind_gasto_transporte_9] > 0 then 1 else 0 end + w.[Ind_gasto_transporte_9]) / (case when i.[Ind_gasto_transporte_1] > 0 then 1 else 0 end + w.[Ind_gasto_transporte_1] + case when i.[Ind_gasto_transporte_2] > 0 then 1 else 0 end + w.[Ind_gasto_transporte_2] + case when i.[Ind_gasto_transporte_9] > 0 then 1 else 0 end + w.[Ind_gasto_transporte_9])
			,[Ind_tiene_acueducto_1] = (case when i.[Ind_tiene_acueducto_1] > 0 then 1 else 0 end + w.[Ind_tiene_acueducto_1]) / (case when i.[Ind_tiene_acueducto_1] > 0 then 1 else 0 end + w.[Ind_tiene_acueducto_1] + case when i.[Ind_tiene_acueducto_2] > 0 then 1 else 0 end + w.[Ind_tiene_acueducto_2])
			,[Ind_tiene_acueducto_2] = (case when i.[Ind_tiene_acueducto_2] > 0 then 1 else 0 end + w.[Ind_tiene_acueducto_2]) / (case when i.[Ind_tiene_acueducto_1] > 0 then 1 else 0 end + w.[Ind_tiene_acueducto_1] + case when i.[Ind_tiene_acueducto_2] > 0 then 1 else 0 end + w.[Ind_tiene_acueducto_2])
			,[Ind_tiene_alcantarillado_1] = (case when i.[Ind_tiene_alcantarillado_1] > 0 then 1 else 0 end + w.[Ind_tiene_alcantarillado_1]) / (case when i.[Ind_tiene_alcantarillado_1] > 0 then 1 else 0 end + w.[Ind_tiene_alcantarillado_1] + case when i.[Ind_tiene_alcantarillado_2] > 0 then 1 else 0 end + w.[Ind_tiene_alcantarillado_2])
			,[Ind_tiene_alcantarillado_2] = (case when i.[Ind_tiene_alcantarillado_2] > 0 then 1 else 0 end + w.[Ind_tiene_alcantarillado_2]) / (case when i.[Ind_tiene_alcantarillado_1] > 0 then 1 else 0 end + w.[Ind_tiene_alcantarillado_1] + case when i.[Ind_tiene_alcantarillado_2] > 0 then 1 else 0 end + w.[Ind_tiene_alcantarillado_2])
			,[Ind_tiene_bien_raiz_1] = (case when i.[Ind_tiene_bien_raiz_1] > 0 then 1 else 0 end + w.[Ind_tiene_bien_raiz_1]) / (case when i.[Ind_tiene_bien_raiz_1] > 0 then 1 else 0 end + w.[Ind_tiene_bien_raiz_1] + case when i.[Ind_tiene_bien_raiz_2] > 0 then 1 else 0 end + w.[Ind_tiene_bien_raiz_2])
			,[Ind_tiene_bien_raiz_2] = (case when i.[Ind_tiene_bien_raiz_2] > 0 then 1 else 0 end + w.[Ind_tiene_bien_raiz_2]) / (case when i.[Ind_tiene_bien_raiz_1] > 0 then 1 else 0 end + w.[Ind_tiene_bien_raiz_1] + case when i.[Ind_tiene_bien_raiz_2] > 0 then 1 else 0 end + w.[Ind_tiene_bien_raiz_2])
			,[Ind_tiene_carro_1] = (case when i.[Ind_tiene_carro_1] > 0 then 1 else 0 end + w.[Ind_tiene_carro_1]) / (case when i.[Ind_tiene_carro_1] > 0 then 1 else 0 end + w.[Ind_tiene_carro_1] + case when i.[Ind_tiene_carro_2] > 0 then 1 else 0 end + w.[Ind_tiene_carro_2])
			,[Ind_tiene_carro_2] = (case when i.[Ind_tiene_carro_2] > 0 then 1 else 0 end + w.[Ind_tiene_carro_2]) / (case when i.[Ind_tiene_carro_1] > 0 then 1 else 0 end + w.[Ind_tiene_carro_1] + case when i.[Ind_tiene_carro_2] > 0 then 1 else 0 end + w.[Ind_tiene_carro_2])
			,[Ind_tiene_cocina_1] = (case when i.[Ind_tiene_cocina_1] > 0 then 1 else 0 end + w.[Ind_tiene_cocina_1]) / (case when i.[Ind_tiene_cocina_1] > 0 then 1 else 0 end + w.[Ind_tiene_cocina_1] + case when i.[Ind_tiene_cocina_2] > 0 then 1 else 0 end + w.[Ind_tiene_cocina_2])
			,[Ind_tiene_cocina_2] = (case when i.[Ind_tiene_cocina_2] > 0 then 1 else 0 end + w.[Ind_tiene_cocina_2]) / (case when i.[Ind_tiene_cocina_1] > 0 then 1 else 0 end + w.[Ind_tiene_cocina_1] + case when i.[Ind_tiene_cocina_2] > 0 then 1 else 0 end + w.[Ind_tiene_cocina_2])
			,[Ind_tiene_energia_1] = (case when i.[Ind_tiene_energia_1] > 0 then 1 else 0 end + w.[Ind_tiene_energia_1]) / (case when i.[Ind_tiene_energia_1] > 0 then 1 else 0 end + w.[Ind_tiene_energia_1] + case when i.[Ind_tiene_energia_2] > 0 then 1 else 0 end + w.[Ind_tiene_energia_2])
			,[Ind_tiene_energia_2] = (case when i.[Ind_tiene_energia_2] > 0 then 1 else 0 end + w.[Ind_tiene_energia_2]) / (case when i.[Ind_tiene_energia_1] > 0 then 1 else 0 end + w.[Ind_tiene_energia_1] + case when i.[Ind_tiene_energia_2] > 0 then 1 else 0 end + w.[Ind_tiene_energia_2])
			,[Ind_tiene_gas_1] = (case when i.[Ind_tiene_gas_1] > 0 then 1 else 0 end + w.[Ind_tiene_gas_1]) / (case when i.[Ind_tiene_gas_1] > 0 then 1 else 0 end + w.[Ind_tiene_gas_1] + case when i.[Ind_tiene_gas_2] > 0 then 1 else 0 end + w.[Ind_tiene_gas_2])
			,[Ind_tiene_gas_2] = (case when i.[Ind_tiene_gas_2] > 0 then 1 else 0 end + w.[Ind_tiene_gas_2]) / (case when i.[Ind_tiene_gas_1] > 0 then 1 else 0 end + w.[Ind_tiene_gas_1] + case when i.[Ind_tiene_gas_2] > 0 then 1 else 0 end + w.[Ind_tiene_gas_2])
			,[Ind_tiene_internet_1] = (case when i.[Ind_tiene_internet_1] > 0 then 1 else 0 end + w.[Ind_tiene_internet_1]) / (case when i.[Ind_tiene_internet_1] > 0 then 1 else 0 end + w.[Ind_tiene_internet_1] + case when i.[Ind_tiene_internet_2] > 0 then 1 else 0 end + w.[Ind_tiene_internet_2])
			,[Ind_tiene_internet_2] = (case when i.[Ind_tiene_internet_2] > 0 then 1 else 0 end + w.[Ind_tiene_internet_2]) / (case when i.[Ind_tiene_internet_1] > 0 then 1 else 0 end + w.[Ind_tiene_internet_1] + case when i.[Ind_tiene_internet_2] > 0 then 1 else 0 end + w.[Ind_tiene_internet_2])
			,[Ind_tiene_lavadora_1] = (case when i.[Ind_tiene_lavadora_1] > 0 then 1 else 0 end + w.[Ind_tiene_lavadora_1]) / (case when i.[Ind_tiene_lavadora_1] > 0 then 1 else 0 end + w.[Ind_tiene_lavadora_1] + case when i.[Ind_tiene_lavadora_2] > 0 then 1 else 0 end + w.[Ind_tiene_lavadora_2])
			,[Ind_tiene_lavadora_2] = (case when i.[Ind_tiene_lavadora_2] > 0 then 1 else 0 end + w.[Ind_tiene_lavadora_2]) / (case when i.[Ind_tiene_lavadora_1] > 0 then 1 else 0 end + w.[Ind_tiene_lavadora_1] + case when i.[Ind_tiene_lavadora_2] > 0 then 1 else 0 end + w.[Ind_tiene_lavadora_2])
			,[Ind_tiene_moto_1] = (case when i.[Ind_tiene_moto_1] > 0 then 1 else 0 end + w.[Ind_tiene_moto_1]) / (case when i.[Ind_tiene_moto_1] > 0 then 1 else 0 end + w.[Ind_tiene_moto_1] + case when i.[Ind_tiene_moto_2] > 0 then 1 else 0 end + w.[Ind_tiene_moto_2])
			,[Ind_tiene_moto_2] = (case when i.[Ind_tiene_moto_2] > 0 then 1 else 0 end + w.[Ind_tiene_moto_2]) / (case when i.[Ind_tiene_moto_1] > 0 then 1 else 0 end + w.[Ind_tiene_moto_1] + case when i.[Ind_tiene_moto_2] > 0 then 1 else 0 end + w.[Ind_tiene_moto_2])
			,[Ind_tiene_nevera_1] = (case when i.[Ind_tiene_nevera_1] > 0 then 1 else 0 end + w.[Ind_tiene_nevera_1]) / (case when i.[Ind_tiene_nevera_1] > 0 then 1 else 0 end + w.[Ind_tiene_nevera_1] + case when i.[Ind_tiene_nevera_2] > 0 then 1 else 0 end + w.[Ind_tiene_nevera_2])
			,[Ind_tiene_nevera_2] = (case when i.[Ind_tiene_nevera_2] > 0 then 1 else 0 end + w.[Ind_tiene_nevera_2]) / (case when i.[Ind_tiene_nevera_1] > 0 then 1 else 0 end + w.[Ind_tiene_nevera_1] + case when i.[Ind_tiene_nevera_2] > 0 then 1 else 0 end + w.[Ind_tiene_nevera_2])
			,[Ind_tiene_pc_1] = (case when i.[Ind_tiene_pc_1] > 0 then 1 else 0 end + w.[Ind_tiene_pc_1]) / (case when i.[Ind_tiene_pc_1] > 0 then 1 else 0 end + w.[Ind_tiene_pc_1] + case when i.[Ind_tiene_pc_2] > 0 then 1 else 0 end + w.[Ind_tiene_pc_2])
			,[Ind_tiene_pc_2] = (case when i.[Ind_tiene_pc_2] > 0 then 1 else 0 end + w.[Ind_tiene_pc_2]) / (case when i.[Ind_tiene_pc_1] > 0 then 1 else 0 end + w.[Ind_tiene_pc_1] + case when i.[Ind_tiene_pc_2] > 0 then 1 else 0 end + w.[Ind_tiene_pc_2])
			,[Ind_tiene_recoleccion_1] = (case when i.[Ind_tiene_recoleccion_1] > 0 then 1 else 0 end + w.[Ind_tiene_recoleccion_1]) / (case when i.[Ind_tiene_recoleccion_1] > 0 then 1 else 0 end + w.[Ind_tiene_recoleccion_1] + case when i.[Ind_tiene_recoleccion_2] > 0 then 1 else 0 end + w.[Ind_tiene_recoleccion_2])
			,[Ind_tiene_recoleccion_2] = (case when i.[Ind_tiene_recoleccion_2] > 0 then 1 else 0 end + w.[Ind_tiene_recoleccion_2]) / (case when i.[Ind_tiene_recoleccion_1] > 0 then 1 else 0 end + w.[Ind_tiene_recoleccion_1] + case when i.[Ind_tiene_recoleccion_2] > 0 then 1 else 0 end + w.[Ind_tiene_recoleccion_2])
			,[Ind_tiene_tractor_1] = (case when i.[Ind_tiene_tractor_1] > 0 then 1 else 0 end + w.[Ind_tiene_tractor_1]) / (case when i.[Ind_tiene_tractor_1] > 0 then 1 else 0 end + w.[Ind_tiene_tractor_1] + case when i.[Ind_tiene_tractor_2] > 0 then 1 else 0 end + w.[Ind_tiene_tractor_2])
			,[Ind_tiene_tractor_2] = (case when i.[Ind_tiene_tractor_2] > 0 then 1 else 0 end + w.[Ind_tiene_tractor_2]) / (case when i.[Ind_tiene_tractor_1] > 0 then 1 else 0 end + w.[Ind_tiene_tractor_1] + case when i.[Ind_tiene_tractor_2] > 0 then 1 else 0 end + w.[Ind_tiene_tractor_2])
			,[Num_cuartos_dormir_nor] = 1
			,[Num_cuartos_exclusivos_nor] = 1
			,[Num_cuartos_unicos_dormir_nor] = 1
			,[Num_cuartos_vivienda_nor] = 1
			,[Num_dias_llega_nor] = 1
			,[Num_evento_avalancha_nor] = 1
			,[Num_evento_hundimiento_nor] = 1
			,[Num_evento_incendio_nor] = 1
			,[Num_evento_inundacion_nor] = 1
			,[Num_evento_terremoto_nor] = 1
			,[Num_evento_vendaval_nor] = 1
			,[Num_habita_vivienda_1] = (case when i.[Num_habita_vivienda_1] > 0 then 1 else 0 end + w.[Num_habita_vivienda_1]) / (case when i.[Num_habita_vivienda_1] > 0 then 1 else 0 end + w.[Num_habita_vivienda_1] + case when i.[Num_habita_vivienda_2] > 0 then 1 else 0 end + w.[Num_habita_vivienda_2] + case when i.[Num_habita_vivienda_3] > 0 then 1 else 0 end + w.[Num_habita_vivienda_3] + case when i.[Num_habita_vivienda_4] > 0 then 1 else 0 end + w.[Num_habita_vivienda_4])
			,[Num_habita_vivienda_2] = (case when i.[Num_habita_vivienda_2] > 0 then 1 else 0 end + w.[Num_habita_vivienda_2]) / (case when i.[Num_habita_vivienda_1] > 0 then 1 else 0 end + w.[Num_habita_vivienda_1] + case when i.[Num_habita_vivienda_2] > 0 then 1 else 0 end + w.[Num_habita_vivienda_2] + case when i.[Num_habita_vivienda_3] > 0 then 1 else 0 end + w.[Num_habita_vivienda_3] + case when i.[Num_habita_vivienda_4] > 0 then 1 else 0 end + w.[Num_habita_vivienda_4])
			,[Num_habita_vivienda_3] = (case when i.[Num_habita_vivienda_3] > 0 then 1 else 0 end + w.[Num_habita_vivienda_3]) / (case when i.[Num_habita_vivienda_1] > 0 then 1 else 0 end + w.[Num_habita_vivienda_1] + case when i.[Num_habita_vivienda_2] > 0 then 1 else 0 end + w.[Num_habita_vivienda_2] + case when i.[Num_habita_vivienda_3] > 0 then 1 else 0 end + w.[Num_habita_vivienda_3] + case when i.[Num_habita_vivienda_4] > 0 then 1 else 0 end + w.[Num_habita_vivienda_4])
			,[Num_habita_vivienda_4] = (case when i.[Num_habita_vivienda_4] > 0 then 1 else 0 end + w.[Num_habita_vivienda_4]) / (case when i.[Num_habita_vivienda_1] > 0 then 1 else 0 end + w.[Num_habita_vivienda_1] + case when i.[Num_habita_vivienda_2] > 0 then 1 else 0 end + w.[Num_habita_vivienda_2] + case when i.[Num_habita_vivienda_3] > 0 then 1 else 0 end + w.[Num_habita_vivienda_3] + case when i.[Num_habita_vivienda_4] > 0 then 1 else 0 end + w.[Num_habita_vivienda_4])
			,[Num_hogares_vivienda_nor] = 1
			,[Num_horas_llega_nor] = 1
			,[Num_personas_hogar_nor] = 1
			,[Num_personas_posibles_nor] = 1
			,[res_visita_1] = (case when i.[res_visita_1] > 0 then 1 else 0 end + w.[res_visita_1]) / (case when i.[res_visita_1] > 0 then 1 else 0 end + w.[res_visita_1] + case when i.[res_visita_2] > 0 then 1 else 0 end + w.[res_visita_2] + case when i.[res_visita_3] > 0 then 1 else 0 end + w.[res_visita_3] + case when i.[res_visita_4] > 0 then 1 else 0 end + w.[res_visita_4] + case when i.[res_visita_5] > 0 then 1 else 0 end + w.[res_visita_5] + case when i.[res_visita_6] > 0 then 1 else 0 end + w.[res_visita_6] + case when i.[res_visita_7] > 0 then 1 else 0 end + w.[res_visita_7])
			,[res_visita_2] = (case when i.[res_visita_2] > 0 then 1 else 0 end + w.[res_visita_2]) / (case when i.[res_visita_1] > 0 then 1 else 0 end + w.[res_visita_1] + case when i.[res_visita_2] > 0 then 1 else 0 end + w.[res_visita_2] + case when i.[res_visita_3] > 0 then 1 else 0 end + w.[res_visita_3] + case when i.[res_visita_4] > 0 then 1 else 0 end + w.[res_visita_4] + case when i.[res_visita_5] > 0 then 1 else 0 end + w.[res_visita_5] + case when i.[res_visita_6] > 0 then 1 else 0 end + w.[res_visita_6] + case when i.[res_visita_7] > 0 then 1 else 0 end + w.[res_visita_7])
			,[res_visita_3] = (case when i.[res_visita_3] > 0 then 1 else 0 end + w.[res_visita_3]) / (case when i.[res_visita_1] > 0 then 1 else 0 end + w.[res_visita_1] + case when i.[res_visita_2] > 0 then 1 else 0 end + w.[res_visita_2] + case when i.[res_visita_3] > 0 then 1 else 0 end + w.[res_visita_3] + case when i.[res_visita_4] > 0 then 1 else 0 end + w.[res_visita_4] + case when i.[res_visita_5] > 0 then 1 else 0 end + w.[res_visita_5] + case when i.[res_visita_6] > 0 then 1 else 0 end + w.[res_visita_6] + case when i.[res_visita_7] > 0 then 1 else 0 end + w.[res_visita_7])
			,[res_visita_4] = (case when i.[res_visita_4] > 0 then 1 else 0 end + w.[res_visita_4]) / (case when i.[res_visita_1] > 0 then 1 else 0 end + w.[res_visita_1] + case when i.[res_visita_2] > 0 then 1 else 0 end + w.[res_visita_2] + case when i.[res_visita_3] > 0 then 1 else 0 end + w.[res_visita_3] + case when i.[res_visita_4] > 0 then 1 else 0 end + w.[res_visita_4] + case when i.[res_visita_5] > 0 then 1 else 0 end + w.[res_visita_5] + case when i.[res_visita_6] > 0 then 1 else 0 end + w.[res_visita_6] + case when i.[res_visita_7] > 0 then 1 else 0 end + w.[res_visita_7])
			,[res_visita_5] = (case when i.[res_visita_5] > 0 then 1 else 0 end + w.[res_visita_5]) / (case when i.[res_visita_1] > 0 then 1 else 0 end + w.[res_visita_1] + case when i.[res_visita_2] > 0 then 1 else 0 end + w.[res_visita_2] + case when i.[res_visita_3] > 0 then 1 else 0 end + w.[res_visita_3] + case when i.[res_visita_4] > 0 then 1 else 0 end + w.[res_visita_4] + case when i.[res_visita_5] > 0 then 1 else 0 end + w.[res_visita_5] + case when i.[res_visita_6] > 0 then 1 else 0 end + w.[res_visita_6] + case when i.[res_visita_7] > 0 then 1 else 0 end + w.[res_visita_7])
			,[res_visita_6] = (case when i.[res_visita_6] > 0 then 1 else 0 end + w.[res_visita_6]) / (case when i.[res_visita_1] > 0 then 1 else 0 end + w.[res_visita_1] + case when i.[res_visita_2] > 0 then 1 else 0 end + w.[res_visita_2] + case when i.[res_visita_3] > 0 then 1 else 0 end + w.[res_visita_3] + case when i.[res_visita_4] > 0 then 1 else 0 end + w.[res_visita_4] + case when i.[res_visita_5] > 0 then 1 else 0 end + w.[res_visita_5] + case when i.[res_visita_6] > 0 then 1 else 0 end + w.[res_visita_6] + case when i.[res_visita_7] > 0 then 1 else 0 end + w.[res_visita_7])
			,[res_visita_7] = (case when i.[res_visita_7] > 0 then 1 else 0 end + w.[res_visita_7]) / (case when i.[res_visita_1] > 0 then 1 else 0 end + w.[res_visita_1] + case when i.[res_visita_2] > 0 then 1 else 0 end + w.[res_visita_2] + case when i.[res_visita_3] > 0 then 1 else 0 end + w.[res_visita_3] + case when i.[res_visita_4] > 0 then 1 else 0 end + w.[res_visita_4] + case when i.[res_visita_5] > 0 then 1 else 0 end + w.[res_visita_5] + case when i.[res_visita_6] > 0 then 1 else 0 end + w.[res_visita_6] + case when i.[res_visita_7] > 0 then 1 else 0 end + w.[res_visita_7])
			,[Tip_elimina_basura_1] = (case when i.[Tip_elimina_basura_1] > 0 then 1 else 0 end + w.[Tip_elimina_basura_1]) / (case when i.[Tip_elimina_basura_1] > 0 then 1 else 0 end + w.[Tip_elimina_basura_1] + case when i.[Tip_elimina_basura_2] > 0 then 1 else 0 end + w.[Tip_elimina_basura_2] + case when i.[Tip_elimina_basura_3] > 0 then 1 else 0 end + w.[Tip_elimina_basura_3] + case when i.[Tip_elimina_basura_4] > 0 then 1 else 0 end + w.[Tip_elimina_basura_4] + case when i.[Tip_elimina_basura_5] > 0 then 1 else 0 end + w.[Tip_elimina_basura_5] + case when i.[Tip_elimina_basura_6] > 0 then 1 else 0 end + w.[Tip_elimina_basura_6] + case when i.[Tip_elimina_basura_7] > 0 then 1 else 0 end + w.[Tip_elimina_basura_7])
			,[Tip_elimina_basura_2] = (case when i.[Tip_elimina_basura_2] > 0 then 1 else 0 end + w.[Tip_elimina_basura_2]) / (case when i.[Tip_elimina_basura_1] > 0 then 1 else 0 end + w.[Tip_elimina_basura_1] + case when i.[Tip_elimina_basura_2] > 0 then 1 else 0 end + w.[Tip_elimina_basura_2] + case when i.[Tip_elimina_basura_3] > 0 then 1 else 0 end + w.[Tip_elimina_basura_3] + case when i.[Tip_elimina_basura_4] > 0 then 1 else 0 end + w.[Tip_elimina_basura_4] + case when i.[Tip_elimina_basura_5] > 0 then 1 else 0 end + w.[Tip_elimina_basura_5] + case when i.[Tip_elimina_basura_6] > 0 then 1 else 0 end + w.[Tip_elimina_basura_6] + case when i.[Tip_elimina_basura_7] > 0 then 1 else 0 end + w.[Tip_elimina_basura_7])
			,[Tip_elimina_basura_3] = (case when i.[Tip_elimina_basura_3] > 0 then 1 else 0 end + w.[Tip_elimina_basura_3]) / (case when i.[Tip_elimina_basura_1] > 0 then 1 else 0 end + w.[Tip_elimina_basura_1] + case when i.[Tip_elimina_basura_2] > 0 then 1 else 0 end + w.[Tip_elimina_basura_2] + case when i.[Tip_elimina_basura_3] > 0 then 1 else 0 end + w.[Tip_elimina_basura_3] + case when i.[Tip_elimina_basura_4] > 0 then 1 else 0 end + w.[Tip_elimina_basura_4] + case when i.[Tip_elimina_basura_5] > 0 then 1 else 0 end + w.[Tip_elimina_basura_5] + case when i.[Tip_elimina_basura_6] > 0 then 1 else 0 end + w.[Tip_elimina_basura_6] + case when i.[Tip_elimina_basura_7] > 0 then 1 else 0 end + w.[Tip_elimina_basura_7])
			,[Tip_elimina_basura_4] = (case when i.[Tip_elimina_basura_4] > 0 then 1 else 0 end + w.[Tip_elimina_basura_4]) / (case when i.[Tip_elimina_basura_1] > 0 then 1 else 0 end + w.[Tip_elimina_basura_1] + case when i.[Tip_elimina_basura_2] > 0 then 1 else 0 end + w.[Tip_elimina_basura_2] + case when i.[Tip_elimina_basura_3] > 0 then 1 else 0 end + w.[Tip_elimina_basura_3] + case when i.[Tip_elimina_basura_4] > 0 then 1 else 0 end + w.[Tip_elimina_basura_4] + case when i.[Tip_elimina_basura_5] > 0 then 1 else 0 end + w.[Tip_elimina_basura_5] + case when i.[Tip_elimina_basura_6] > 0 then 1 else 0 end + w.[Tip_elimina_basura_6] + case when i.[Tip_elimina_basura_7] > 0 then 1 else 0 end + w.[Tip_elimina_basura_7])
			,[Tip_elimina_basura_5] = (case when i.[Tip_elimina_basura_5] > 0 then 1 else 0 end + w.[Tip_elimina_basura_5]) / (case when i.[Tip_elimina_basura_1] > 0 then 1 else 0 end + w.[Tip_elimina_basura_1] + case when i.[Tip_elimina_basura_2] > 0 then 1 else 0 end + w.[Tip_elimina_basura_2] + case when i.[Tip_elimina_basura_3] > 0 then 1 else 0 end + w.[Tip_elimina_basura_3] + case when i.[Tip_elimina_basura_4] > 0 then 1 else 0 end + w.[Tip_elimina_basura_4] + case when i.[Tip_elimina_basura_5] > 0 then 1 else 0 end + w.[Tip_elimina_basura_5] + case when i.[Tip_elimina_basura_6] > 0 then 1 else 0 end + w.[Tip_elimina_basura_6] + case when i.[Tip_elimina_basura_7] > 0 then 1 else 0 end + w.[Tip_elimina_basura_7])
			,[Tip_elimina_basura_6] = (case when i.[Tip_elimina_basura_6] > 0 then 1 else 0 end + w.[Tip_elimina_basura_6]) / (case when i.[Tip_elimina_basura_1] > 0 then 1 else 0 end + w.[Tip_elimina_basura_1] + case when i.[Tip_elimina_basura_2] > 0 then 1 else 0 end + w.[Tip_elimina_basura_2] + case when i.[Tip_elimina_basura_3] > 0 then 1 else 0 end + w.[Tip_elimina_basura_3] + case when i.[Tip_elimina_basura_4] > 0 then 1 else 0 end + w.[Tip_elimina_basura_4] + case when i.[Tip_elimina_basura_5] > 0 then 1 else 0 end + w.[Tip_elimina_basura_5] + case when i.[Tip_elimina_basura_6] > 0 then 1 else 0 end + w.[Tip_elimina_basura_6] + case when i.[Tip_elimina_basura_7] > 0 then 1 else 0 end + w.[Tip_elimina_basura_7])
			,[Tip_elimina_basura_7] = (case when i.[Tip_elimina_basura_7] > 0 then 1 else 0 end + w.[Tip_elimina_basura_7]) / (case when i.[Tip_elimina_basura_1] > 0 then 1 else 0 end + w.[Tip_elimina_basura_1] + case when i.[Tip_elimina_basura_2] > 0 then 1 else 0 end + w.[Tip_elimina_basura_2] + case when i.[Tip_elimina_basura_3] > 0 then 1 else 0 end + w.[Tip_elimina_basura_3] + case when i.[Tip_elimina_basura_4] > 0 then 1 else 0 end + w.[Tip_elimina_basura_4] + case when i.[Tip_elimina_basura_5] > 0 then 1 else 0 end + w.[Tip_elimina_basura_5] + case when i.[Tip_elimina_basura_6] > 0 then 1 else 0 end + w.[Tip_elimina_basura_6] + case when i.[Tip_elimina_basura_7] > 0 then 1 else 0 end + w.[Tip_elimina_basura_7])
			,[Tip_energia_cocina_1] = (case when i.[Tip_energia_cocina_1] > 0 then 1 else 0 end + w.[Tip_energia_cocina_1]) / (case when i.[Tip_energia_cocina_1] > 0 then 1 else 0 end + w.[Tip_energia_cocina_1] + case when i.[Tip_energia_cocina_2] > 0 then 1 else 0 end + w.[Tip_energia_cocina_2] + case when i.[Tip_energia_cocina_3] > 0 then 1 else 0 end + w.[Tip_energia_cocina_3] + case when i.[Tip_energia_cocina_4] > 0 then 1 else 0 end + w.[Tip_energia_cocina_4] + case when i.[Tip_energia_cocina_5] > 0 then 1 else 0 end + w.[Tip_energia_cocina_5] + case when i.[Tip_energia_cocina_6] > 0 then 1 else 0 end + w.[Tip_energia_cocina_6] + case when i.[Tip_energia_cocina_7] > 0 then 1 else 0 end + w.[Tip_energia_cocina_7])
			,[Tip_energia_cocina_2] = (case when i.[Tip_energia_cocina_2] > 0 then 1 else 0 end + w.[Tip_energia_cocina_2]) / (case when i.[Tip_energia_cocina_1] > 0 then 1 else 0 end + w.[Tip_energia_cocina_1] + case when i.[Tip_energia_cocina_2] > 0 then 1 else 0 end + w.[Tip_energia_cocina_2] + case when i.[Tip_energia_cocina_3] > 0 then 1 else 0 end + w.[Tip_energia_cocina_3] + case when i.[Tip_energia_cocina_4] > 0 then 1 else 0 end + w.[Tip_energia_cocina_4] + case when i.[Tip_energia_cocina_5] > 0 then 1 else 0 end + w.[Tip_energia_cocina_5] + case when i.[Tip_energia_cocina_6] > 0 then 1 else 0 end + w.[Tip_energia_cocina_6] + case when i.[Tip_energia_cocina_7] > 0 then 1 else 0 end + w.[Tip_energia_cocina_7])
			,[Tip_energia_cocina_3] = (case when i.[Tip_energia_cocina_3] > 0 then 1 else 0 end + w.[Tip_energia_cocina_3]) / (case when i.[Tip_energia_cocina_1] > 0 then 1 else 0 end + w.[Tip_energia_cocina_1] + case when i.[Tip_energia_cocina_2] > 0 then 1 else 0 end + w.[Tip_energia_cocina_2] + case when i.[Tip_energia_cocina_3] > 0 then 1 else 0 end + w.[Tip_energia_cocina_3] + case when i.[Tip_energia_cocina_4] > 0 then 1 else 0 end + w.[Tip_energia_cocina_4] + case when i.[Tip_energia_cocina_5] > 0 then 1 else 0 end + w.[Tip_energia_cocina_5] + case when i.[Tip_energia_cocina_6] > 0 then 1 else 0 end + w.[Tip_energia_cocina_6] + case when i.[Tip_energia_cocina_7] > 0 then 1 else 0 end + w.[Tip_energia_cocina_7])
			,[Tip_energia_cocina_4] = (case when i.[Tip_energia_cocina_4] > 0 then 1 else 0 end + w.[Tip_energia_cocina_4]) / (case when i.[Tip_energia_cocina_1] > 0 then 1 else 0 end + w.[Tip_energia_cocina_1] + case when i.[Tip_energia_cocina_2] > 0 then 1 else 0 end + w.[Tip_energia_cocina_2] + case when i.[Tip_energia_cocina_3] > 0 then 1 else 0 end + w.[Tip_energia_cocina_3] + case when i.[Tip_energia_cocina_4] > 0 then 1 else 0 end + w.[Tip_energia_cocina_4] + case when i.[Tip_energia_cocina_5] > 0 then 1 else 0 end + w.[Tip_energia_cocina_5] + case when i.[Tip_energia_cocina_6] > 0 then 1 else 0 end + w.[Tip_energia_cocina_6] + case when i.[Tip_energia_cocina_7] > 0 then 1 else 0 end + w.[Tip_energia_cocina_7])
			,[Tip_energia_cocina_5] = (case when i.[Tip_energia_cocina_5] > 0 then 1 else 0 end + w.[Tip_energia_cocina_5]) / (case when i.[Tip_energia_cocina_1] > 0 then 1 else 0 end + w.[Tip_energia_cocina_1] + case when i.[Tip_energia_cocina_2] > 0 then 1 else 0 end + w.[Tip_energia_cocina_2] + case when i.[Tip_energia_cocina_3] > 0 then 1 else 0 end + w.[Tip_energia_cocina_3] + case when i.[Tip_energia_cocina_4] > 0 then 1 else 0 end + w.[Tip_energia_cocina_4] + case when i.[Tip_energia_cocina_5] > 0 then 1 else 0 end + w.[Tip_energia_cocina_5] + case when i.[Tip_energia_cocina_6] > 0 then 1 else 0 end + w.[Tip_energia_cocina_6] + case when i.[Tip_energia_cocina_7] > 0 then 1 else 0 end + w.[Tip_energia_cocina_7])
			,[Tip_energia_cocina_6] = (case when i.[Tip_energia_cocina_6] > 0 then 1 else 0 end + w.[Tip_energia_cocina_6]) / (case when i.[Tip_energia_cocina_1] > 0 then 1 else 0 end + w.[Tip_energia_cocina_1] + case when i.[Tip_energia_cocina_2] > 0 then 1 else 0 end + w.[Tip_energia_cocina_2] + case when i.[Tip_energia_cocina_3] > 0 then 1 else 0 end + w.[Tip_energia_cocina_3] + case when i.[Tip_energia_cocina_4] > 0 then 1 else 0 end + w.[Tip_energia_cocina_4] + case when i.[Tip_energia_cocina_5] > 0 then 1 else 0 end + w.[Tip_energia_cocina_5] + case when i.[Tip_energia_cocina_6] > 0 then 1 else 0 end + w.[Tip_energia_cocina_6] + case when i.[Tip_energia_cocina_7] > 0 then 1 else 0 end + w.[Tip_energia_cocina_7])
			,[Tip_energia_cocina_7] = (case when i.[Tip_energia_cocina_7] > 0 then 1 else 0 end + w.[Tip_energia_cocina_7]) / (case when i.[Tip_energia_cocina_1] > 0 then 1 else 0 end + w.[Tip_energia_cocina_1] + case when i.[Tip_energia_cocina_2] > 0 then 1 else 0 end + w.[Tip_energia_cocina_2] + case when i.[Tip_energia_cocina_3] > 0 then 1 else 0 end + w.[Tip_energia_cocina_3] + case when i.[Tip_energia_cocina_4] > 0 then 1 else 0 end + w.[Tip_energia_cocina_4] + case when i.[Tip_energia_cocina_5] > 0 then 1 else 0 end + w.[Tip_energia_cocina_5] + case when i.[Tip_energia_cocina_6] > 0 then 1 else 0 end + w.[Tip_energia_cocina_6] + case when i.[Tip_energia_cocina_7] > 0 then 1 else 0 end + w.[Tip_energia_cocina_7])
			,[Tip_estrato_acueducto_1] = (case when i.[Tip_estrato_acueducto_1] > 0 then 1 else 0 end + w.[Tip_estrato_acueducto_1]) / (case when i.[Tip_estrato_acueducto_1] > 0 then 1 else 0 end + w.[Tip_estrato_acueducto_1] + case when i.[Tip_estrato_acueducto_2] > 0 then 1 else 0 end + w.[Tip_estrato_acueducto_2])
			,[Tip_estrato_acueducto_2] = (case when i.[Tip_estrato_acueducto_2] > 0 then 1 else 0 end + w.[Tip_estrato_acueducto_2]) / (case when i.[Tip_estrato_acueducto_1] > 0 then 1 else 0 end + w.[Tip_estrato_acueducto_1] + case when i.[Tip_estrato_acueducto_2] > 0 then 1 else 0 end + w.[Tip_estrato_acueducto_2])
			,[Tip_estrato_energia_1] = (case when i.[Tip_estrato_energia_1] > 0 then 1 else 0 end + w.[Tip_estrato_energia_1]) / (case when i.[Tip_estrato_energia_1] > 0 then 1 else 0 end + w.[Tip_estrato_energia_1] + case when i.[Tip_estrato_energia_2] > 0 then 1 else 0 end + w.[Tip_estrato_energia_2])
			,[Tip_estrato_energia_2] = (case when i.[Tip_estrato_energia_2] > 0 then 1 else 0 end + w.[Tip_estrato_energia_2]) / (case when i.[Tip_estrato_energia_1] > 0 then 1 else 0 end + w.[Tip_estrato_energia_1] + case when i.[Tip_estrato_energia_2] > 0 then 1 else 0 end + w.[Tip_estrato_energia_2])
			,[Tip_mat_paredes_0] = (case when i.[Tip_mat_paredes_0] > 0 then 1 else 0 end + w.[Tip_mat_paredes_0]) / (case when i.[Tip_mat_paredes_0] > 0 then 1 else 0 end + w.[Tip_mat_paredes_0] + case when i.[Tip_mat_paredes_1] > 0 then 1 else 0 end + w.[Tip_mat_paredes_1] + case when i.[Tip_mat_paredes_2] > 0 then 1 else 0 end + w.[Tip_mat_paredes_2] + case when i.[Tip_mat_paredes_3] > 0 then 1 else 0 end + w.[Tip_mat_paredes_3] + case when i.[Tip_mat_paredes_4] > 0 then 1 else 0 end + w.[Tip_mat_paredes_4] + case when i.[Tip_mat_paredes_5] > 0 then 1 else 0 end + w.[Tip_mat_paredes_5] + case when i.[Tip_mat_paredes_6] > 0 then 1 else 0 end + w.[Tip_mat_paredes_6] + case when i.[Tip_mat_paredes_7] > 0 then 1 else 0 end + w.[Tip_mat_paredes_7])
			,[Tip_mat_paredes_1] = (case when i.[Tip_mat_paredes_1] > 0 then 1 else 0 end + w.[Tip_mat_paredes_1]) / (case when i.[Tip_mat_paredes_0] > 0 then 1 else 0 end + w.[Tip_mat_paredes_0] + case when i.[Tip_mat_paredes_1] > 0 then 1 else 0 end + w.[Tip_mat_paredes_1] + case when i.[Tip_mat_paredes_2] > 0 then 1 else 0 end + w.[Tip_mat_paredes_2] + case when i.[Tip_mat_paredes_3] > 0 then 1 else 0 end + w.[Tip_mat_paredes_3] + case when i.[Tip_mat_paredes_4] > 0 then 1 else 0 end + w.[Tip_mat_paredes_4] + case when i.[Tip_mat_paredes_5] > 0 then 1 else 0 end + w.[Tip_mat_paredes_5] + case when i.[Tip_mat_paredes_6] > 0 then 1 else 0 end + w.[Tip_mat_paredes_6] + case when i.[Tip_mat_paredes_7] > 0 then 1 else 0 end + w.[Tip_mat_paredes_7])
			,[Tip_mat_paredes_2] = (case when i.[Tip_mat_paredes_2] > 0 then 1 else 0 end + w.[Tip_mat_paredes_2]) / (case when i.[Tip_mat_paredes_0] > 0 then 1 else 0 end + w.[Tip_mat_paredes_0] + case when i.[Tip_mat_paredes_1] > 0 then 1 else 0 end + w.[Tip_mat_paredes_1] + case when i.[Tip_mat_paredes_2] > 0 then 1 else 0 end + w.[Tip_mat_paredes_2] + case when i.[Tip_mat_paredes_3] > 0 then 1 else 0 end + w.[Tip_mat_paredes_3] + case when i.[Tip_mat_paredes_4] > 0 then 1 else 0 end + w.[Tip_mat_paredes_4] + case when i.[Tip_mat_paredes_5] > 0 then 1 else 0 end + w.[Tip_mat_paredes_5] + case when i.[Tip_mat_paredes_6] > 0 then 1 else 0 end + w.[Tip_mat_paredes_6] + case when i.[Tip_mat_paredes_7] > 0 then 1 else 0 end + w.[Tip_mat_paredes_7])
			,[Tip_mat_paredes_3] = (case when i.[Tip_mat_paredes_3] > 0 then 1 else 0 end + w.[Tip_mat_paredes_3]) / (case when i.[Tip_mat_paredes_0] > 0 then 1 else 0 end + w.[Tip_mat_paredes_0] + case when i.[Tip_mat_paredes_1] > 0 then 1 else 0 end + w.[Tip_mat_paredes_1] + case when i.[Tip_mat_paredes_2] > 0 then 1 else 0 end + w.[Tip_mat_paredes_2] + case when i.[Tip_mat_paredes_3] > 0 then 1 else 0 end + w.[Tip_mat_paredes_3] + case when i.[Tip_mat_paredes_4] > 0 then 1 else 0 end + w.[Tip_mat_paredes_4] + case when i.[Tip_mat_paredes_5] > 0 then 1 else 0 end + w.[Tip_mat_paredes_5] + case when i.[Tip_mat_paredes_6] > 0 then 1 else 0 end + w.[Tip_mat_paredes_6] + case when i.[Tip_mat_paredes_7] > 0 then 1 else 0 end + w.[Tip_mat_paredes_7])
			,[Tip_mat_paredes_4] = (case when i.[Tip_mat_paredes_4] > 0 then 1 else 0 end + w.[Tip_mat_paredes_4]) / (case when i.[Tip_mat_paredes_0] > 0 then 1 else 0 end + w.[Tip_mat_paredes_0] + case when i.[Tip_mat_paredes_1] > 0 then 1 else 0 end + w.[Tip_mat_paredes_1] + case when i.[Tip_mat_paredes_2] > 0 then 1 else 0 end + w.[Tip_mat_paredes_2] + case when i.[Tip_mat_paredes_3] > 0 then 1 else 0 end + w.[Tip_mat_paredes_3] + case when i.[Tip_mat_paredes_4] > 0 then 1 else 0 end + w.[Tip_mat_paredes_4] + case when i.[Tip_mat_paredes_5] > 0 then 1 else 0 end + w.[Tip_mat_paredes_5] + case when i.[Tip_mat_paredes_6] > 0 then 1 else 0 end + w.[Tip_mat_paredes_6] + case when i.[Tip_mat_paredes_7] > 0 then 1 else 0 end + w.[Tip_mat_paredes_7])
			,[Tip_mat_paredes_5] = (case when i.[Tip_mat_paredes_5] > 0 then 1 else 0 end + w.[Tip_mat_paredes_5]) / (case when i.[Tip_mat_paredes_0] > 0 then 1 else 0 end + w.[Tip_mat_paredes_0] + case when i.[Tip_mat_paredes_1] > 0 then 1 else 0 end + w.[Tip_mat_paredes_1] + case when i.[Tip_mat_paredes_2] > 0 then 1 else 0 end + w.[Tip_mat_paredes_2] + case when i.[Tip_mat_paredes_3] > 0 then 1 else 0 end + w.[Tip_mat_paredes_3] + case when i.[Tip_mat_paredes_4] > 0 then 1 else 0 end + w.[Tip_mat_paredes_4] + case when i.[Tip_mat_paredes_5] > 0 then 1 else 0 end + w.[Tip_mat_paredes_5] + case when i.[Tip_mat_paredes_6] > 0 then 1 else 0 end + w.[Tip_mat_paredes_6] + case when i.[Tip_mat_paredes_7] > 0 then 1 else 0 end + w.[Tip_mat_paredes_7])
			,[Tip_mat_paredes_6] = (case when i.[Tip_mat_paredes_6] > 0 then 1 else 0 end + w.[Tip_mat_paredes_6]) / (case when i.[Tip_mat_paredes_0] > 0 then 1 else 0 end + w.[Tip_mat_paredes_0] + case when i.[Tip_mat_paredes_1] > 0 then 1 else 0 end + w.[Tip_mat_paredes_1] + case when i.[Tip_mat_paredes_2] > 0 then 1 else 0 end + w.[Tip_mat_paredes_2] + case when i.[Tip_mat_paredes_3] > 0 then 1 else 0 end + w.[Tip_mat_paredes_3] + case when i.[Tip_mat_paredes_4] > 0 then 1 else 0 end + w.[Tip_mat_paredes_4] + case when i.[Tip_mat_paredes_5] > 0 then 1 else 0 end + w.[Tip_mat_paredes_5] + case when i.[Tip_mat_paredes_6] > 0 then 1 else 0 end + w.[Tip_mat_paredes_6] + case when i.[Tip_mat_paredes_7] > 0 then 1 else 0 end + w.[Tip_mat_paredes_7])
			,[Tip_mat_paredes_7] = (case when i.[Tip_mat_paredes_7] > 0 then 1 else 0 end + w.[Tip_mat_paredes_7]) / (case when i.[Tip_mat_paredes_0] > 0 then 1 else 0 end + w.[Tip_mat_paredes_0] + case when i.[Tip_mat_paredes_1] > 0 then 1 else 0 end + w.[Tip_mat_paredes_1] + case when i.[Tip_mat_paredes_2] > 0 then 1 else 0 end + w.[Tip_mat_paredes_2] + case when i.[Tip_mat_paredes_3] > 0 then 1 else 0 end + w.[Tip_mat_paredes_3] + case when i.[Tip_mat_paredes_4] > 0 then 1 else 0 end + w.[Tip_mat_paredes_4] + case when i.[Tip_mat_paredes_5] > 0 then 1 else 0 end + w.[Tip_mat_paredes_5] + case when i.[Tip_mat_paredes_6] > 0 then 1 else 0 end + w.[Tip_mat_paredes_6] + case when i.[Tip_mat_paredes_7] > 0 then 1 else 0 end + w.[Tip_mat_paredes_7])
			,[Tip_mat_pisos_1] = (case when i.[Tip_mat_pisos_1] > 0 then 1 else 0 end + w.[Tip_mat_pisos_1]) / (case when i.[Tip_mat_pisos_1] > 0 then 1 else 0 end + w.[Tip_mat_pisos_1] + case when i.[Tip_mat_pisos_2] > 0 then 1 else 0 end + w.[Tip_mat_pisos_2] + case when i.[Tip_mat_pisos_3] > 0 then 1 else 0 end + w.[Tip_mat_pisos_3] + case when i.[Tip_mat_pisos_4] > 0 then 1 else 0 end + w.[Tip_mat_pisos_4] + case when i.[Tip_mat_pisos_5] > 0 then 1 else 0 end + w.[Tip_mat_pisos_5] + case when i.[Tip_mat_pisos_6] > 0 then 1 else 0 end + w.[Tip_mat_pisos_6])
			,[Tip_mat_pisos_2] = (case when i.[Tip_mat_pisos_2] > 0 then 1 else 0 end + w.[Tip_mat_pisos_2]) / (case when i.[Tip_mat_pisos_1] > 0 then 1 else 0 end + w.[Tip_mat_pisos_1] + case when i.[Tip_mat_pisos_2] > 0 then 1 else 0 end + w.[Tip_mat_pisos_2] + case when i.[Tip_mat_pisos_3] > 0 then 1 else 0 end + w.[Tip_mat_pisos_3] + case when i.[Tip_mat_pisos_4] > 0 then 1 else 0 end + w.[Tip_mat_pisos_4] + case when i.[Tip_mat_pisos_5] > 0 then 1 else 0 end + w.[Tip_mat_pisos_5] + case when i.[Tip_mat_pisos_6] > 0 then 1 else 0 end + w.[Tip_mat_pisos_6])
			,[Tip_mat_pisos_3] = (case when i.[Tip_mat_pisos_3] > 0 then 1 else 0 end + w.[Tip_mat_pisos_3]) / (case when i.[Tip_mat_pisos_1] > 0 then 1 else 0 end + w.[Tip_mat_pisos_1] + case when i.[Tip_mat_pisos_2] > 0 then 1 else 0 end + w.[Tip_mat_pisos_2] + case when i.[Tip_mat_pisos_3] > 0 then 1 else 0 end + w.[Tip_mat_pisos_3] + case when i.[Tip_mat_pisos_4] > 0 then 1 else 0 end + w.[Tip_mat_pisos_4] + case when i.[Tip_mat_pisos_5] > 0 then 1 else 0 end + w.[Tip_mat_pisos_5] + case when i.[Tip_mat_pisos_6] > 0 then 1 else 0 end + w.[Tip_mat_pisos_6])
			,[Tip_mat_pisos_4] = (case when i.[Tip_mat_pisos_4] > 0 then 1 else 0 end + w.[Tip_mat_pisos_4]) / (case when i.[Tip_mat_pisos_1] > 0 then 1 else 0 end + w.[Tip_mat_pisos_1] + case when i.[Tip_mat_pisos_2] > 0 then 1 else 0 end + w.[Tip_mat_pisos_2] + case when i.[Tip_mat_pisos_3] > 0 then 1 else 0 end + w.[Tip_mat_pisos_3] + case when i.[Tip_mat_pisos_4] > 0 then 1 else 0 end + w.[Tip_mat_pisos_4] + case when i.[Tip_mat_pisos_5] > 0 then 1 else 0 end + w.[Tip_mat_pisos_5] + case when i.[Tip_mat_pisos_6] > 0 then 1 else 0 end + w.[Tip_mat_pisos_6])
			,[Tip_mat_pisos_5] = (case when i.[Tip_mat_pisos_5] > 0 then 1 else 0 end + w.[Tip_mat_pisos_5]) / (case when i.[Tip_mat_pisos_1] > 0 then 1 else 0 end + w.[Tip_mat_pisos_1] + case when i.[Tip_mat_pisos_2] > 0 then 1 else 0 end + w.[Tip_mat_pisos_2] + case when i.[Tip_mat_pisos_3] > 0 then 1 else 0 end + w.[Tip_mat_pisos_3] + case when i.[Tip_mat_pisos_4] > 0 then 1 else 0 end + w.[Tip_mat_pisos_4] + case when i.[Tip_mat_pisos_5] > 0 then 1 else 0 end + w.[Tip_mat_pisos_5] + case when i.[Tip_mat_pisos_6] > 0 then 1 else 0 end + w.[Tip_mat_pisos_6])
			,[Tip_mat_pisos_6] = (case when i.[Tip_mat_pisos_6] > 0 then 1 else 0 end + w.[Tip_mat_pisos_6]) / (case when i.[Tip_mat_pisos_1] > 0 then 1 else 0 end + w.[Tip_mat_pisos_1] + case when i.[Tip_mat_pisos_2] > 0 then 1 else 0 end + w.[Tip_mat_pisos_2] + case when i.[Tip_mat_pisos_3] > 0 then 1 else 0 end + w.[Tip_mat_pisos_3] + case when i.[Tip_mat_pisos_4] > 0 then 1 else 0 end + w.[Tip_mat_pisos_4] + case when i.[Tip_mat_pisos_5] > 0 then 1 else 0 end + w.[Tip_mat_pisos_5] + case when i.[Tip_mat_pisos_6] > 0 then 1 else 0 end + w.[Tip_mat_pisos_6])
			,[Tip_ocupa_vivienda_1] = (case when i.[Tip_ocupa_vivienda_1] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_1]) / (case when i.[Tip_ocupa_vivienda_1] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_1] + case when i.[Tip_ocupa_vivienda_2] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_2] + case when i.[Tip_ocupa_vivienda_3] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_3] + case when i.[Tip_ocupa_vivienda_4] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_4] + case when i.[Tip_ocupa_vivienda_5] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_5])
			,[Tip_ocupa_vivienda_2] = (case when i.[Tip_ocupa_vivienda_2] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_2]) / (case when i.[Tip_ocupa_vivienda_1] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_1] + case when i.[Tip_ocupa_vivienda_2] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_2] + case when i.[Tip_ocupa_vivienda_3] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_3] + case when i.[Tip_ocupa_vivienda_4] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_4] + case when i.[Tip_ocupa_vivienda_5] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_5])
			,[Tip_ocupa_vivienda_3] = (case when i.[Tip_ocupa_vivienda_3] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_3]) / (case when i.[Tip_ocupa_vivienda_1] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_1] + case when i.[Tip_ocupa_vivienda_2] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_2] + case when i.[Tip_ocupa_vivienda_3] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_3] + case when i.[Tip_ocupa_vivienda_4] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_4] + case when i.[Tip_ocupa_vivienda_5] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_5])
			,[Tip_ocupa_vivienda_4] = (case when i.[Tip_ocupa_vivienda_4] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_4]) / (case when i.[Tip_ocupa_vivienda_1] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_1] + case when i.[Tip_ocupa_vivienda_2] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_2] + case when i.[Tip_ocupa_vivienda_3] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_3] + case when i.[Tip_ocupa_vivienda_4] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_4] + case when i.[Tip_ocupa_vivienda_5] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_5])
			,[Tip_ocupa_vivienda_5] = (case when i.[Tip_ocupa_vivienda_5] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_5]) / (case when i.[Tip_ocupa_vivienda_1] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_1] + case when i.[Tip_ocupa_vivienda_2] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_2] + case when i.[Tip_ocupa_vivienda_3] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_3] + case when i.[Tip_ocupa_vivienda_4] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_4] + case when i.[Tip_ocupa_vivienda_5] > 0 then 1 else 0 end + w.[Tip_ocupa_vivienda_5])
			,[Tip_origen_agua_1] = (case when i.[Tip_origen_agua_1] > 0 then 1 else 0 end + w.[Tip_origen_agua_1]) / (case when i.[Tip_origen_agua_1] > 0 then 1 else 0 end + w.[Tip_origen_agua_1] + case when i.[Tip_origen_agua_2] > 0 then 1 else 0 end + w.[Tip_origen_agua_2] + case when i.[Tip_origen_agua_3] > 0 then 1 else 0 end + w.[Tip_origen_agua_3] + case when i.[Tip_origen_agua_4] > 0 then 1 else 0 end + w.[Tip_origen_agua_4] + case when i.[Tip_origen_agua_5] > 0 then 1 else 0 end + w.[Tip_origen_agua_5] + case when i.[Tip_origen_agua_6] > 0 then 1 else 0 end + w.[Tip_origen_agua_6] + case when i.[Tip_origen_agua_7] > 0 then 1 else 0 end + w.[Tip_origen_agua_7] + case when i.[Tip_origen_agua_8] > 0 then 1 else 0 end + w.[Tip_origen_agua_8] + case when i.[Tip_origen_agua_9] > 0 then 1 else 0 end + w.[Tip_origen_agua_9])
			,[Tip_origen_agua_2] = (case when i.[Tip_origen_agua_2] > 0 then 1 else 0 end + w.[Tip_origen_agua_2]) / (case when i.[Tip_origen_agua_1] > 0 then 1 else 0 end + w.[Tip_origen_agua_1] + case when i.[Tip_origen_agua_2] > 0 then 1 else 0 end + w.[Tip_origen_agua_2] + case when i.[Tip_origen_agua_3] > 0 then 1 else 0 end + w.[Tip_origen_agua_3] + case when i.[Tip_origen_agua_4] > 0 then 1 else 0 end + w.[Tip_origen_agua_4] + case when i.[Tip_origen_agua_5] > 0 then 1 else 0 end + w.[Tip_origen_agua_5] + case when i.[Tip_origen_agua_6] > 0 then 1 else 0 end + w.[Tip_origen_agua_6] + case when i.[Tip_origen_agua_7] > 0 then 1 else 0 end + w.[Tip_origen_agua_7] + case when i.[Tip_origen_agua_8] > 0 then 1 else 0 end + w.[Tip_origen_agua_8] + case when i.[Tip_origen_agua_9] > 0 then 1 else 0 end + w.[Tip_origen_agua_9])
			,[Tip_origen_agua_3] = (case when i.[Tip_origen_agua_3] > 0 then 1 else 0 end + w.[Tip_origen_agua_3]) / (case when i.[Tip_origen_agua_1] > 0 then 1 else 0 end + w.[Tip_origen_agua_1] + case when i.[Tip_origen_agua_2] > 0 then 1 else 0 end + w.[Tip_origen_agua_2] + case when i.[Tip_origen_agua_3] > 0 then 1 else 0 end + w.[Tip_origen_agua_3] + case when i.[Tip_origen_agua_4] > 0 then 1 else 0 end + w.[Tip_origen_agua_4] + case when i.[Tip_origen_agua_5] > 0 then 1 else 0 end + w.[Tip_origen_agua_5] + case when i.[Tip_origen_agua_6] > 0 then 1 else 0 end + w.[Tip_origen_agua_6] + case when i.[Tip_origen_agua_7] > 0 then 1 else 0 end + w.[Tip_origen_agua_7] + case when i.[Tip_origen_agua_8] > 0 then 1 else 0 end + w.[Tip_origen_agua_8] + case when i.[Tip_origen_agua_9] > 0 then 1 else 0 end + w.[Tip_origen_agua_9])
			,[Tip_origen_agua_4] = (case when i.[Tip_origen_agua_4] > 0 then 1 else 0 end + w.[Tip_origen_agua_4]) / (case when i.[Tip_origen_agua_1] > 0 then 1 else 0 end + w.[Tip_origen_agua_1] + case when i.[Tip_origen_agua_2] > 0 then 1 else 0 end + w.[Tip_origen_agua_2] + case when i.[Tip_origen_agua_3] > 0 then 1 else 0 end + w.[Tip_origen_agua_3] + case when i.[Tip_origen_agua_4] > 0 then 1 else 0 end + w.[Tip_origen_agua_4] + case when i.[Tip_origen_agua_5] > 0 then 1 else 0 end + w.[Tip_origen_agua_5] + case when i.[Tip_origen_agua_6] > 0 then 1 else 0 end + w.[Tip_origen_agua_6] + case when i.[Tip_origen_agua_7] > 0 then 1 else 0 end + w.[Tip_origen_agua_7] + case when i.[Tip_origen_agua_8] > 0 then 1 else 0 end + w.[Tip_origen_agua_8] + case when i.[Tip_origen_agua_9] > 0 then 1 else 0 end + w.[Tip_origen_agua_9])
			,[Tip_origen_agua_5] = (case when i.[Tip_origen_agua_5] > 0 then 1 else 0 end + w.[Tip_origen_agua_5]) / (case when i.[Tip_origen_agua_1] > 0 then 1 else 0 end + w.[Tip_origen_agua_1] + case when i.[Tip_origen_agua_2] > 0 then 1 else 0 end + w.[Tip_origen_agua_2] + case when i.[Tip_origen_agua_3] > 0 then 1 else 0 end + w.[Tip_origen_agua_3] + case when i.[Tip_origen_agua_4] > 0 then 1 else 0 end + w.[Tip_origen_agua_4] + case when i.[Tip_origen_agua_5] > 0 then 1 else 0 end + w.[Tip_origen_agua_5] + case when i.[Tip_origen_agua_6] > 0 then 1 else 0 end + w.[Tip_origen_agua_6] + case when i.[Tip_origen_agua_7] > 0 then 1 else 0 end + w.[Tip_origen_agua_7] + case when i.[Tip_origen_agua_8] > 0 then 1 else 0 end + w.[Tip_origen_agua_8] + case when i.[Tip_origen_agua_9] > 0 then 1 else 0 end + w.[Tip_origen_agua_9])
			,[Tip_origen_agua_6] = (case when i.[Tip_origen_agua_6] > 0 then 1 else 0 end + w.[Tip_origen_agua_6]) / (case when i.[Tip_origen_agua_1] > 0 then 1 else 0 end + w.[Tip_origen_agua_1] + case when i.[Tip_origen_agua_2] > 0 then 1 else 0 end + w.[Tip_origen_agua_2] + case when i.[Tip_origen_agua_3] > 0 then 1 else 0 end + w.[Tip_origen_agua_3] + case when i.[Tip_origen_agua_4] > 0 then 1 else 0 end + w.[Tip_origen_agua_4] + case when i.[Tip_origen_agua_5] > 0 then 1 else 0 end + w.[Tip_origen_agua_5] + case when i.[Tip_origen_agua_6] > 0 then 1 else 0 end + w.[Tip_origen_agua_6] + case when i.[Tip_origen_agua_7] > 0 then 1 else 0 end + w.[Tip_origen_agua_7] + case when i.[Tip_origen_agua_8] > 0 then 1 else 0 end + w.[Tip_origen_agua_8] + case when i.[Tip_origen_agua_9] > 0 then 1 else 0 end + w.[Tip_origen_agua_9])
			,[Tip_origen_agua_7] = (case when i.[Tip_origen_agua_7] > 0 then 1 else 0 end + w.[Tip_origen_agua_7]) / (case when i.[Tip_origen_agua_1] > 0 then 1 else 0 end + w.[Tip_origen_agua_1] + case when i.[Tip_origen_agua_2] > 0 then 1 else 0 end + w.[Tip_origen_agua_2] + case when i.[Tip_origen_agua_3] > 0 then 1 else 0 end + w.[Tip_origen_agua_3] + case when i.[Tip_origen_agua_4] > 0 then 1 else 0 end + w.[Tip_origen_agua_4] + case when i.[Tip_origen_agua_5] > 0 then 1 else 0 end + w.[Tip_origen_agua_5] + case when i.[Tip_origen_agua_6] > 0 then 1 else 0 end + w.[Tip_origen_agua_6] + case when i.[Tip_origen_agua_7] > 0 then 1 else 0 end + w.[Tip_origen_agua_7] + case when i.[Tip_origen_agua_8] > 0 then 1 else 0 end + w.[Tip_origen_agua_8] + case when i.[Tip_origen_agua_9] > 0 then 1 else 0 end + w.[Tip_origen_agua_9])
			,[Tip_origen_agua_8] = (case when i.[Tip_origen_agua_8] > 0 then 1 else 0 end + w.[Tip_origen_agua_8]) / (case when i.[Tip_origen_agua_1] > 0 then 1 else 0 end + w.[Tip_origen_agua_1] + case when i.[Tip_origen_agua_2] > 0 then 1 else 0 end + w.[Tip_origen_agua_2] + case when i.[Tip_origen_agua_3] > 0 then 1 else 0 end + w.[Tip_origen_agua_3] + case when i.[Tip_origen_agua_4] > 0 then 1 else 0 end + w.[Tip_origen_agua_4] + case when i.[Tip_origen_agua_5] > 0 then 1 else 0 end + w.[Tip_origen_agua_5] + case when i.[Tip_origen_agua_6] > 0 then 1 else 0 end + w.[Tip_origen_agua_6] + case when i.[Tip_origen_agua_7] > 0 then 1 else 0 end + w.[Tip_origen_agua_7] + case when i.[Tip_origen_agua_8] > 0 then 1 else 0 end + w.[Tip_origen_agua_8] + case when i.[Tip_origen_agua_9] > 0 then 1 else 0 end + w.[Tip_origen_agua_9])
			,[Tip_origen_agua_9] = (case when i.[Tip_origen_agua_9] > 0 then 1 else 0 end + w.[Tip_origen_agua_9]) / (case when i.[Tip_origen_agua_1] > 0 then 1 else 0 end + w.[Tip_origen_agua_1] + case when i.[Tip_origen_agua_2] > 0 then 1 else 0 end + w.[Tip_origen_agua_2] + case when i.[Tip_origen_agua_3] > 0 then 1 else 0 end + w.[Tip_origen_agua_3] + case when i.[Tip_origen_agua_4] > 0 then 1 else 0 end + w.[Tip_origen_agua_4] + case when i.[Tip_origen_agua_5] > 0 then 1 else 0 end + w.[Tip_origen_agua_5] + case when i.[Tip_origen_agua_6] > 0 then 1 else 0 end + w.[Tip_origen_agua_6] + case when i.[Tip_origen_agua_7] > 0 then 1 else 0 end + w.[Tip_origen_agua_7] + case when i.[Tip_origen_agua_8] > 0 then 1 else 0 end + w.[Tip_origen_agua_8] + case when i.[Tip_origen_agua_9] > 0 then 1 else 0 end + w.[Tip_origen_agua_9])
			,[Tip_prepara_alimentos_1] = (case when i.[Tip_prepara_alimentos_1] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_1]) / (case when i.[Tip_prepara_alimentos_1] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_1] + case when i.[Tip_prepara_alimentos_2] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_2] + case when i.[Tip_prepara_alimentos_3] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_3] + case when i.[Tip_prepara_alimentos_4] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_4] + case when i.[Tip_prepara_alimentos_5] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_5])
			,[Tip_prepara_alimentos_2] = (case when i.[Tip_prepara_alimentos_2] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_2]) / (case when i.[Tip_prepara_alimentos_1] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_1] + case when i.[Tip_prepara_alimentos_2] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_2] + case when i.[Tip_prepara_alimentos_3] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_3] + case when i.[Tip_prepara_alimentos_4] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_4] + case when i.[Tip_prepara_alimentos_5] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_5])
			,[Tip_prepara_alimentos_3] = (case when i.[Tip_prepara_alimentos_3] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_3]) / (case when i.[Tip_prepara_alimentos_1] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_1] + case when i.[Tip_prepara_alimentos_2] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_2] + case when i.[Tip_prepara_alimentos_3] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_3] + case when i.[Tip_prepara_alimentos_4] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_4] + case when i.[Tip_prepara_alimentos_5] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_5])
			,[Tip_prepara_alimentos_4] = (case when i.[Tip_prepara_alimentos_4] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_4]) / (case when i.[Tip_prepara_alimentos_1] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_1] + case when i.[Tip_prepara_alimentos_2] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_2] + case when i.[Tip_prepara_alimentos_3] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_3] + case when i.[Tip_prepara_alimentos_4] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_4] + case when i.[Tip_prepara_alimentos_5] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_5])
			,[Tip_prepara_alimentos_5] = (case when i.[Tip_prepara_alimentos_5] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_5]) / (case when i.[Tip_prepara_alimentos_1] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_1] + case when i.[Tip_prepara_alimentos_2] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_2] + case when i.[Tip_prepara_alimentos_3] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_3] + case when i.[Tip_prepara_alimentos_4] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_4] + case when i.[Tip_prepara_alimentos_5] > 0 then 1 else 0 end + w.[Tip_prepara_alimentos_5])
			,[Tip_sanitario_1] = (case when i.[Tip_sanitario_1] > 0 then 1 else 0 end + w.[Tip_sanitario_1]) / (case when i.[Tip_sanitario_1] > 0 then 1 else 0 end + w.[Tip_sanitario_1] + case when i.[Tip_sanitario_2] > 0 then 1 else 0 end + w.[Tip_sanitario_2] + case when i.[Tip_sanitario_3] > 0 then 1 else 0 end + w.[Tip_sanitario_3] + case when i.[Tip_sanitario_4] > 0 then 1 else 0 end + w.[Tip_sanitario_4] + case when i.[Tip_sanitario_5] > 0 then 1 else 0 end + w.[Tip_sanitario_5])
			,[Tip_sanitario_2] = (case when i.[Tip_sanitario_2] > 0 then 1 else 0 end + w.[Tip_sanitario_2]) / (case when i.[Tip_sanitario_1] > 0 then 1 else 0 end + w.[Tip_sanitario_1] + case when i.[Tip_sanitario_2] > 0 then 1 else 0 end + w.[Tip_sanitario_2] + case when i.[Tip_sanitario_3] > 0 then 1 else 0 end + w.[Tip_sanitario_3] + case when i.[Tip_sanitario_4] > 0 then 1 else 0 end + w.[Tip_sanitario_4] + case when i.[Tip_sanitario_5] > 0 then 1 else 0 end + w.[Tip_sanitario_5])
			,[Tip_sanitario_3] = (case when i.[Tip_sanitario_3] > 0 then 1 else 0 end + w.[Tip_sanitario_3]) / (case when i.[Tip_sanitario_1] > 0 then 1 else 0 end + w.[Tip_sanitario_1] + case when i.[Tip_sanitario_2] > 0 then 1 else 0 end + w.[Tip_sanitario_2] + case when i.[Tip_sanitario_3] > 0 then 1 else 0 end + w.[Tip_sanitario_3] + case when i.[Tip_sanitario_4] > 0 then 1 else 0 end + w.[Tip_sanitario_4] + case when i.[Tip_sanitario_5] > 0 then 1 else 0 end + w.[Tip_sanitario_5])
			,[Tip_sanitario_4] = (case when i.[Tip_sanitario_4] > 0 then 1 else 0 end + w.[Tip_sanitario_4]) / (case when i.[Tip_sanitario_1] > 0 then 1 else 0 end + w.[Tip_sanitario_1] + case when i.[Tip_sanitario_2] > 0 then 1 else 0 end + w.[Tip_sanitario_2] + case when i.[Tip_sanitario_3] > 0 then 1 else 0 end + w.[Tip_sanitario_3] + case when i.[Tip_sanitario_4] > 0 then 1 else 0 end + w.[Tip_sanitario_4] + case when i.[Tip_sanitario_5] > 0 then 1 else 0 end + w.[Tip_sanitario_5])
			,[Tip_sanitario_5] = (case when i.[Tip_sanitario_5] > 0 then 1 else 0 end + w.[Tip_sanitario_5]) / (case when i.[Tip_sanitario_1] > 0 then 1 else 0 end + w.[Tip_sanitario_1] + case when i.[Tip_sanitario_2] > 0 then 1 else 0 end + w.[Tip_sanitario_2] + case when i.[Tip_sanitario_3] > 0 then 1 else 0 end + w.[Tip_sanitario_3] + case when i.[Tip_sanitario_4] > 0 then 1 else 0 end + w.[Tip_sanitario_4] + case when i.[Tip_sanitario_5] > 0 then 1 else 0 end + w.[Tip_sanitario_5])
			,[Tip_ubi_sanitario_1] = (case when i.[Tip_ubi_sanitario_1] > 0 then 1 else 0 end + w.[Tip_ubi_sanitario_1]) / (case when i.[Tip_ubi_sanitario_1] > 0 then 1 else 0 end + w.[Tip_ubi_sanitario_1] + case when i.[Tip_ubi_sanitario_2] > 0 then 1 else 0 end + w.[Tip_ubi_sanitario_2])
			,[Tip_ubi_sanitario_2] = (case when i.[Tip_ubi_sanitario_2] > 0 then 1 else 0 end + w.[Tip_ubi_sanitario_2]) / (case when i.[Tip_ubi_sanitario_1] > 0 then 1 else 0 end + w.[Tip_ubi_sanitario_1] + case when i.[Tip_ubi_sanitario_2] > 0 then 1 else 0 end + w.[Tip_ubi_sanitario_2])
			,[Tip_uso_agua_beber_1] = (case when i.[Tip_uso_agua_beber_1] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_1]) / (case when i.[Tip_uso_agua_beber_1] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_1] + case when i.[Tip_uso_agua_beber_2] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_2] + case when i.[Tip_uso_agua_beber_3] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_3] + case when i.[Tip_uso_agua_beber_4] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_4] + case when i.[Tip_uso_agua_beber_5] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_5] + case when i.[Tip_uso_agua_beber_6] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_6])
			,[Tip_uso_agua_beber_2] = (case when i.[Tip_uso_agua_beber_2] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_2]) / (case when i.[Tip_uso_agua_beber_1] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_1] + case when i.[Tip_uso_agua_beber_2] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_2] + case when i.[Tip_uso_agua_beber_3] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_3] + case when i.[Tip_uso_agua_beber_4] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_4] + case when i.[Tip_uso_agua_beber_5] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_5] + case when i.[Tip_uso_agua_beber_6] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_6])
			,[Tip_uso_agua_beber_3] = (case when i.[Tip_uso_agua_beber_3] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_3]) / (case when i.[Tip_uso_agua_beber_1] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_1] + case when i.[Tip_uso_agua_beber_2] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_2] + case when i.[Tip_uso_agua_beber_3] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_3] + case when i.[Tip_uso_agua_beber_4] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_4] + case when i.[Tip_uso_agua_beber_5] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_5] + case when i.[Tip_uso_agua_beber_6] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_6])
			,[Tip_uso_agua_beber_4] = (case when i.[Tip_uso_agua_beber_4] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_4]) / (case when i.[Tip_uso_agua_beber_1] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_1] + case when i.[Tip_uso_agua_beber_2] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_2] + case when i.[Tip_uso_agua_beber_3] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_3] + case when i.[Tip_uso_agua_beber_4] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_4] + case when i.[Tip_uso_agua_beber_5] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_5] + case when i.[Tip_uso_agua_beber_6] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_6])
			,[Tip_uso_agua_beber_5] = (case when i.[Tip_uso_agua_beber_5] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_5]) / (case when i.[Tip_uso_agua_beber_1] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_1] + case when i.[Tip_uso_agua_beber_2] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_2] + case when i.[Tip_uso_agua_beber_3] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_3] + case when i.[Tip_uso_agua_beber_4] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_4] + case when i.[Tip_uso_agua_beber_5] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_5] + case when i.[Tip_uso_agua_beber_6] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_6])
			,[Tip_uso_agua_beber_6] = (case when i.[Tip_uso_agua_beber_6] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_6]) / (case when i.[Tip_uso_agua_beber_1] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_1] + case when i.[Tip_uso_agua_beber_2] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_2] + case when i.[Tip_uso_agua_beber_3] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_3] + case when i.[Tip_uso_agua_beber_4] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_4] + case when i.[Tip_uso_agua_beber_5] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_5] + case when i.[Tip_uso_agua_beber_6] > 0 then 1 else 0 end + w.[Tip_uso_agua_beber_6])
			,[Tip_uso_cocina_1] = (case when i.[Tip_uso_cocina_1] > 0 then 1 else 0 end + w.[Tip_uso_cocina_1]) / (case when i.[Tip_uso_cocina_1] > 0 then 1 else 0 end + w.[Tip_uso_cocina_1] + case when i.[Tip_uso_cocina_2] > 0 then 1 else 0 end + w.[Tip_uso_cocina_2] + case when i.[Tip_uso_cocina_3] > 0 then 1 else 0 end + w.[Tip_uso_cocina_3])
			,[Tip_uso_cocina_2] = (case when i.[Tip_uso_cocina_2] > 0 then 1 else 0 end + w.[Tip_uso_cocina_2]) / (case when i.[Tip_uso_cocina_1] > 0 then 1 else 0 end + w.[Tip_uso_cocina_1] + case when i.[Tip_uso_cocina_2] > 0 then 1 else 0 end + w.[Tip_uso_cocina_2] + case when i.[Tip_uso_cocina_3] > 0 then 1 else 0 end + w.[Tip_uso_cocina_3])
			,[Tip_uso_cocina_3] = (case when i.[Tip_uso_cocina_3] > 0 then 1 else 0 end + w.[Tip_uso_cocina_3]) / (case when i.[Tip_uso_cocina_1] > 0 then 1 else 0 end + w.[Tip_uso_cocina_1] + case when i.[Tip_uso_cocina_2] > 0 then 1 else 0 end + w.[Tip_uso_cocina_2] + case when i.[Tip_uso_cocina_3] > 0 then 1 else 0 end + w.[Tip_uso_cocina_3])
			,[Tip_uso_sanitario_1] = (case when i.[Tip_uso_sanitario_1] > 0 then 1 else 0 end + w.[Tip_uso_sanitario_1]) / (case when i.[Tip_uso_sanitario_1] > 0 then 1 else 0 end + w.[Tip_uso_sanitario_1] + case when i.[Tip_uso_sanitario_2] > 0 then 1 else 0 end + w.[Tip_uso_sanitario_2] + case when i.[Tip_uso_sanitario_3] > 0 then 1 else 0 end + w.[Tip_uso_sanitario_3])
			,[Tip_uso_sanitario_2] = (case when i.[Tip_uso_sanitario_2] > 0 then 1 else 0 end + w.[Tip_uso_sanitario_2]) / (case when i.[Tip_uso_sanitario_1] > 0 then 1 else 0 end + w.[Tip_uso_sanitario_1] + case when i.[Tip_uso_sanitario_2] > 0 then 1 else 0 end + w.[Tip_uso_sanitario_2] + case when i.[Tip_uso_sanitario_3] > 0 then 1 else 0 end + w.[Tip_uso_sanitario_3])
			,[Tip_uso_sanitario_3] = (case when i.[Tip_uso_sanitario_3] > 0 then 1 else 0 end + w.[Tip_uso_sanitario_3]) / (case when i.[Tip_uso_sanitario_1] > 0 then 1 else 0 end + w.[Tip_uso_sanitario_1] + case when i.[Tip_uso_sanitario_2] > 0 then 1 else 0 end + w.[Tip_uso_sanitario_2] + case when i.[Tip_uso_sanitario_3] > 0 then 1 else 0 end + w.[Tip_uso_sanitario_3])
			,[Tip_vivienda_1] = (case when i.[Tip_vivienda_1] > 0 then 1 else 0 end + w.[Tip_vivienda_1]) / (case when i.[Tip_vivienda_1] > 0 then 1 else 0 end + w.[Tip_vivienda_1] + case when i.[Tip_vivienda_2] > 0 then 1 else 0 end + w.[Tip_vivienda_2] + case when i.[Tip_vivienda_3] > 0 then 1 else 0 end + w.[Tip_vivienda_3] + case when i.[Tip_vivienda_4] > 0 then 1 else 0 end + w.[Tip_vivienda_4] + case when i.[Tip_vivienda_5] > 0 then 1 else 0 end + w.[Tip_vivienda_5])
			,[Tip_vivienda_2] = (case when i.[Tip_vivienda_2] > 0 then 1 else 0 end + w.[Tip_vivienda_2]) / (case when i.[Tip_vivienda_1] > 0 then 1 else 0 end + w.[Tip_vivienda_1] + case when i.[Tip_vivienda_2] > 0 then 1 else 0 end + w.[Tip_vivienda_2] + case when i.[Tip_vivienda_3] > 0 then 1 else 0 end + w.[Tip_vivienda_3] + case when i.[Tip_vivienda_4] > 0 then 1 else 0 end + w.[Tip_vivienda_4] + case when i.[Tip_vivienda_5] > 0 then 1 else 0 end + w.[Tip_vivienda_5])
			,[Tip_vivienda_3] = (case when i.[Tip_vivienda_3] > 0 then 1 else 0 end + w.[Tip_vivienda_3]) / (case when i.[Tip_vivienda_1] > 0 then 1 else 0 end + w.[Tip_vivienda_1] + case when i.[Tip_vivienda_2] > 0 then 1 else 0 end + w.[Tip_vivienda_2] + case when i.[Tip_vivienda_3] > 0 then 1 else 0 end + w.[Tip_vivienda_3] + case when i.[Tip_vivienda_4] > 0 then 1 else 0 end + w.[Tip_vivienda_4] + case when i.[Tip_vivienda_5] > 0 then 1 else 0 end + w.[Tip_vivienda_5])
			,[Tip_vivienda_4] = (case when i.[Tip_vivienda_4] > 0 then 1 else 0 end + w.[Tip_vivienda_4]) / (case when i.[Tip_vivienda_1] > 0 then 1 else 0 end + w.[Tip_vivienda_1] + case when i.[Tip_vivienda_2] > 0 then 1 else 0 end + w.[Tip_vivienda_2] + case when i.[Tip_vivienda_3] > 0 then 1 else 0 end + w.[Tip_vivienda_3] + case when i.[Tip_vivienda_4] > 0 then 1 else 0 end + w.[Tip_vivienda_4] + case when i.[Tip_vivienda_5] > 0 then 1 else 0 end + w.[Tip_vivienda_5])
			,[Tip_vivienda_5] = (case when i.[Tip_vivienda_5] > 0 then 1 else 0 end + w.[Tip_vivienda_5]) / (case when i.[Tip_vivienda_1] > 0 then 1 else 0 end + w.[Tip_vivienda_1] + case when i.[Tip_vivienda_2] > 0 then 1 else 0 end + w.[Tip_vivienda_2] + case when i.[Tip_vivienda_3] > 0 then 1 else 0 end + w.[Tip_vivienda_3] + case when i.[Tip_vivienda_4] > 0 then 1 else 0 end + w.[Tip_vivienda_4] + case when i.[Tip_vivienda_5] > 0 then 1 else 0 end + w.[Tip_vivienda_5])
			,[Vlr_gasto_alimento_nor] = 1
			,[Vlr_gasto_arriendo_nor] = 1
			,[Vlr_gasto_celular_nor] = 1
			,[Vlr_gasto_educacion_nor] = 1
			,[Vlr_gasto_otros_nor] = 1
			,[Vlr_gasto_salud_nor] = 1
			,[Vlr_gasto_serv_publicos_nor] = 1
			,[Vlr_gasto_transporte_nor] = 1
			,[Vlr_total_gastos_nor] = 1
		from [ML].[CNS_HogarViviendaNeurons] n
		inner join #inputs i
			on i.Cod_mpio = n.Cluster
		inner join #weights w
			on 1 = 1
		where n.Cluster = @cod_mpio

		update [ML].[CNS_PersonaNeurons]
		set [Fec_nacimiento_nor] = 1,
			[Grado_alcanzado_nor] = 1,
			[Ind_acudio_salud_1] = (case when i.[Ind_acudio_salud_1] > 0 then 1 else 0 end + w.[Ind_acudio_salud_1]) / (case when i.[Ind_acudio_salud_1] > 0 then 1 else 0 end + w.[Ind_acudio_salud_1] + case when i.[Ind_acudio_salud_2] > 0 then 1 else 0 end + w.[Ind_acudio_salud_2]),
			[Ind_acudio_salud_2] = (case when i.[Ind_acudio_salud_2] > 0 then 1 else 0 end + w.[Ind_acudio_salud_2])  / (case when i.[Ind_acudio_salud_1] > 0 then 1 else 0 end + w.[Ind_acudio_salud_1] + case when i.[Ind_acudio_salud_2] > 0 then 1 else 0 end + w.[Ind_acudio_salud_2]),
			[Ind_conyuge_vive_hogar_1] = (case when i.[Ind_conyuge_vive_hogar_1] > 0 then 1 else 0 end + w.[Ind_conyuge_vive_hogar_1]) / (case when i.[Ind_conyuge_vive_hogar_1] > 0 then 1 else 0 end + w.[Ind_conyuge_vive_hogar_1] + case when i.[Ind_conyuge_vive_hogar_2] > 0 then 1 else 0 end + w.[Ind_conyuge_vive_hogar_2]),
			[Ind_conyuge_vive_hogar_2] = (case when i.[Ind_conyuge_vive_hogar_2] > 0 then 1 else 0 end + w.[Ind_conyuge_vive_hogar_2]) / (case when i.[Ind_conyuge_vive_hogar_1] > 0 then 1 else 0 end + w.[Ind_conyuge_vive_hogar_1] + case when i.[Ind_conyuge_vive_hogar_2] > 0 then 1 else 0 end + w.[Ind_conyuge_vive_hogar_2]),
			[Ind_discap_bañarse_1] = (case when i.[Ind_discap_bañarse_1] > 0 then 1 else 0 end + w.[Ind_discap_bañarse_1]) / (case when i.[Ind_discap_bañarse_1] > 0 then 1 else 0 end + w.[Ind_discap_bañarse_1] + case when i.[Ind_discap_bañarse_2] > 0 then 1 else 0 end + w.[Ind_discap_bañarse_2]),
			[Ind_discap_bañarse_2] = (case when i.[Ind_discap_bañarse_2] > 0 then 1 else 0 end + w.[Ind_discap_bañarse_2]) / (case when i.[Ind_discap_bañarse_1] > 0 then 1 else 0 end + w.[Ind_discap_bañarse_1] + case when i.[Ind_discap_bañarse_2] > 0 then 1 else 0 end + w.[Ind_discap_bañarse_2]),
			[Ind_discap_entender_1] = (case when i.[Ind_discap_entender_1] > 0 then 1 else 0 end + w.[Ind_discap_entender_1]) / (case when i.[Ind_discap_entender_1] > 0 then 1 else 0 end + w.[Ind_discap_entender_1] + case when i.[Ind_discap_entender_2] > 0 then 1 else 0 end + w.[Ind_discap_entender_2]),
			[Ind_discap_entender_2] = (case when i.[Ind_discap_entender_2] > 0 then 1 else 0 end + w.[Ind_discap_entender_2]) / (case when i.[Ind_discap_entender_1] > 0 then 1 else 0 end + w.[Ind_discap_entender_1] + case when i.[Ind_discap_entender_2] > 0 then 1 else 0 end + w.[Ind_discap_entender_2]),
			[Ind_discap_hablar_1] = (case when i.[Ind_discap_hablar_1] > 0 then 1 else 0 end + w.[Ind_discap_hablar_1]) / (case when i.[Ind_discap_hablar_1] > 0 then 1 else 0 end + w.[Ind_discap_hablar_1] + case when i.[Ind_discap_hablar_2] > 0 then 1 else 0 end + w.[Ind_discap_hablar_2]),
			[Ind_discap_hablar_2] = (case when i.[Ind_discap_hablar_2] > 0 then 1 else 0 end + w.[Ind_discap_hablar_2]) / (case when i.[Ind_discap_hablar_1] > 0 then 1 else 0 end + w.[Ind_discap_hablar_1] + case when i.[Ind_discap_hablar_2] > 0 then 1 else 0 end + w.[Ind_discap_hablar_2]),
			[Ind_discap_moverse_1] = (case when i.[Ind_discap_moverse_1] > 0 then 1 else 0 end + w.[Ind_discap_moverse_1]) / (case when i.[Ind_discap_moverse_1] > 0 then 1 else 0 end + w.[Ind_discap_moverse_1] + case when i.[Ind_discap_moverse_2] > 0 then 1 else 0 end + w.[Ind_discap_moverse_2]),
			[Ind_discap_moverse_2] = (case when i.[Ind_discap_moverse_2] > 0 then 1 else 0 end + w.[Ind_discap_moverse_2]) / (case when i.[Ind_discap_moverse_1] > 0 then 1 else 0 end + w.[Ind_discap_moverse_1] + case when i.[Ind_discap_moverse_2] > 0 then 1 else 0 end + w.[Ind_discap_moverse_2]),
			[Ind_discap_ninguna_1] = (case when i.[Ind_discap_ninguna_1] > 0 then 1 else 0 end + w.[Ind_discap_ninguna_1]) / (case when i.[Ind_discap_ninguna_1] > 0 then 1 else 0 end + w.[Ind_discap_ninguna_1] + case when i.[Ind_discap_ninguna_2] > 0 then 1 else 0 end + w.[Ind_discap_ninguna_2]),
			[Ind_discap_ninguna_2] = (case when i.[Ind_discap_ninguna_2] > 0 then 1 else 0 end + w.[Ind_discap_ninguna_2]) / (case when i.[Ind_discap_ninguna_1] > 0 then 1 else 0 end + w.[Ind_discap_ninguna_1] + case when i.[Ind_discap_ninguna_2] > 0 then 1 else 0 end + w.[Ind_discap_ninguna_2]),
			[Ind_discap_oir_1] = (case when i.[Ind_discap_oir_1] > 0 then 1 else 0 end + w.[Ind_discap_oir_1]) / (case when i.[Ind_discap_oir_1] > 0 then 1 else 0 end + w.[Ind_discap_oir_1] + case when i.[Ind_discap_oir_2] > 0 then 1 else 0 end + w.[Ind_discap_oir_2]),
			[Ind_discap_oir_2] = (case when i.[Ind_discap_oir_2] > 0 then 1 else 0 end + w.[Ind_discap_oir_2]) / (case when i.[Ind_discap_oir_1] > 0 then 1 else 0 end + w.[Ind_discap_oir_1] + case when i.[Ind_discap_oir_2] > 0 then 1 else 0 end + w.[Ind_discap_oir_2]),
			[Ind_discap_salir_1] = (case when i.[Ind_discap_salir_1] > 0 then 1 else 0 end + w.[Ind_discap_salir_1]) / (case when i.[Ind_discap_salir_1] > 0 then 1 else 0 end + w.[Ind_discap_salir_1] + case when i.[Ind_discap_salir_2] > 0 then 1 else 0 end + w.[Ind_discap_salir_2]),
			[Ind_discap_salir_2] = (case when i.[Ind_discap_salir_2] > 0 then 1 else 0 end + w.[Ind_discap_salir_2]) / (case when i.[Ind_discap_salir_1] > 0 then 1 else 0 end + w.[Ind_discap_salir_1] + case when i.[Ind_discap_salir_2] > 0 then 1 else 0 end + w.[Ind_discap_salir_2]),
			[Ind_discap_ver_1] = (case when i.[Ind_discap_ver_1] > 0 then 1 else 0 end + w.[Ind_discap_ver_1]) / (case when i.[Ind_discap_ver_1] > 0 then 1 else 0 end + w.[Ind_discap_ver_1] + case when i.[Ind_discap_ver_2] > 0 then 1 else 0 end + w.[Ind_discap_ver_2]),
			[Ind_discap_ver_2] = (case when i.[Ind_discap_ver_2] > 0 then 1 else 0 end + w.[Ind_discap_ver_2]) / (case when i.[Ind_discap_ver_1] > 0 then 1 else 0 end + w.[Ind_discap_ver_1] + case when i.[Ind_discap_ver_2] > 0 then 1 else 0 end + w.[Ind_discap_ver_2]),
			[Ind_enfermo_30_1] = (case when i.[Ind_enfermo_30_1] > 0 then 1 else 0 end + w.[Ind_enfermo_30_1]) / (case when i.[Ind_enfermo_30_1] > 0 then 1 else 0 end + w.[Ind_enfermo_30_1] + case when i.[Ind_enfermo_30_2] > 0 then 1 else 0 end + w.[Ind_enfermo_30_2]),
			[Ind_enfermo_30_2] = (case when i.[Ind_enfermo_30_2] > 0 then 1 else 0 end + w.[Ind_enfermo_30_2]) / (case when i.[Ind_enfermo_30_1] > 0 then 1 else 0 end + w.[Ind_enfermo_30_1] + case when i.[Ind_enfermo_30_2] > 0 then 1 else 0 end + w.[Ind_enfermo_30_2]),
			[Ind_esta_embarazada_1] = (case when i.[Ind_esta_embarazada_1] > 0 then 1 else 0 end + w.[Ind_esta_embarazada_1]) / (case when i.[Ind_esta_embarazada_1] > 0 then 1 else 0 end + w.[Ind_esta_embarazada_1] + case when i.[Ind_esta_embarazada_2] > 0 then 1 else 0 end + w.[Ind_esta_embarazada_2]),
			[Ind_esta_embarazada_2] = (case when i.[Ind_esta_embarazada_2] > 0 then 1 else 0 end + w.[Ind_esta_embarazada_2]) / (case when i.[Ind_esta_embarazada_1] > 0 then 1 else 0 end + w.[Ind_esta_embarazada_1] + case when i.[Ind_esta_embarazada_2] > 0 then 1 else 0 end + w.[Ind_esta_embarazada_2]),
			[Ind_estudia_1] = (case when i.[Ind_estudia_1] > 0 then 1 else 0 end + w.[Ind_estudia_1]) / (case when i.[Ind_estudia_1] > 0 then 1 else 0 end + w.[Ind_estudia_1] + case when i.[Ind_estudia_2] > 0 then 1 else 0 end + w.[Ind_estudia_2]),
			[Ind_estudia_2] = (case when i.[Ind_estudia_2] > 0 then 1 else 0 end + w.[Ind_estudia_2]) / (case when i.[Ind_estudia_1] > 0 then 1 else 0 end + w.[Ind_estudia_1] + case when i.[Ind_estudia_2] > 0 then 1 else 0 end + w.[Ind_estudia_2]),
			[Ind_fondo_pensiones_1] = (case when i.[Ind_fondo_pensiones_1] > 0 then 1 else 0 end + w.[Ind_fondo_pensiones_1]) / (case when i.[Ind_fondo_pensiones_1] > 0 then 1 else 0 end + w.[Ind_fondo_pensiones_1] + case when i.[Ind_fondo_pensiones_2] > 0 then 1 else 0 end + w.[Ind_fondo_pensiones_2] + case when i.[Ind_fondo_pensiones_3] > 0 then 1 else 0 end + w.[Ind_fondo_pensiones_3]),
			[Ind_fondo_pensiones_2] = (case when i.[Ind_fondo_pensiones_2] > 0 then 1 else 0 end + w.[Ind_fondo_pensiones_2]) / (case when i.[Ind_fondo_pensiones_1] > 0 then 1 else 0 end + w.[Ind_fondo_pensiones_1] + case when i.[Ind_fondo_pensiones_2] > 0 then 1 else 0 end + w.[Ind_fondo_pensiones_2] + case when i.[Ind_fondo_pensiones_3] > 0 then 1 else 0 end + w.[Ind_fondo_pensiones_3]),
			[Ind_fondo_pensiones_3] = (case when i.[Ind_fondo_pensiones_3] > 0 then 1 else 0 end + w.[Ind_fondo_pensiones_3]) / (case when i.[Ind_fondo_pensiones_1] > 0 then 1 else 0 end + w.[Ind_fondo_pensiones_1] + case when i.[Ind_fondo_pensiones_2] > 0 then 1 else 0 end + w.[Ind_fondo_pensiones_2] + case when i.[Ind_fondo_pensiones_3] > 0 then 1 else 0 end + w.[Ind_fondo_pensiones_3]),
			[Ind_fue_atendido_salud_1] = (case when i.[Ind_fue_atendido_salud_1] > 0 then 1 else 0 end + w.[Ind_fue_atendido_salud_1]) / (case when i.[Ind_fue_atendido_salud_1] > 0 then 1 else 0 end + w.[Ind_fue_atendido_salud_1] + case when i.[Ind_fue_atendido_salud_2] > 0 then 1 else 0 end + w.[Ind_fue_atendido_salud_2]),
			[Ind_fue_atendido_salud_2] = (case when i.[Ind_fue_atendido_salud_2] > 0 then 1 else 0 end + w.[Ind_fue_atendido_salud_2]) / (case when i.[Ind_fue_atendido_salud_1] > 0 then 1 else 0 end + w.[Ind_fue_atendido_salud_1] + case when i.[Ind_fue_atendido_salud_2] > 0 then 1 else 0 end + w.[Ind_fue_atendido_salud_2]),
			[Ind_ingr_arriendos_1] = (case when i.[Ind_ingr_arriendos_1] > 0 then 1 else 0 end + w.[Ind_ingr_arriendos_1]) / (case when i.[Ind_ingr_arriendos_1] > 0 then 1 else 0 end + w.[Ind_ingr_arriendos_1] + case when i.[Ind_ingr_arriendos_2] > 0 then 1 else 0 end + w.[Ind_ingr_arriendos_2] + case when i.[Ind_ingr_arriendos_9] > 0 then 1 else 0 end + w.[Ind_ingr_arriendos_9]),
			[Ind_ingr_arriendos_2] = (case when i.[Ind_ingr_arriendos_2] > 0 then 1 else 0 end + w.[Ind_ingr_arriendos_2]) / (case when i.[Ind_ingr_arriendos_1] > 0 then 1 else 0 end + w.[Ind_ingr_arriendos_1] + case when i.[Ind_ingr_arriendos_2] > 0 then 1 else 0 end + w.[Ind_ingr_arriendos_2] + case when i.[Ind_ingr_arriendos_9] > 0 then 1 else 0 end + w.[Ind_ingr_arriendos_9]),
			[Ind_ingr_arriendos_9] = (case when i.[Ind_ingr_arriendos_9] > 0 then 1 else 0 end + w.[Ind_ingr_arriendos_9]) / (case when i.[Ind_ingr_arriendos_1] > 0 then 1 else 0 end + w.[Ind_ingr_arriendos_1] + case when i.[Ind_ingr_arriendos_2] > 0 then 1 else 0 end + w.[Ind_ingr_arriendos_2] + case when i.[Ind_ingr_arriendos_9] > 0 then 1 else 0 end + w.[Ind_ingr_arriendos_9]),
			[Ind_ingr_cosecha_1] = (case when i.[Ind_ingr_cosecha_1] > 0 then 1 else 0 end + w.[Ind_ingr_cosecha_1]) / (case when i.[Ind_ingr_cosecha_1] > 0 then 1 else 0 end + w.[Ind_ingr_cosecha_1] + case when i.[Ind_ingr_cosecha_2] > 0 then 1 else 0 end + w.[Ind_ingr_cosecha_2] + case when i.[Ind_ingr_cosecha_9] > 0 then 1 else 0 end + w.[Ind_ingr_cosecha_9]),
			[Ind_ingr_cosecha_2] = (case when i.[Ind_ingr_cosecha_2] > 0 then 1 else 0 end + w.[Ind_ingr_cosecha_2]) / (case when i.[Ind_ingr_cosecha_1] > 0 then 1 else 0 end + w.[Ind_ingr_cosecha_1] + case when i.[Ind_ingr_cosecha_2] > 0 then 1 else 0 end + w.[Ind_ingr_cosecha_2] + case when i.[Ind_ingr_cosecha_9] > 0 then 1 else 0 end + w.[Ind_ingr_cosecha_9]),
			[Ind_ingr_cosecha_9] = (case when i.[Ind_ingr_cosecha_9] > 0 then 1 else 0 end + w.[Ind_ingr_cosecha_9]) / (case when i.[Ind_ingr_cosecha_1] > 0 then 1 else 0 end + w.[Ind_ingr_cosecha_1] + case when i.[Ind_ingr_cosecha_2] > 0 then 1 else 0 end + w.[Ind_ingr_cosecha_2] + case when i.[Ind_ingr_cosecha_9] > 0 then 1 else 0 end + w.[Ind_ingr_cosecha_9]),
			[Ind_ingr_estado_1] = (case when i.[Ind_ingr_estado_1] > 0 then 1 else 0 end + w.[Ind_ingr_estado_1]) / (case when i.[Ind_ingr_estado_1] > 0 then 1 else 0 end + w.[Ind_ingr_estado_1] + case when i.[Ind_ingr_estado_2] > 0 then 1 else 0 end + w.[Ind_ingr_estado_2]),
			[Ind_ingr_estado_2] = (case when i.[Ind_ingr_estado_2] > 0 then 1 else 0 end + w.[Ind_ingr_estado_2]) / (case when i.[Ind_ingr_estado_1] > 0 then 1 else 0 end + w.[Ind_ingr_estado_1] + case when i.[Ind_ingr_estado_2] > 0 then 1 else 0 end + w.[Ind_ingr_estado_2]),
			[Ind_ingr_honorarios_1] = (case when i.[Ind_ingr_honorarios_1] > 0 then 1 else 0 end + w.[Ind_ingr_honorarios_1]) / (case when i.[Ind_ingr_honorarios_1] > 0 then 1 else 0 end + w.[Ind_ingr_honorarios_1] + case when i.[Ind_ingr_honorarios_2] > 0 then 1 else 0 end + w.[Ind_ingr_honorarios_2] + case when i.[Ind_ingr_honorarios_9] > 0 then 1 else 0 end + w.[Ind_ingr_honorarios_9]),
			[Ind_ingr_honorarios_2] = (case when i.[Ind_ingr_honorarios_2] > 0 then 1 else 0 end + w.[Ind_ingr_honorarios_2]) / (case when i.[Ind_ingr_honorarios_1] > 0 then 1 else 0 end + w.[Ind_ingr_honorarios_1] + case when i.[Ind_ingr_honorarios_2] > 0 then 1 else 0 end + w.[Ind_ingr_honorarios_2] + case when i.[Ind_ingr_honorarios_9] > 0 then 1 else 0 end + w.[Ind_ingr_honorarios_9]),
			[Ind_ingr_honorarios_9] = (case when i.[Ind_ingr_honorarios_9] > 0 then 1 else 0 end + w.[Ind_ingr_honorarios_9]) / (case when i.[Ind_ingr_honorarios_1] > 0 then 1 else 0 end + w.[Ind_ingr_honorarios_1] + case when i.[Ind_ingr_honorarios_2] > 0 then 1 else 0 end + w.[Ind_ingr_honorarios_2] + case when i.[Ind_ingr_honorarios_9] > 0 then 1 else 0 end + w.[Ind_ingr_honorarios_9]),
			[Ind_ingr_pension_1] = (case when i.[Ind_ingr_pension_1] > 0 then 1 else 0 end + w.[Ind_ingr_pension_1]) / (case when i.[Ind_ingr_pension_1] > 0 then 1 else 0 end + w.[Ind_ingr_pension_1] + case when i.[Ind_ingr_pension_2] > 0 then 1 else 0 end + w.[Ind_ingr_pension_2] + case when i.[Ind_ingr_pension_9] > 0 then 1 else 0 end + w.[Ind_ingr_pension_9]),
			[Ind_ingr_pension_2] = (case when i.[Ind_ingr_pension_2] > 0 then 1 else 0 end + w.[Ind_ingr_pension_2]) / (case when i.[Ind_ingr_pension_1] > 0 then 1 else 0 end + w.[Ind_ingr_pension_1] + case when i.[Ind_ingr_pension_2] > 0 then 1 else 0 end + w.[Ind_ingr_pension_2] + case when i.[Ind_ingr_pension_9] > 0 then 1 else 0 end + w.[Ind_ingr_pension_9]),
			[Ind_ingr_pension_9] = (case when i.[Ind_ingr_pension_9] > 0 then 1 else 0 end + w.[Ind_ingr_pension_9]) / (case when i.[Ind_ingr_pension_1] > 0 then 1 else 0 end + w.[Ind_ingr_pension_1] + case when i.[Ind_ingr_pension_2] > 0 then 1 else 0 end + w.[Ind_ingr_pension_2] + case when i.[Ind_ingr_pension_9] > 0 then 1 else 0 end + w.[Ind_ingr_pension_9]),
			[Ind_ingr_remesa_exterior_1] = (case when i.[Ind_ingr_remesa_exterior_1] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_exterior_1]) / (case when i.[Ind_ingr_remesa_exterior_1] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_exterior_1] + case when i.[Ind_ingr_remesa_exterior_2] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_exterior_2] + case when i.[Ind_ingr_remesa_exterior_9] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_exterior_9]),
			[Ind_ingr_remesa_exterior_2] = (case when i.[Ind_ingr_remesa_exterior_2] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_exterior_2]) / (case when i.[Ind_ingr_remesa_exterior_1] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_exterior_1] + case when i.[Ind_ingr_remesa_exterior_2] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_exterior_2] + case when i.[Ind_ingr_remesa_exterior_9] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_exterior_9]),
			[Ind_ingr_remesa_exterior_9] = (case when i.[Ind_ingr_remesa_exterior_9] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_exterior_9]) / (case when i.[Ind_ingr_remesa_exterior_1] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_exterior_1] + case when i.[Ind_ingr_remesa_exterior_2] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_exterior_2] + case when i.[Ind_ingr_remesa_exterior_9] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_exterior_9]),
			[Ind_ingr_remesa_pais_1] = (case when i.[Ind_ingr_remesa_pais_1] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_pais_1]) / (case when i.[Ind_ingr_remesa_pais_1] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_pais_1] + case when i.[Ind_ingr_remesa_pais_2] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_pais_2] + case when i.[Ind_ingr_remesa_pais_9] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_pais_9]),
			[Ind_ingr_remesa_pais_2] = (case when i.[Ind_ingr_remesa_pais_2] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_pais_2]) / (case when i.[Ind_ingr_remesa_pais_1] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_pais_1] + case when i.[Ind_ingr_remesa_pais_2] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_pais_2] + case when i.[Ind_ingr_remesa_pais_9] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_pais_9]),
			[Ind_ingr_remesa_pais_9] = (case when i.[Ind_ingr_remesa_pais_9] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_pais_9]) / (case when i.[Ind_ingr_remesa_pais_1] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_pais_1] + case when i.[Ind_ingr_remesa_pais_2] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_pais_2] + case when i.[Ind_ingr_remesa_pais_9] > 0 then 1 else 0 end + w.[Ind_ingr_remesa_pais_9]),
			[Ind_ingr_salario_1] = (case when i.[Ind_ingr_salario_1] > 0 then 1 else 0 end + w.[Ind_ingr_salario_1]) / (case when i.[Ind_ingr_salario_1] > 0 then 1 else 0 end + w.[Ind_ingr_salario_1] + case when i.[Ind_ingr_salario_2] > 0 then 1 else 0 end + w.[Ind_ingr_salario_2] + case when i.[Ind_ingr_salario_9] > 0 then 1 else 0 end + w.[Ind_ingr_salario_9]),
			[Ind_ingr_salario_2] = (case when i.[Ind_ingr_salario_2] > 0 then 1 else 0 end + w.[Ind_ingr_salario_2]) / (case when i.[Ind_ingr_salario_1] > 0 then 1 else 0 end + w.[Ind_ingr_salario_1] + case when i.[Ind_ingr_salario_2] > 0 then 1 else 0 end + w.[Ind_ingr_salario_2] + case when i.[Ind_ingr_salario_9] > 0 then 1 else 0 end + w.[Ind_ingr_salario_9]),
			[Ind_ingr_salario_9] = (case when i.[Ind_ingr_salario_9] > 0 then 1 else 0 end + w.[Ind_ingr_salario_9]) / (case when i.[Ind_ingr_salario_1] > 0 then 1 else 0 end + w.[Ind_ingr_salario_1] + case when i.[Ind_ingr_salario_2] > 0 then 1 else 0 end + w.[Ind_ingr_salario_2] + case when i.[Ind_ingr_salario_9] > 0 then 1 else 0 end + w.[Ind_ingr_salario_9]),
			[Ind_leer_escribir_1] = (case when i.[Ind_leer_escribir_1] > 0 then 1 else 0 end + w.[Ind_leer_escribir_1]) / (case when i.[Ind_leer_escribir_1] > 0 then 1 else 0 end + w.[Ind_leer_escribir_1] + case when i.[Ind_leer_escribir_2] > 0 then 1 else 0 end + w.[Ind_leer_escribir_2]),
			[Ind_leer_escribir_2] = (case when i.[Ind_leer_escribir_2] > 0 then 1 else 0 end + w.[Ind_leer_escribir_2]) / (case when i.[Ind_leer_escribir_1] > 0 then 1 else 0 end + w.[Ind_leer_escribir_1] + case when i.[Ind_leer_escribir_2] > 0 then 1 else 0 end + w.[Ind_leer_escribir_2]),
			[Ind_otros_ingresos_1] = (case when i.[Ind_otros_ingresos_1] > 0 then 1 else 0 end + w.[Ind_otros_ingresos_1]) / (case when i.[Ind_otros_ingresos_1] > 0 then 1 else 0 end + w.[Ind_otros_ingresos_1] + case when i.[Ind_otros_ingresos_2] > 0 then 1 else 0 end + w.[Ind_otros_ingresos_2] + case when i.[Ind_otros_ingresos_9] > 0 then 1 else 0 end + w.[Ind_otros_ingresos_9]),
			[Ind_otros_ingresos_2] = (case when i.[Ind_otros_ingresos_2] > 0 then 1 else 0 end + w.[Ind_otros_ingresos_2]) / (case when i.[Ind_otros_ingresos_1] > 0 then 1 else 0 end + w.[Ind_otros_ingresos_1] + case when i.[Ind_otros_ingresos_2] > 0 then 1 else 0 end + w.[Ind_otros_ingresos_2] + case when i.[Ind_otros_ingresos_9] > 0 then 1 else 0 end + w.[Ind_otros_ingresos_9]),
			[Ind_otros_ingresos_9] = (case when i.[Ind_otros_ingresos_9] > 0 then 1 else 0 end + w.[Ind_otros_ingresos_9]) / (case when i.[Ind_otros_ingresos_1] > 0 then 1 else 0 end + w.[Ind_otros_ingresos_1] + case when i.[Ind_otros_ingresos_2] > 0 then 1 else 0 end + w.[Ind_otros_ingresos_2] + case when i.[Ind_otros_ingresos_9] > 0 then 1 else 0 end + w.[Ind_otros_ingresos_9]),
			[Ind_padre_vive_hogar_1] = (case when i.[Ind_padre_vive_hogar_1] > 0 then 1 else 0 end + w.[Ind_padre_vive_hogar_1]) / (case when i.[Ind_padre_vive_hogar_1] > 0 then 1 else 0 end + w.[Ind_padre_vive_hogar_1] + case when i.[Ind_padre_vive_hogar_2] > 0 then 1 else 0 end + w.[Ind_padre_vive_hogar_2]),
			[Ind_padre_vive_hogar_2] = (case when i.[Ind_padre_vive_hogar_2] > 0 then 1 else 0 end + w.[Ind_padre_vive_hogar_2]) / (case when i.[Ind_padre_vive_hogar_1] > 0 then 1 else 0 end + w.[Ind_padre_vive_hogar_1] + case when i.[Ind_padre_vive_hogar_2] > 0 then 1 else 0 end + w.[Ind_padre_vive_hogar_2]),
			[Ind_pariente_domestico_1] = (case when i.[Ind_pariente_domestico_1] > 0 then 1 else 0 end + w.[Ind_pariente_domestico_1]) / (case when i.[Ind_pariente_domestico_1] > 0 then 1 else 0 end + w.[Ind_pariente_domestico_1] + case when i.[Ind_pariente_domestico_2] > 0 then 1 else 0 end + w.[Ind_pariente_domestico_2]),
			[Ind_pariente_domestico_2] = (case when i.[Ind_pariente_domestico_2] > 0 then 1 else 0 end + w.[Ind_pariente_domestico_2]) / (case when i.[Ind_pariente_domestico_1] > 0 then 1 else 0 end + w.[Ind_pariente_domestico_1] + case when i.[Ind_pariente_domestico_2] > 0 then 1 else 0 end + w.[Ind_pariente_domestico_2]),
			[Ind_recibe_comida_1] = (case when i.[Ind_recibe_comida_1] > 0 then 1 else 0 end + w.[Ind_recibe_comida_1]) / (case when i.[Ind_recibe_comida_1] > 0 then 1 else 0 end + w.[Ind_recibe_comida_1] + case when i.[Ind_recibe_comida_2] > 0 then 1 else 0 end + w.[Ind_recibe_comida_2]),
			[Ind_recibe_comida_2] = (case when i.[Ind_recibe_comida_2] > 0 then 1 else 0 end + w.[Ind_recibe_comida_2]) / (case when i.[Ind_recibe_comida_1] > 0 then 1 else 0 end + w.[Ind_recibe_comida_1] + case when i.[Ind_recibe_comida_2] > 0 then 1 else 0 end + w.[Ind_recibe_comida_2]),
			[Ind_tuvo_hijos_1] = (case when i.[Ind_tuvo_hijos_1] > 0 then 1 else 0 end + w.[Ind_tuvo_hijos_1]) / (case when i.[Ind_tuvo_hijos_1] > 0 then 1 else 0 end + w.[Ind_tuvo_hijos_1] + case when i.[Ind_tuvo_hijos_2] > 0 then 1 else 0 end + w.[Ind_tuvo_hijos_2]),
			[Ind_tuvo_hijos_2] = (case when i.[Ind_tuvo_hijos_2] > 0 then 1 else 0 end + w.[Ind_tuvo_hijos_2]) / (case when i.[Ind_tuvo_hijos_1] > 0 then 1 else 0 end + w.[Ind_tuvo_hijos_1] + case when i.[Ind_tuvo_hijos_2] > 0 then 1 else 0 end + w.[Ind_tuvo_hijos_2]),
			[Niv_educativo_0] = (case when i.[Niv_educativo_0] > 0 then 1 else 0 end + w.[Niv_educativo_0]) / (case when i.[Niv_educativo_0] > 0 then 1 else 0 end + w.[Niv_educativo_0] + case when i.[Niv_educativo_1] > 0 then 1 else 0 end + w.[Niv_educativo_1] + case when i.[Niv_educativo_2] > 0 then 1 else 0 end + w.[Niv_educativo_2] + case when i.[Niv_educativo_3] > 0 then 1 else 0 end + w.[Niv_educativo_3] + case when i.[Niv_educativo_4] > 0 then 1 else 0 end + w.[Niv_educativo_4] + case when i.[Niv_educativo_5] > 0 then 1 else 0 end + w.[Niv_educativo_5] + case when i.[Niv_educativo_6] > 0 then 1 else 0 end + w.[Niv_educativo_6] + case when i.[Niv_educativo_7] > 0 then 1 else 0 end + w.[Niv_educativo_7]),
			[Niv_educativo_1] = (case when i.[Niv_educativo_1] > 0 then 1 else 0 end + w.[Niv_educativo_1]) / (case when i.[Niv_educativo_0] > 0 then 1 else 0 end + w.[Niv_educativo_0] + case when i.[Niv_educativo_1] > 0 then 1 else 0 end + w.[Niv_educativo_1] + case when i.[Niv_educativo_2] > 0 then 1 else 0 end + w.[Niv_educativo_2] + case when i.[Niv_educativo_3] > 0 then 1 else 0 end + w.[Niv_educativo_3] + case when i.[Niv_educativo_4] > 0 then 1 else 0 end + w.[Niv_educativo_4] + case when i.[Niv_educativo_5] > 0 then 1 else 0 end + w.[Niv_educativo_5] + case when i.[Niv_educativo_6] > 0 then 1 else 0 end + w.[Niv_educativo_6] + case when i.[Niv_educativo_7] > 0 then 1 else 0 end + w.[Niv_educativo_7]),
			[Niv_educativo_2] = (case when i.[Niv_educativo_2] > 0 then 1 else 0 end + w.[Niv_educativo_2]) / (case when i.[Niv_educativo_0] > 0 then 1 else 0 end + w.[Niv_educativo_0] + case when i.[Niv_educativo_1] > 0 then 1 else 0 end + w.[Niv_educativo_1] + case when i.[Niv_educativo_2] > 0 then 1 else 0 end + w.[Niv_educativo_2] + case when i.[Niv_educativo_3] > 0 then 1 else 0 end + w.[Niv_educativo_3] + case when i.[Niv_educativo_4] > 0 then 1 else 0 end + w.[Niv_educativo_4] + case when i.[Niv_educativo_5] > 0 then 1 else 0 end + w.[Niv_educativo_5] + case when i.[Niv_educativo_6] > 0 then 1 else 0 end + w.[Niv_educativo_6] + case when i.[Niv_educativo_7] > 0 then 1 else 0 end + w.[Niv_educativo_7]),
			[Niv_educativo_3] = (case when i.[Niv_educativo_3] > 0 then 1 else 0 end + w.[Niv_educativo_3]) / (case when i.[Niv_educativo_0] > 0 then 1 else 0 end + w.[Niv_educativo_0] + case when i.[Niv_educativo_1] > 0 then 1 else 0 end + w.[Niv_educativo_1] + case when i.[Niv_educativo_2] > 0 then 1 else 0 end + w.[Niv_educativo_2] + case when i.[Niv_educativo_3] > 0 then 1 else 0 end + w.[Niv_educativo_3] + case when i.[Niv_educativo_4] > 0 then 1 else 0 end + w.[Niv_educativo_4] + case when i.[Niv_educativo_5] > 0 then 1 else 0 end + w.[Niv_educativo_5] + case when i.[Niv_educativo_6] > 0 then 1 else 0 end + w.[Niv_educativo_6] + case when i.[Niv_educativo_7] > 0 then 1 else 0 end + w.[Niv_educativo_7]),
			[Niv_educativo_4] = (case when i.[Niv_educativo_4] > 0 then 1 else 0 end + w.[Niv_educativo_4]) / (case when i.[Niv_educativo_0] > 0 then 1 else 0 end + w.[Niv_educativo_0] + case when i.[Niv_educativo_1] > 0 then 1 else 0 end + w.[Niv_educativo_1] + case when i.[Niv_educativo_2] > 0 then 1 else 0 end + w.[Niv_educativo_2] + case when i.[Niv_educativo_3] > 0 then 1 else 0 end + w.[Niv_educativo_3] + case when i.[Niv_educativo_4] > 0 then 1 else 0 end + w.[Niv_educativo_4] + case when i.[Niv_educativo_5] > 0 then 1 else 0 end + w.[Niv_educativo_5] + case when i.[Niv_educativo_6] > 0 then 1 else 0 end + w.[Niv_educativo_6] + case when i.[Niv_educativo_7] > 0 then 1 else 0 end + w.[Niv_educativo_7]),
			[Niv_educativo_5] = (case when i.[Niv_educativo_5] > 0 then 1 else 0 end + w.[Niv_educativo_5]) / (case when i.[Niv_educativo_0] > 0 then 1 else 0 end + w.[Niv_educativo_0] + case when i.[Niv_educativo_1] > 0 then 1 else 0 end + w.[Niv_educativo_1] + case when i.[Niv_educativo_2] > 0 then 1 else 0 end + w.[Niv_educativo_2] + case when i.[Niv_educativo_3] > 0 then 1 else 0 end + w.[Niv_educativo_3] + case when i.[Niv_educativo_4] > 0 then 1 else 0 end + w.[Niv_educativo_4] + case when i.[Niv_educativo_5] > 0 then 1 else 0 end + w.[Niv_educativo_5] + case when i.[Niv_educativo_6] > 0 then 1 else 0 end + w.[Niv_educativo_6] + case when i.[Niv_educativo_7] > 0 then 1 else 0 end + w.[Niv_educativo_7]),
			[Niv_educativo_6] = (case when i.[Niv_educativo_6] > 0 then 1 else 0 end + w.[Niv_educativo_6]) / (case when i.[Niv_educativo_0] > 0 then 1 else 0 end + w.[Niv_educativo_0] + case when i.[Niv_educativo_1] > 0 then 1 else 0 end + w.[Niv_educativo_1] + case when i.[Niv_educativo_2] > 0 then 1 else 0 end + w.[Niv_educativo_2] + case when i.[Niv_educativo_3] > 0 then 1 else 0 end + w.[Niv_educativo_3] + case when i.[Niv_educativo_4] > 0 then 1 else 0 end + w.[Niv_educativo_4] + case when i.[Niv_educativo_5] > 0 then 1 else 0 end + w.[Niv_educativo_5] + case when i.[Niv_educativo_6] > 0 then 1 else 0 end + w.[Niv_educativo_6] + case when i.[Niv_educativo_7] > 0 then 1 else 0 end + w.[Niv_educativo_7]),
			[Niv_educativo_7] = (case when i.[Niv_educativo_7] > 0 then 1 else 0 end + w.[Niv_educativo_7]) / (case when i.[Niv_educativo_0] > 0 then 1 else 0 end + w.[Niv_educativo_0] + case when i.[Niv_educativo_1] > 0 then 1 else 0 end + w.[Niv_educativo_1] + case when i.[Niv_educativo_2] > 0 then 1 else 0 end + w.[Niv_educativo_2] + case when i.[Niv_educativo_3] > 0 then 1 else 0 end + w.[Niv_educativo_3] + case when i.[Niv_educativo_4] > 0 then 1 else 0 end + w.[Niv_educativo_4] + case when i.[Niv_educativo_5] > 0 then 1 else 0 end + w.[Niv_educativo_5] + case when i.[Niv_educativo_6] > 0 then 1 else 0 end + w.[Niv_educativo_6] + case when i.[Niv_educativo_7] > 0 then 1 else 0 end + w.[Niv_educativo_7]),
			[Num_mes_ingr_cosecha_nor] = 1,
			[Num_sem_buscando_nor] = 1,
			[Sexo_persona_1] = (case when i.[Sexo_persona_1] > 0 then 1 else 0 end + w.[Sexo_persona_1]) / (case when i.[Sexo_persona_1] > 0 then 1 else 0 end + w.[Sexo_persona_1] + case when i.[Sexo_persona_2] > 0 then 1 else 0 end + w.[Sexo_persona_2]),
			[Sexo_persona_2] = (case when i.[Sexo_persona_2] > 0 then 1 else 0 end + w.[Sexo_persona_2]) / (case when i.[Sexo_persona_1] > 0 then 1 else 0 end + w.[Sexo_persona_1] + case when i.[Sexo_persona_2] > 0 then 1 else 0 end + w.[Sexo_persona_2]),
			[Tip_actividad_mes_0] = (case when i.[Tip_actividad_mes_0] > 0 then 1 else 0 end + w.[Tip_actividad_mes_0]) / (case when i.[Tip_actividad_mes_0] > 0 then 1 else 0 end + w.[Tip_actividad_mes_0] + case when i.[Tip_actividad_mes_1] > 0 then 1 else 0 end + w.[Tip_actividad_mes_1] + case when i.[Tip_actividad_mes_2] > 0 then 1 else 0 end + w.[Tip_actividad_mes_2] + case when i.[Tip_actividad_mes_3] > 0 then 1 else 0 end + w.[Tip_actividad_mes_3] + case when i.[Tip_actividad_mes_4] > 0 then 1 else 0 end + w.[Tip_actividad_mes_4] + case when i.[Tip_actividad_mes_5] > 0 then 1 else 0 end + w.[Tip_actividad_mes_5] + case when i.[Tip_actividad_mes_6] > 0 then 1 else 0 end + w.[Tip_actividad_mes_6] + case when i.[Tip_actividad_mes_7] > 0 then 1 else 0 end + w.[Tip_actividad_mes_7]),
			[Tip_actividad_mes_1] = (case when i.[Tip_actividad_mes_1] > 0 then 1 else 0 end + w.[Tip_actividad_mes_1]) / (case when i.[Tip_actividad_mes_0] > 0 then 1 else 0 end + w.[Tip_actividad_mes_0] + case when i.[Tip_actividad_mes_1] > 0 then 1 else 0 end + w.[Tip_actividad_mes_1] + case when i.[Tip_actividad_mes_2] > 0 then 1 else 0 end + w.[Tip_actividad_mes_2] + case when i.[Tip_actividad_mes_3] > 0 then 1 else 0 end + w.[Tip_actividad_mes_3] + case when i.[Tip_actividad_mes_4] > 0 then 1 else 0 end + w.[Tip_actividad_mes_4] + case when i.[Tip_actividad_mes_5] > 0 then 1 else 0 end + w.[Tip_actividad_mes_5] + case when i.[Tip_actividad_mes_6] > 0 then 1 else 0 end + w.[Tip_actividad_mes_6] + case when i.[Tip_actividad_mes_7] > 0 then 1 else 0 end + w.[Tip_actividad_mes_7]),
			[Tip_actividad_mes_2] = (case when i.[Tip_actividad_mes_2] > 0 then 1 else 0 end + w.[Tip_actividad_mes_2]) / (case when i.[Tip_actividad_mes_0] > 0 then 1 else 0 end + w.[Tip_actividad_mes_0] + case when i.[Tip_actividad_mes_1] > 0 then 1 else 0 end + w.[Tip_actividad_mes_1] + case when i.[Tip_actividad_mes_2] > 0 then 1 else 0 end + w.[Tip_actividad_mes_2] + case when i.[Tip_actividad_mes_3] > 0 then 1 else 0 end + w.[Tip_actividad_mes_3] + case when i.[Tip_actividad_mes_4] > 0 then 1 else 0 end + w.[Tip_actividad_mes_4] + case when i.[Tip_actividad_mes_5] > 0 then 1 else 0 end + w.[Tip_actividad_mes_5] + case when i.[Tip_actividad_mes_6] > 0 then 1 else 0 end + w.[Tip_actividad_mes_6] + case when i.[Tip_actividad_mes_7] > 0 then 1 else 0 end + w.[Tip_actividad_mes_7]),
			[Tip_actividad_mes_3] = (case when i.[Tip_actividad_mes_3] > 0 then 1 else 0 end + w.[Tip_actividad_mes_3]) / (case when i.[Tip_actividad_mes_0] > 0 then 1 else 0 end + w.[Tip_actividad_mes_0] + case when i.[Tip_actividad_mes_1] > 0 then 1 else 0 end + w.[Tip_actividad_mes_1] + case when i.[Tip_actividad_mes_2] > 0 then 1 else 0 end + w.[Tip_actividad_mes_2] + case when i.[Tip_actividad_mes_3] > 0 then 1 else 0 end + w.[Tip_actividad_mes_3] + case when i.[Tip_actividad_mes_4] > 0 then 1 else 0 end + w.[Tip_actividad_mes_4] + case when i.[Tip_actividad_mes_5] > 0 then 1 else 0 end + w.[Tip_actividad_mes_5] + case when i.[Tip_actividad_mes_6] > 0 then 1 else 0 end + w.[Tip_actividad_mes_6] + case when i.[Tip_actividad_mes_7] > 0 then 1 else 0 end + w.[Tip_actividad_mes_7]),
			[Tip_actividad_mes_4] = (case when i.[Tip_actividad_mes_4] > 0 then 1 else 0 end + w.[Tip_actividad_mes_4]) / (case when i.[Tip_actividad_mes_0] > 0 then 1 else 0 end + w.[Tip_actividad_mes_0] + case when i.[Tip_actividad_mes_1] > 0 then 1 else 0 end + w.[Tip_actividad_mes_1] + case when i.[Tip_actividad_mes_2] > 0 then 1 else 0 end + w.[Tip_actividad_mes_2] + case when i.[Tip_actividad_mes_3] > 0 then 1 else 0 end + w.[Tip_actividad_mes_3] + case when i.[Tip_actividad_mes_4] > 0 then 1 else 0 end + w.[Tip_actividad_mes_4] + case when i.[Tip_actividad_mes_5] > 0 then 1 else 0 end + w.[Tip_actividad_mes_5] + case when i.[Tip_actividad_mes_6] > 0 then 1 else 0 end + w.[Tip_actividad_mes_6] + case when i.[Tip_actividad_mes_7] > 0 then 1 else 0 end + w.[Tip_actividad_mes_7]),
			[Tip_actividad_mes_5] = (case when i.[Tip_actividad_mes_5] > 0 then 1 else 0 end + w.[Tip_actividad_mes_5]) / (case when i.[Tip_actividad_mes_0] > 0 then 1 else 0 end + w.[Tip_actividad_mes_0] + case when i.[Tip_actividad_mes_1] > 0 then 1 else 0 end + w.[Tip_actividad_mes_1] + case when i.[Tip_actividad_mes_2] > 0 then 1 else 0 end + w.[Tip_actividad_mes_2] + case when i.[Tip_actividad_mes_3] > 0 then 1 else 0 end + w.[Tip_actividad_mes_3] + case when i.[Tip_actividad_mes_4] > 0 then 1 else 0 end + w.[Tip_actividad_mes_4] + case when i.[Tip_actividad_mes_5] > 0 then 1 else 0 end + w.[Tip_actividad_mes_5] + case when i.[Tip_actividad_mes_6] > 0 then 1 else 0 end + w.[Tip_actividad_mes_6] + case when i.[Tip_actividad_mes_7] > 0 then 1 else 0 end + w.[Tip_actividad_mes_7]),
			[Tip_actividad_mes_6] = (case when i.[Tip_actividad_mes_6] > 0 then 1 else 0 end + w.[Tip_actividad_mes_6]) / (case when i.[Tip_actividad_mes_0] > 0 then 1 else 0 end + w.[Tip_actividad_mes_0] + case when i.[Tip_actividad_mes_1] > 0 then 1 else 0 end + w.[Tip_actividad_mes_1] + case when i.[Tip_actividad_mes_2] > 0 then 1 else 0 end + w.[Tip_actividad_mes_2] + case when i.[Tip_actividad_mes_3] > 0 then 1 else 0 end + w.[Tip_actividad_mes_3] + case when i.[Tip_actividad_mes_4] > 0 then 1 else 0 end + w.[Tip_actividad_mes_4] + case when i.[Tip_actividad_mes_5] > 0 then 1 else 0 end + w.[Tip_actividad_mes_5] + case when i.[Tip_actividad_mes_6] > 0 then 1 else 0 end + w.[Tip_actividad_mes_6] + case when i.[Tip_actividad_mes_7] > 0 then 1 else 0 end + w.[Tip_actividad_mes_7]),
			[Tip_actividad_mes_7] = (case when i.[Tip_actividad_mes_7] > 0 then 1 else 0 end + w.[Tip_actividad_mes_7]) / (case when i.[Tip_actividad_mes_0] > 0 then 1 else 0 end + w.[Tip_actividad_mes_0] + case when i.[Tip_actividad_mes_1] > 0 then 1 else 0 end + w.[Tip_actividad_mes_1] + case when i.[Tip_actividad_mes_2] > 0 then 1 else 0 end + w.[Tip_actividad_mes_2] + case when i.[Tip_actividad_mes_3] > 0 then 1 else 0 end + w.[Tip_actividad_mes_3] + case when i.[Tip_actividad_mes_4] > 0 then 1 else 0 end + w.[Tip_actividad_mes_4] + case when i.[Tip_actividad_mes_5] > 0 then 1 else 0 end + w.[Tip_actividad_mes_5] + case when i.[Tip_actividad_mes_6] > 0 then 1 else 0 end + w.[Tip_actividad_mes_6] + case when i.[Tip_actividad_mes_7] > 0 then 1 else 0 end + w.[Tip_actividad_mes_7]),
			[Tip_cuidado_niños_1] = (case when i.[Tip_cuidado_niños_1] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_1]) / (case when i.[Tip_cuidado_niños_1] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_1] + case when i.[Tip_cuidado_niños_2] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_2] + case when i.[Tip_cuidado_niños_3] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_3] + case when i.[Tip_cuidado_niños_4] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_4] + case when i.[Tip_cuidado_niños_5] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_5] + case when i.[Tip_cuidado_niños_6] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_6] + case when i.[Tip_cuidado_niños_7] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_7] + case when i.[Tip_cuidado_niños_8] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_8]),
			[Tip_cuidado_niños_2] = (case when i.[Tip_cuidado_niños_2] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_2]) / (case when i.[Tip_cuidado_niños_1] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_1] + case when i.[Tip_cuidado_niños_2] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_2] + case when i.[Tip_cuidado_niños_3] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_3] + case when i.[Tip_cuidado_niños_4] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_4] + case when i.[Tip_cuidado_niños_5] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_5] + case when i.[Tip_cuidado_niños_6] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_6] + case when i.[Tip_cuidado_niños_7] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_7] + case when i.[Tip_cuidado_niños_8] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_8]),
			[Tip_cuidado_niños_3] = (case when i.[Tip_cuidado_niños_3] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_3]) / (case when i.[Tip_cuidado_niños_1] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_1] + case when i.[Tip_cuidado_niños_2] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_2] + case when i.[Tip_cuidado_niños_3] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_3] + case when i.[Tip_cuidado_niños_4] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_4] + case when i.[Tip_cuidado_niños_5] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_5] + case when i.[Tip_cuidado_niños_6] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_6] + case when i.[Tip_cuidado_niños_7] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_7] + case when i.[Tip_cuidado_niños_8] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_8]),
			[Tip_cuidado_niños_4] = (case when i.[Tip_cuidado_niños_4] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_4]) / (case when i.[Tip_cuidado_niños_1] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_1] + case when i.[Tip_cuidado_niños_2] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_2] + case when i.[Tip_cuidado_niños_3] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_3] + case when i.[Tip_cuidado_niños_4] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_4] + case when i.[Tip_cuidado_niños_5] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_5] + case when i.[Tip_cuidado_niños_6] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_6] + case when i.[Tip_cuidado_niños_7] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_7] + case when i.[Tip_cuidado_niños_8] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_8]),
			[Tip_cuidado_niños_5] = (case when i.[Tip_cuidado_niños_5] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_5]) / (case when i.[Tip_cuidado_niños_1] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_1] + case when i.[Tip_cuidado_niños_2] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_2] + case when i.[Tip_cuidado_niños_3] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_3] + case when i.[Tip_cuidado_niños_4] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_4] + case when i.[Tip_cuidado_niños_5] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_5] + case when i.[Tip_cuidado_niños_6] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_6] + case when i.[Tip_cuidado_niños_7] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_7] + case when i.[Tip_cuidado_niños_8] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_8]),
			[Tip_cuidado_niños_6] = (case when i.[Tip_cuidado_niños_6] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_6]) / (case when i.[Tip_cuidado_niños_1] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_1] + case when i.[Tip_cuidado_niños_2] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_2] + case when i.[Tip_cuidado_niños_3] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_3] + case when i.[Tip_cuidado_niños_4] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_4] + case when i.[Tip_cuidado_niños_5] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_5] + case when i.[Tip_cuidado_niños_6] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_6] + case when i.[Tip_cuidado_niños_7] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_7] + case when i.[Tip_cuidado_niños_8] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_8]),
			[Tip_cuidado_niños_7] = (case when i.[Tip_cuidado_niños_7] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_7]) / (case when i.[Tip_cuidado_niños_1] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_1] + case when i.[Tip_cuidado_niños_2] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_2] + case when i.[Tip_cuidado_niños_3] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_3] + case when i.[Tip_cuidado_niños_4] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_4] + case when i.[Tip_cuidado_niños_5] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_5] + case when i.[Tip_cuidado_niños_6] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_6] + case when i.[Tip_cuidado_niños_7] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_7] + case when i.[Tip_cuidado_niños_8] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_8]),
			[Tip_cuidado_niños_8] = (case when i.[Tip_cuidado_niños_8] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_8]) / (case when i.[Tip_cuidado_niños_1] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_1] + case when i.[Tip_cuidado_niños_2] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_2] + case when i.[Tip_cuidado_niños_3] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_3] + case when i.[Tip_cuidado_niños_4] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_4] + case when i.[Tip_cuidado_niños_5] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_5] + case when i.[Tip_cuidado_niños_6] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_6] + case when i.[Tip_cuidado_niños_7] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_7] + case when i.[Tip_cuidado_niños_8] > 0 then 1 else 0 end + w.[Tip_cuidado_niños_8]),
			[Tip_documento_1] = (case when i.[Tip_documento_1] > 0 then 1 else 0 end + w.[Tip_documento_1]) / (case when i.[Tip_documento_1] > 0 then 1 else 0 end + w.[Tip_documento_1] + case when i.[Tip_documento_2] > 0 then 1 else 0 end + w.[Tip_documento_2] + case when i.[Tip_documento_3] > 0 then 1 else 0 end + w.[Tip_documento_3] + case when i.[Tip_documento_4] > 0 then 1 else 0 end + w.[Tip_documento_4] + case when i.[Tip_documento_5] > 0 then 1 else 0 end + w.[Tip_documento_5] + case when i.[Tip_documento_6] > 0 then 1 else 0 end + w.[Tip_documento_6] + case when i.[Tip_documento_7] > 0 then 1 else 0 end + w.[Tip_documento_7] + case when i.[Tip_documento_8] > 0 then 1 else 0 end + w.[Tip_documento_8]),
			[Tip_documento_2] = (case when i.[Tip_documento_2] > 0 then 1 else 0 end + w.[Tip_documento_2]) / (case when i.[Tip_documento_1] > 0 then 1 else 0 end + w.[Tip_documento_1] + case when i.[Tip_documento_2] > 0 then 1 else 0 end + w.[Tip_documento_2] + case when i.[Tip_documento_3] > 0 then 1 else 0 end + w.[Tip_documento_3] + case when i.[Tip_documento_4] > 0 then 1 else 0 end + w.[Tip_documento_4] + case when i.[Tip_documento_5] > 0 then 1 else 0 end + w.[Tip_documento_5] + case when i.[Tip_documento_6] > 0 then 1 else 0 end + w.[Tip_documento_6] + case when i.[Tip_documento_7] > 0 then 1 else 0 end + w.[Tip_documento_7] + case when i.[Tip_documento_8] > 0 then 1 else 0 end + w.[Tip_documento_8]),
			[Tip_documento_3] = (case when i.[Tip_documento_3] > 0 then 1 else 0 end + w.[Tip_documento_3]) / (case when i.[Tip_documento_1] > 0 then 1 else 0 end + w.[Tip_documento_1] + case when i.[Tip_documento_2] > 0 then 1 else 0 end + w.[Tip_documento_2] + case when i.[Tip_documento_3] > 0 then 1 else 0 end + w.[Tip_documento_3] + case when i.[Tip_documento_4] > 0 then 1 else 0 end + w.[Tip_documento_4] + case when i.[Tip_documento_5] > 0 then 1 else 0 end + w.[Tip_documento_5] + case when i.[Tip_documento_6] > 0 then 1 else 0 end + w.[Tip_documento_6] + case when i.[Tip_documento_7] > 0 then 1 else 0 end + w.[Tip_documento_7] + case when i.[Tip_documento_8] > 0 then 1 else 0 end + w.[Tip_documento_8]),
			[Tip_documento_4] = (case when i.[Tip_documento_4] > 0 then 1 else 0 end + w.[Tip_documento_4]) / (case when i.[Tip_documento_1] > 0 then 1 else 0 end + w.[Tip_documento_1] + case when i.[Tip_documento_2] > 0 then 1 else 0 end + w.[Tip_documento_2] + case when i.[Tip_documento_3] > 0 then 1 else 0 end + w.[Tip_documento_3] + case when i.[Tip_documento_4] > 0 then 1 else 0 end + w.[Tip_documento_4] + case when i.[Tip_documento_5] > 0 then 1 else 0 end + w.[Tip_documento_5] + case when i.[Tip_documento_6] > 0 then 1 else 0 end + w.[Tip_documento_6] + case when i.[Tip_documento_7] > 0 then 1 else 0 end + w.[Tip_documento_7] + case when i.[Tip_documento_8] > 0 then 1 else 0 end + w.[Tip_documento_8]),
			[Tip_documento_5] = (case when i.[Tip_documento_5] > 0 then 1 else 0 end + w.[Tip_documento_5]) / (case when i.[Tip_documento_1] > 0 then 1 else 0 end + w.[Tip_documento_1] + case when i.[Tip_documento_2] > 0 then 1 else 0 end + w.[Tip_documento_2] + case when i.[Tip_documento_3] > 0 then 1 else 0 end + w.[Tip_documento_3] + case when i.[Tip_documento_4] > 0 then 1 else 0 end + w.[Tip_documento_4] + case when i.[Tip_documento_5] > 0 then 1 else 0 end + w.[Tip_documento_5] + case when i.[Tip_documento_6] > 0 then 1 else 0 end + w.[Tip_documento_6] + case when i.[Tip_documento_7] > 0 then 1 else 0 end + w.[Tip_documento_7] + case when i.[Tip_documento_8] > 0 then 1 else 0 end + w.[Tip_documento_8]),
			[Tip_documento_6] = (case when i.[Tip_documento_6] > 0 then 1 else 0 end + w.[Tip_documento_6]) / (case when i.[Tip_documento_1] > 0 then 1 else 0 end + w.[Tip_documento_1] + case when i.[Tip_documento_2] > 0 then 1 else 0 end + w.[Tip_documento_2] + case when i.[Tip_documento_3] > 0 then 1 else 0 end + w.[Tip_documento_3] + case when i.[Tip_documento_4] > 0 then 1 else 0 end + w.[Tip_documento_4] + case when i.[Tip_documento_5] > 0 then 1 else 0 end + w.[Tip_documento_5] + case when i.[Tip_documento_6] > 0 then 1 else 0 end + w.[Tip_documento_6] + case when i.[Tip_documento_7] > 0 then 1 else 0 end + w.[Tip_documento_7] + case when i.[Tip_documento_8] > 0 then 1 else 0 end + w.[Tip_documento_8]),
			[Tip_documento_7] = (case when i.[Tip_documento_7] > 0 then 1 else 0 end + w.[Tip_documento_7]) / (case when i.[Tip_documento_1] > 0 then 1 else 0 end + w.[Tip_documento_1] + case when i.[Tip_documento_2] > 0 then 1 else 0 end + w.[Tip_documento_2] + case when i.[Tip_documento_3] > 0 then 1 else 0 end + w.[Tip_documento_3] + case when i.[Tip_documento_4] > 0 then 1 else 0 end + w.[Tip_documento_4] + case when i.[Tip_documento_5] > 0 then 1 else 0 end + w.[Tip_documento_5] + case when i.[Tip_documento_6] > 0 then 1 else 0 end + w.[Tip_documento_6] + case when i.[Tip_documento_7] > 0 then 1 else 0 end + w.[Tip_documento_7] + case when i.[Tip_documento_8] > 0 then 1 else 0 end + w.[Tip_documento_8]),
			[Tip_documento_8] = (case when i.[Tip_documento_8] > 0 then 1 else 0 end + w.[Tip_documento_8]) / (case when i.[Tip_documento_1] > 0 then 1 else 0 end + w.[Tip_documento_1] + case when i.[Tip_documento_2] > 0 then 1 else 0 end + w.[Tip_documento_2] + case when i.[Tip_documento_3] > 0 then 1 else 0 end + w.[Tip_documento_3] + case when i.[Tip_documento_4] > 0 then 1 else 0 end + w.[Tip_documento_4] + case when i.[Tip_documento_5] > 0 then 1 else 0 end + w.[Tip_documento_5] + case when i.[Tip_documento_6] > 0 then 1 else 0 end + w.[Tip_documento_6] + case when i.[Tip_documento_7] > 0 then 1 else 0 end + w.[Tip_documento_7] + case when i.[Tip_documento_8] > 0 then 1 else 0 end + w.[Tip_documento_8]),
			[Tip_empleado_1] = (case when i.[Tip_empleado_1] > 0 then 1 else 0 end + w.[Tip_empleado_1]) / (case when i.[Tip_empleado_1] > 0 then 1 else 0 end + w.[Tip_empleado_1] + case when i.[Tip_empleado_10] > 0 then 1 else 0 end + w.[Tip_empleado_10] + case when i.[Tip_empleado_2] > 0 then 1 else 0 end + w.[Tip_empleado_2] + case when i.[Tip_empleado_3] > 0 then 1 else 0 end + w.[Tip_empleado_3] + case when i.[Tip_empleado_4] > 0 then 1 else 0 end + w.[Tip_empleado_4] + case when i.[Tip_empleado_5] > 0 then 1 else 0 end + w.[Tip_empleado_5] + case when i.[Tip_empleado_6] > 0 then 1 else 0 end + w.[Tip_empleado_6] + case when i.[Tip_empleado_7] > 0 then 1 else 0 end + w.[Tip_empleado_7] + case when i.[Tip_empleado_8] > 0 then 1 else 0 end + w.[Tip_empleado_8] + case when i.[Tip_empleado_9] > 0 then 1 else 0 end + w.[Tip_empleado_9]),
			[Tip_empleado_10] = (case when i.[Tip_empleado_10] > 0 then 1 else 0 end + w.[Tip_empleado_10]) / (case when i.[Tip_empleado_1] > 0 then 1 else 0 end + w.[Tip_empleado_1] + case when i.[Tip_empleado_10] > 0 then 1 else 0 end + w.[Tip_empleado_10] + case when i.[Tip_empleado_2] > 0 then 1 else 0 end + w.[Tip_empleado_2] + case when i.[Tip_empleado_3] > 0 then 1 else 0 end + w.[Tip_empleado_3] + case when i.[Tip_empleado_4] > 0 then 1 else 0 end + w.[Tip_empleado_4] + case when i.[Tip_empleado_5] > 0 then 1 else 0 end + w.[Tip_empleado_5] + case when i.[Tip_empleado_6] > 0 then 1 else 0 end + w.[Tip_empleado_6] + case when i.[Tip_empleado_7] > 0 then 1 else 0 end + w.[Tip_empleado_7] + case when i.[Tip_empleado_8] > 0 then 1 else 0 end + w.[Tip_empleado_8] + case when i.[Tip_empleado_9] > 0 then 1 else 0 end + w.[Tip_empleado_9]),
			[Tip_empleado_2] = (case when i.[Tip_empleado_2] > 0 then 1 else 0 end + w.[Tip_empleado_2]) / (case when i.[Tip_empleado_1] > 0 then 1 else 0 end + w.[Tip_empleado_1] + case when i.[Tip_empleado_10] > 0 then 1 else 0 end + w.[Tip_empleado_10] + case when i.[Tip_empleado_2] > 0 then 1 else 0 end + w.[Tip_empleado_2] + case when i.[Tip_empleado_3] > 0 then 1 else 0 end + w.[Tip_empleado_3] + case when i.[Tip_empleado_4] > 0 then 1 else 0 end + w.[Tip_empleado_4] + case when i.[Tip_empleado_5] > 0 then 1 else 0 end + w.[Tip_empleado_5] + case when i.[Tip_empleado_6] > 0 then 1 else 0 end + w.[Tip_empleado_6] + case when i.[Tip_empleado_7] > 0 then 1 else 0 end + w.[Tip_empleado_7] + case when i.[Tip_empleado_8] > 0 then 1 else 0 end + w.[Tip_empleado_8] + case when i.[Tip_empleado_9] > 0 then 1 else 0 end + w.[Tip_empleado_9]),
			[Tip_empleado_3] = (case when i.[Tip_empleado_3] > 0 then 1 else 0 end + w.[Tip_empleado_3]) / (case when i.[Tip_empleado_1] > 0 then 1 else 0 end + w.[Tip_empleado_1] + case when i.[Tip_empleado_10] > 0 then 1 else 0 end + w.[Tip_empleado_10] + case when i.[Tip_empleado_2] > 0 then 1 else 0 end + w.[Tip_empleado_2] + case when i.[Tip_empleado_3] > 0 then 1 else 0 end + w.[Tip_empleado_3] + case when i.[Tip_empleado_4] > 0 then 1 else 0 end + w.[Tip_empleado_4] + case when i.[Tip_empleado_5] > 0 then 1 else 0 end + w.[Tip_empleado_5] + case when i.[Tip_empleado_6] > 0 then 1 else 0 end + w.[Tip_empleado_6] + case when i.[Tip_empleado_7] > 0 then 1 else 0 end + w.[Tip_empleado_7] + case when i.[Tip_empleado_8] > 0 then 1 else 0 end + w.[Tip_empleado_8] + case when i.[Tip_empleado_9] > 0 then 1 else 0 end + w.[Tip_empleado_9]),
			[Tip_empleado_4] = (case when i.[Tip_empleado_4] > 0 then 1 else 0 end + w.[Tip_empleado_4]) / (case when i.[Tip_empleado_1] > 0 then 1 else 0 end + w.[Tip_empleado_1] + case when i.[Tip_empleado_10] > 0 then 1 else 0 end + w.[Tip_empleado_10] + case when i.[Tip_empleado_2] > 0 then 1 else 0 end + w.[Tip_empleado_2] + case when i.[Tip_empleado_3] > 0 then 1 else 0 end + w.[Tip_empleado_3] + case when i.[Tip_empleado_4] > 0 then 1 else 0 end + w.[Tip_empleado_4] + case when i.[Tip_empleado_5] > 0 then 1 else 0 end + w.[Tip_empleado_5] + case when i.[Tip_empleado_6] > 0 then 1 else 0 end + w.[Tip_empleado_6] + case when i.[Tip_empleado_7] > 0 then 1 else 0 end + w.[Tip_empleado_7] + case when i.[Tip_empleado_8] > 0 then 1 else 0 end + w.[Tip_empleado_8] + case when i.[Tip_empleado_9] > 0 then 1 else 0 end + w.[Tip_empleado_9]),
			[Tip_empleado_5] = (case when i.[Tip_empleado_5] > 0 then 1 else 0 end + w.[Tip_empleado_5]) / (case when i.[Tip_empleado_1] > 0 then 1 else 0 end + w.[Tip_empleado_1] + case when i.[Tip_empleado_10] > 0 then 1 else 0 end + w.[Tip_empleado_10] + case when i.[Tip_empleado_2] > 0 then 1 else 0 end + w.[Tip_empleado_2] + case when i.[Tip_empleado_3] > 0 then 1 else 0 end + w.[Tip_empleado_3] + case when i.[Tip_empleado_4] > 0 then 1 else 0 end + w.[Tip_empleado_4] + case when i.[Tip_empleado_5] > 0 then 1 else 0 end + w.[Tip_empleado_5] + case when i.[Tip_empleado_6] > 0 then 1 else 0 end + w.[Tip_empleado_6] + case when i.[Tip_empleado_7] > 0 then 1 else 0 end + w.[Tip_empleado_7] + case when i.[Tip_empleado_8] > 0 then 1 else 0 end + w.[Tip_empleado_8] + case when i.[Tip_empleado_9] > 0 then 1 else 0 end + w.[Tip_empleado_9]),
			[Tip_empleado_6] = (case when i.[Tip_empleado_6] > 0 then 1 else 0 end + w.[Tip_empleado_6]) / (case when i.[Tip_empleado_1] > 0 then 1 else 0 end + w.[Tip_empleado_1] + case when i.[Tip_empleado_10] > 0 then 1 else 0 end + w.[Tip_empleado_10] + case when i.[Tip_empleado_2] > 0 then 1 else 0 end + w.[Tip_empleado_2] + case when i.[Tip_empleado_3] > 0 then 1 else 0 end + w.[Tip_empleado_3] + case when i.[Tip_empleado_4] > 0 then 1 else 0 end + w.[Tip_empleado_4] + case when i.[Tip_empleado_5] > 0 then 1 else 0 end + w.[Tip_empleado_5] + case when i.[Tip_empleado_6] > 0 then 1 else 0 end + w.[Tip_empleado_6] + case when i.[Tip_empleado_7] > 0 then 1 else 0 end + w.[Tip_empleado_7] + case when i.[Tip_empleado_8] > 0 then 1 else 0 end + w.[Tip_empleado_8] + case when i.[Tip_empleado_9] > 0 then 1 else 0 end + w.[Tip_empleado_9]),
			[Tip_empleado_7] = (case when i.[Tip_empleado_7] > 0 then 1 else 0 end + w.[Tip_empleado_7]) / (case when i.[Tip_empleado_1] > 0 then 1 else 0 end + w.[Tip_empleado_1] + case when i.[Tip_empleado_10] > 0 then 1 else 0 end + w.[Tip_empleado_10] + case when i.[Tip_empleado_2] > 0 then 1 else 0 end + w.[Tip_empleado_2] + case when i.[Tip_empleado_3] > 0 then 1 else 0 end + w.[Tip_empleado_3] + case when i.[Tip_empleado_4] > 0 then 1 else 0 end + w.[Tip_empleado_4] + case when i.[Tip_empleado_5] > 0 then 1 else 0 end + w.[Tip_empleado_5] + case when i.[Tip_empleado_6] > 0 then 1 else 0 end + w.[Tip_empleado_6] + case when i.[Tip_empleado_7] > 0 then 1 else 0 end + w.[Tip_empleado_7] + case when i.[Tip_empleado_8] > 0 then 1 else 0 end + w.[Tip_empleado_8] + case when i.[Tip_empleado_9] > 0 then 1 else 0 end + w.[Tip_empleado_9]),
			[Tip_empleado_8] = (case when i.[Tip_empleado_8] > 0 then 1 else 0 end + w.[Tip_empleado_8]) / (case when i.[Tip_empleado_1] > 0 then 1 else 0 end + w.[Tip_empleado_1] + case when i.[Tip_empleado_10] > 0 then 1 else 0 end + w.[Tip_empleado_10] + case when i.[Tip_empleado_2] > 0 then 1 else 0 end + w.[Tip_empleado_2] + case when i.[Tip_empleado_3] > 0 then 1 else 0 end + w.[Tip_empleado_3] + case when i.[Tip_empleado_4] > 0 then 1 else 0 end + w.[Tip_empleado_4] + case when i.[Tip_empleado_5] > 0 then 1 else 0 end + w.[Tip_empleado_5] + case when i.[Tip_empleado_6] > 0 then 1 else 0 end + w.[Tip_empleado_6] + case when i.[Tip_empleado_7] > 0 then 1 else 0 end + w.[Tip_empleado_7] + case when i.[Tip_empleado_8] > 0 then 1 else 0 end + w.[Tip_empleado_8] + case when i.[Tip_empleado_9] > 0 then 1 else 0 end + w.[Tip_empleado_9]),
			[Tip_empleado_9] = (case when i.[Tip_empleado_9] > 0 then 1 else 0 end + w.[Tip_empleado_9]) / (case when i.[Tip_empleado_1] > 0 then 1 else 0 end + w.[Tip_empleado_1] + case when i.[Tip_empleado_10] > 0 then 1 else 0 end + w.[Tip_empleado_10] + case when i.[Tip_empleado_2] > 0 then 1 else 0 end + w.[Tip_empleado_2] + case when i.[Tip_empleado_3] > 0 then 1 else 0 end + w.[Tip_empleado_3] + case when i.[Tip_empleado_4] > 0 then 1 else 0 end + w.[Tip_empleado_4] + case when i.[Tip_empleado_5] > 0 then 1 else 0 end + w.[Tip_empleado_5] + case when i.[Tip_empleado_6] > 0 then 1 else 0 end + w.[Tip_empleado_6] + case when i.[Tip_empleado_7] > 0 then 1 else 0 end + w.[Tip_empleado_7] + case when i.[Tip_empleado_8] > 0 then 1 else 0 end + w.[Tip_empleado_8] + case when i.[Tip_empleado_9] > 0 then 1 else 0 end + w.[Tip_empleado_9]),
			[Tip_estado_civil_1] = (case when i.[Tip_estado_civil_1] > 0 then 1 else 0 end + w.[Tip_estado_civil_1]) / (case when i.[Tip_estado_civil_1] > 0 then 1 else 0 end + w.[Tip_estado_civil_1] + case when i.[Tip_estado_civil_2] > 0 then 1 else 0 end + w.[Tip_estado_civil_2] + case when i.[Tip_estado_civil_3] > 0 then 1 else 0 end + w.[Tip_estado_civil_3] + case when i.[Tip_estado_civil_4] > 0 then 1 else 0 end + w.[Tip_estado_civil_4] + case when i.[Tip_estado_civil_5] > 0 then 1 else 0 end + w.[Tip_estado_civil_5]),
			[Tip_estado_civil_2] = (case when i.[Tip_estado_civil_2] > 0 then 1 else 0 end + w.[Tip_estado_civil_2]) / (case when i.[Tip_estado_civil_1] > 0 then 1 else 0 end + w.[Tip_estado_civil_1] + case when i.[Tip_estado_civil_2] > 0 then 1 else 0 end + w.[Tip_estado_civil_2] + case when i.[Tip_estado_civil_3] > 0 then 1 else 0 end + w.[Tip_estado_civil_3] + case when i.[Tip_estado_civil_4] > 0 then 1 else 0 end + w.[Tip_estado_civil_4] + case when i.[Tip_estado_civil_5] > 0 then 1 else 0 end + w.[Tip_estado_civil_5]),
			[Tip_estado_civil_3] = (case when i.[Tip_estado_civil_3] > 0 then 1 else 0 end + w.[Tip_estado_civil_3]) / (case when i.[Tip_estado_civil_1] > 0 then 1 else 0 end + w.[Tip_estado_civil_1] + case when i.[Tip_estado_civil_2] > 0 then 1 else 0 end + w.[Tip_estado_civil_2] + case when i.[Tip_estado_civil_3] > 0 then 1 else 0 end + w.[Tip_estado_civil_3] + case when i.[Tip_estado_civil_4] > 0 then 1 else 0 end + w.[Tip_estado_civil_4] + case when i.[Tip_estado_civil_5] > 0 then 1 else 0 end + w.[Tip_estado_civil_5]),
			[Tip_estado_civil_4] = (case when i.[Tip_estado_civil_4] > 0 then 1 else 0 end + w.[Tip_estado_civil_4]) / (case when i.[Tip_estado_civil_1] > 0 then 1 else 0 end + w.[Tip_estado_civil_1] + case when i.[Tip_estado_civil_2] > 0 then 1 else 0 end + w.[Tip_estado_civil_2] + case when i.[Tip_estado_civil_3] > 0 then 1 else 0 end + w.[Tip_estado_civil_3] + case when i.[Tip_estado_civil_4] > 0 then 1 else 0 end + w.[Tip_estado_civil_4] + case when i.[Tip_estado_civil_5] > 0 then 1 else 0 end + w.[Tip_estado_civil_5]),
			[Tip_estado_civil_5] = (case when i.[Tip_estado_civil_5] > 0 then 1 else 0 end + w.[Tip_estado_civil_5]) / (case when i.[Tip_estado_civil_1] > 0 then 1 else 0 end + w.[Tip_estado_civil_1] + case when i.[Tip_estado_civil_2] > 0 then 1 else 0 end + w.[Tip_estado_civil_2] + case when i.[Tip_estado_civil_3] > 0 then 1 else 0 end + w.[Tip_estado_civil_3] + case when i.[Tip_estado_civil_4] > 0 then 1 else 0 end + w.[Tip_estado_civil_4] + case when i.[Tip_estado_civil_5] > 0 then 1 else 0 end + w.[Tip_estado_civil_5]),
			[Tip_parentesco_1] = (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_10] = (case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_11] = (case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_12] = (case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_13] = (case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_14] = (case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_15] = (case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_16] = (case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_17] = (case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_18] = (case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_19] = (case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_2] = (case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_3] = (case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_4] = (case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_5] = (case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_6] = (case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_7] = (case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_8] = (case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_parentesco_9] = (case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]) / (case when i.[Tip_parentesco_1] > 0 then 1 else 0 end + w.[Tip_parentesco_1] + case when i.[Tip_parentesco_10] > 0 then 1 else 0 end + w.[Tip_parentesco_10] + case when i.[Tip_parentesco_11] > 0 then 1 else 0 end + w.[Tip_parentesco_11] + case when i.[Tip_parentesco_12] > 0 then 1 else 0 end + w.[Tip_parentesco_12] + case when i.[Tip_parentesco_13] > 0 then 1 else 0 end + w.[Tip_parentesco_13] + case when i.[Tip_parentesco_14] > 0 then 1 else 0 end + w.[Tip_parentesco_14] + case when i.[Tip_parentesco_15] > 0 then 1 else 0 end + w.[Tip_parentesco_15] + case when i.[Tip_parentesco_16] > 0 then 1 else 0 end + w.[Tip_parentesco_16] + case when i.[Tip_parentesco_17] > 0 then 1 else 0 end + w.[Tip_parentesco_17] + case when i.[Tip_parentesco_18] > 0 then 1 else 0 end + w.[Tip_parentesco_18] + case when i.[Tip_parentesco_19] > 0 then 1 else 0 end + w.[Tip_parentesco_19] + case when i.[Tip_parentesco_2] > 0 then 1 else 0 end + w.[Tip_parentesco_2] + case when i.[Tip_parentesco_3] > 0 then 1 else 0 end + w.[Tip_parentesco_3] + case when i.[Tip_parentesco_4] > 0 then 1 else 0 end + w.[Tip_parentesco_4] + case when i.[Tip_parentesco_5] > 0 then 1 else 0 end + w.[Tip_parentesco_5] + case when i.[Tip_parentesco_6] > 0 then 1 else 0 end + w.[Tip_parentesco_6] + case when i.[Tip_parentesco_7] > 0 then 1 else 0 end + w.[Tip_parentesco_7] + case when i.[Tip_parentesco_8] > 0 then 1 else 0 end + w.[Tip_parentesco_8] + case when i.[Tip_parentesco_9] > 0 then 1 else 0 end + w.[Tip_parentesco_9]),
			[Tip_Seg_social_0] = (case when i.[Tip_Seg_social_0] > 0 then 1 else 0 end + w.[Tip_Seg_social_0]) / (case when i.[Tip_Seg_social_0] > 0 then 1 else 0 end + w.[Tip_Seg_social_0] + case when i.[Tip_Seg_social_1] > 0 then 1 else 0 end + w.[Tip_Seg_social_1] + case when i.[Tip_Seg_social_2] > 0 then 1 else 0 end + w.[Tip_Seg_social_2] + case when i.[Tip_Seg_social_3] > 0 then 1 else 0 end + w.[Tip_Seg_social_3] + case when i.[Tip_Seg_social_9] > 0 then 1 else 0 end + w.[Tip_Seg_social_9]),
			[Tip_Seg_social_1] = (case when i.[Tip_Seg_social_1] > 0 then 1 else 0 end + w.[Tip_Seg_social_1]) / (case when i.[Tip_Seg_social_0] > 0 then 1 else 0 end + w.[Tip_Seg_social_0] + case when i.[Tip_Seg_social_1] > 0 then 1 else 0 end + w.[Tip_Seg_social_1] + case when i.[Tip_Seg_social_2] > 0 then 1 else 0 end + w.[Tip_Seg_social_2] + case when i.[Tip_Seg_social_3] > 0 then 1 else 0 end + w.[Tip_Seg_social_3] + case when i.[Tip_Seg_social_9] > 0 then 1 else 0 end + w.[Tip_Seg_social_9]),
			[Tip_Seg_social_2] = (case when i.[Tip_Seg_social_2] > 0 then 1 else 0 end + w.[Tip_Seg_social_2]) / (case when i.[Tip_Seg_social_0] > 0 then 1 else 0 end + w.[Tip_Seg_social_0] + case when i.[Tip_Seg_social_1] > 0 then 1 else 0 end + w.[Tip_Seg_social_1] + case when i.[Tip_Seg_social_2] > 0 then 1 else 0 end + w.[Tip_Seg_social_2] + case when i.[Tip_Seg_social_3] > 0 then 1 else 0 end + w.[Tip_Seg_social_3] + case when i.[Tip_Seg_social_9] > 0 then 1 else 0 end + w.[Tip_Seg_social_9]),
			[Tip_Seg_social_3] = (case when i.[Tip_Seg_social_3] > 0 then 1 else 0 end + w.[Tip_Seg_social_3]) / (case when i.[Tip_Seg_social_0] > 0 then 1 else 0 end + w.[Tip_Seg_social_0] + case when i.[Tip_Seg_social_1] > 0 then 1 else 0 end + w.[Tip_Seg_social_1] + case when i.[Tip_Seg_social_2] > 0 then 1 else 0 end + w.[Tip_Seg_social_2] + case when i.[Tip_Seg_social_3] > 0 then 1 else 0 end + w.[Tip_Seg_social_3] + case when i.[Tip_Seg_social_9] > 0 then 1 else 0 end + w.[Tip_Seg_social_9]),
			[Tip_Seg_social_9] = (case when i.[Tip_Seg_social_9] > 0 then 1 else 0 end + w.[Tip_Seg_social_9]) / (case when i.[Tip_Seg_social_0] > 0 then 1 else 0 end + w.[Tip_Seg_social_0] + case when i.[Tip_Seg_social_1] > 0 then 1 else 0 end + w.[Tip_Seg_social_1] + case when i.[Tip_Seg_social_2] > 0 then 1 else 0 end + w.[Tip_Seg_social_2] + case when i.[Tip_Seg_social_3] > 0 then 1 else 0 end + w.[Tip_Seg_social_3] + case when i.[Tip_Seg_social_9] > 0 then 1 else 0 end + w.[Tip_Seg_social_9]),
			[Vlr_ingr_arriendos_nor] = 1,
			[Vlr_ingr_col_mayor_nor] = 1,
			[Vlr_ingr_cosecha_nor] = 1,
			[Vlr_ingr_fam_accion_nor] = 1,
			[Vlr_ingr_honorarios_nor] = 1,
			[Vlr_ingr_otro_subsidio_nor] = 1,
			[Vlr_ingr_pension_nor] = 1,
			[Vlr_ingr_remesa_exterior_nor] = 1,
			[Vlr_ingr_remesa_pais_nor] = 1,
			[Vlr_ingr_salario_nor] = 1,
			[Vlr_otros_ingresos_nor] = 1
		from [ML].[CNS_PersonaNeurons] n
		inner join #personas_inputs i
			on 1 = 1
		inner join #persona_weights w
			on 1 = 1
		where n.Cluster = @cod_mpio

		drop table #hogares
		drop table #hogares_maxvals
		drop table #viviendas_maxvals
		drop table #inputs
		drop table #weights
		drop table #personas_maxvals
		drop table #personas_inputs
		drop table #persona_weights

		select @pendientes = count(*) from [DAT].[CNS_HOGARES] where ML_Procesado is null
	end
end
GO
/****** Object:  StoredProcedure [ML].[sp__Municipios__GetByDpto]    Script Date: 3/8/2018 5:42:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [ML].[sp__Municipios__GetByDpto](
	@cod_dpto varchar(2)
) as
select
	m.cod_mpio,
	m.mpio,
	count(*) num_procesadas,
	sum(case when h.ML_Irregular = 1 then 1 else 0 end) num_irregulares
from [DAT].[MUNICIPIOS] m
left join [DAT].[CNS_HOGARES] h
	on m.cod_mpio = h.cod_mpio
where m.cod_dpto = @cod_dpto
	and h.ML_Procesado is not null
group by m.cod_mpio, m.mpio
order by m.mpio
GO
