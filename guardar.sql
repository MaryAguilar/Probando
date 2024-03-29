

	IF (@cAlias = 'CAT_PADRONSANEAMIENTO') BEGIN		-- Agregar
	EXEC sp_xml_preparedocument @nXmlDoc OUTPUT, @xmlTables
	DECLARE @tCat_PadronSaneamiento TABLE( ID_RECNO NUMERIC(10) IDENTITY(1,1)
		,isRowNew BIT NULL,isRowDeleted BIT NULL,
		[id_saneamiento] [numeric](10, 0) NOT NULL,
		[id_padron] [numeric](10, 0) NOT NULL,
		[registro] [numeric](10, 0) NULL,
		[permiso_year] [numeric](4, 0) NULL,
		[descarga] [numeric](2, 0) NULL,
		[de] [numeric](2, 0) NULL,
		[fecha_descarga] [datetime] NULL,
		[solicitud_nueva] [bit] NULL,
		[solicitud_regularizacion] [bit] NULL,
		[permiso_anterior_sarh] [bit] NULL,
		[permiso_anterior_sedue] [bit] NULL,
		[permiso_anterior_otro] [bit] NULL,
		[num_reg_anterior] [numeric](10, 0) NULL,
		[fecha_reg_anterior] [datetime] NULL,
		[num_expediente] [numeric](10, 0) NULL,
		[fecha_recepcion] [datetime] NULL,
		[id_cuenta] [numeric](10, 0) NULL,
		[tipo_persona] [varchar](20) NULL,
		[RFC] [varchar](20) NULL,
		[razon_social_solicitante] [varchar](100) NULL,
		[calle] [varchar](100) NULL,
		[entre_calle] [varchar](100) NULL,
		[y_calle] [varchar](100) NULL,
		[num_exterior] [varchar](10) NULL,
		[num_interior] [varchar](10) NULL,
		[colonia] [varchar](100) NULL,
		[codigo_postal] [numeric](10, 0) NULL,
		[estado] [numeric](10, 0) NULL,
		[municipio] [numeric](10, 0) NULL,
		[localidad] [varchar](100) NULL,
		[telefono] [varchar](30) NULL,
		[e_mail] [varchar](200) NULL,
		[nombre_rep_legal] [varchar](100) NULL,
		[calle_rep] [varchar](100) NULL,
		[entre_calle_rep] [varchar](100) NULL,
		[y_calle_rep] [varchar](100) NULL,
		[num_exterior_rep]  [varchar](10) NULL,
		[num_interior_rep]  [varchar](10) NULL,
		[colonia_rep] [varchar](100) NULL,
		[codigo_postal_rep] [numeric](10, 0) NULL,
		[telefono_rep] [varchar](30) NULL,
		[cargo_que_tiene] [varchar](50) NULL,
		[hrs_laborales_diarias] [numeric](5, 0) NULL,
		[horario_diario] [varchar](50) NULL,
		[num_dias_semanales] [numeric](5, 0) NULL,
		[meses_al_year] [numeric](5, 0) NULL,
		[num_empleados] [numeric](5, 0) NULL,
		[num_obreros] [numeric](5, 0) NULL,
		[permiso_inst_opera_empresa] [varchar](30) NULL,
		[lic_sanitaria_municipal] [varchar](30) NULL,
		[fecha_lic_san] [datetime] NULL,
		[lic_funcion_municipal] [varchar](30) NULL,
		[fecha_lic_func_mun] [datetime] NULL,
		[lic_funcion_federal] [varchar](30) NULL,
		[fecha_lic_fencion_fed] [datetime] NULL,
		[otros] [varchar](30) NULL,
		[fecha_otros] [datetime] NULL,
		[giro] [varchar](30) NULL,
		[agua_potable] [bit] NULL,
		[a_potable_m3Dia] [decimal](10, 4) NULL,
		[a_potable_m3Mes] [decimal](10, 4) NULL,
		[agua_cruda] [bit] NULL,
		[a_cruda_m3Dia] [decimal](10, 4) NULL,
		[a_cruda_m3Mes] [decimal](10, 4) NULL,
		[agua_por_pipas] [bit] NULL,
		[a_pipas_m3Dia] [decimal](10, 4) NULL,
		[a_pipas_m3Mes] [decimal](10, 4) NULL,
		[agua_residual] [bit] NULL,
		[a_residual_m3Dia] [decimal](10, 4) NULL,
		[a_residual_m3Mes] [decimal](10, 4) NULL,
		[otra_fuente] [varchar](100) NULL,
		[otra_m3Dia] [decimal](10, 4) NULL,
		[otra_m3Mes] [decimal](10, 4) NULL,
		[proceso_indstrial] [bit] NULL,
		[industrial_m3xDia] [decimal](10, 4) NULL,
		[sanitario] [bit] NULL,
		[sanitario_m3xDia] [decimal](10, 4) NULL,
		[lavado_automotriz] [bit] NULL,
		[lavado_m3xDia] [decimal](10, 4) NULL,
		[calderas] [bit] NULL,
		[calderas_m3xDia] [decimal](10, 4) NULL,
		[enfriamiento] [bit] NULL,
		[enfriamiento_m3xDia] [decimal](10, 4) NULL,
		[riego_jardines] [bit] NULL,
		[jardines_m3xDia] [decimal](10, 4) NULL,
		[regaderas] [bit] NULL,
		[regaderas_m3xDia] [decimal](10, 4) NULL,
		[otros_usos] [bit] NULL,
		[especifique] [varchar](100) NULL,
		[otros_m3xDia] [decimal](10, 4) NULL,
		[total_gastos] [decimal](10, 4) NULL,
		[ciclos_concentracion_en_enfriamiento] [varchar](500) NULL,
		[tiene_titulo_para_aprovechar_aguas_nac] [bit] NULL,
		[num_titulo_asignacion] [numeric](10, 0) NULL,
		[fecha_titulo_asignacion] [datetime] NULL,
		[num_titulo_concesion] [numeric](10, 0) NULL,
		[fecha_titulo_concesion] [datetime] NULL,
		[num_permiso] [numeric](10, 0) NULL,
		[fecha_permiso] [datetime] NULL,
		[num_comprobante_conexion_sma_agua_mun] [numeric](10, 0) NULL,
		[fecha_comprobante_conexion] [datetime] NULL,
		[otro_comprobante] [numeric](10, 0) NULL,
		[fecha_otro_comprobante] [datetime] NULL,
		[tiene_medidor_gasto] [bit] NULL,
		[funciona] [bit] NULL,
		[causa] [varchar](100) NULL,
		[tipo_medidor] [varchar](100) NULL,
		[num_medidor] [numeric](10, 0) NULL,
		[tratamiento_agua_antes_usarse] [bit] NULL,
		[descripcion] [varchar](200) NULL,
		[razon_del_tratamiento] [varchar](200) NULL,
		[tiene_sma_suavicion_agua] [bit] NULL,
		[frecuencia_regeneracion_suavizador_dia] [decimal](10, 4) NULL,
		[frecuencia_regeneracion_suavizador_sem] [decimal](10, 4) NULL,
		[frecuencia_regeneracion_suavizador_mes] [decimal](10, 4) NULL,
		[volumen_agua_utilizada_regeneracion] [decimal](10, 4) NULL,
		[volumen_agua_utilizada_lavados] [decimal](10, 4) NULL,
		[num_descargas_aguas_industriales] [numeric](5, 0) NULL,
		[origen_descargas] [varchar](200) NULL,
		[num_descargas] [numeric](5, 0) NULL,
		[num_total_descargas] [numeric](5, 0) NULL,
		[alcantarillado_industrial] [bit] NULL,
		[alcantarillado_pluvial] [bit] NULL,
		[alcantarillado_sanitario] [bit] NULL,
		[alcantarillado_combinacion_de_dos] [bit] NULL,
		[alcantarillado_combinacion_de_tres] [bit] NULL,
		[red_mun_drenaje] [bit] NULL,
		[fosa_septica] [bit] NULL,
		[colector_principal] [bit] NULL,
		[otro_receptor] [bit] NULL,
		[especificar_sitio] [varchar](100) NULL,
		[tiene_estructura_adecuada] [bit] NULL,
		[razones_tecnicas] [varchar](200) NULL,
		[volumen_trimestral_descarga] [decimal](10, 4) NULL,
		[gasto_minimo_descargado] [decimal](10, 4) NULL,
		[gasto_medio_descargado] [decimal](10, 4) NULL,
		[gasto_maximo_descargado] [decimal](10, 4) NULL,
		[horas_descarga] [varchar](100) NULL,
		[dias_descarga] [varchar](100) NULL,
		[meses_descarga] [varchar](100) NULL,
		[descripcion_tratamiento_agua_antes_vertido_drenaje] [varchar](200) NULL,
		[medidor_para_aguas_residuales] [bit] NULL,
		[funciona_medidor] [bit] NULL,
		[otras_substancias_enel_agua_residual] [varchar](100) NULL,
		[nombre_establecimiento] [varchar](100) NULL,
		[nombre_testigo1] [varchar](100) NULL,
		[identificacion_testigo1] [varchar](100) NULL,
		[domicilio_testigo1] [varchar](100) NULL,
		[nombre_testigo2] [varchar](100) NULL,
		[identificacion_testigo2] [varchar](100) NULL,
		[domicilio_testigo2] [varchar](100) NULL,
		[observaciones_visitado] [varchar](500) NULL,
		[observaciones_visitante] [varchar](500) NULL,
		[realizo_visita] [numeric](10, 0) NULL,
		[num_oficio] [numeric](20, 0) NULL,
		[fecha_oficio] [datetime] NULL,
		[identif_rep] [varchar](100) NULL,
		[observa_drenaje] [varchar](500) NULL
		)
	DECLARE @tOpr_ActProductivas TABLE( ID_RECNO NUMERIC(10) IDENTITY(1,1)
		,isRowNew BIT NULL,isRowDeleted BIT NULL
		,[id_saneamiento] [numeric](10, 0) NULL,
		[id_actividad] [numeric](10, 0) NULL,
		[nombre_comercial] [varchar](100) NULL,
		[nombre_quimico] [varchar](100) NULL,
		[produccion_mensual] [decimal](12, 4) NULL,
		[proveedor] [varchar](100) NULL,
		[tipo_almacenamiento] [varchar](50) NULL,
		[clave_crebit] [numeric](10, 0) NULL,
		[id_tipoAct] [numeric](10, 0) NULL
		)
	DECLARE @tOpr_DetElementos TABLE( ID_RECNO NUMERIC(10) IDENTITY(1,1)
		,isRowNew BIT NULL,isRowDeleted BIT NULL,
		[id_detElemento] [numeric](10, 0)  NULL,
		[id_elemento] [numeric](10, 0) NOT NULL,
		[concentracion] [decimal](10, 2) NOT NULL,
		[unidad] [varchar](20) NOT NULL,
		[id_saneamiento] [numeric](10, 0) NOT NULL
		)
	DECLARE @tOpr_DetParametros TABLE( ID_RECNO NUMERIC(10) IDENTITY(1,1)
		,isRowNew BIT NULL,isRowDeleted BIT NULL,
		[id_detParametro] [numeric](10, 0)  NULL,
		[id_parametro] [numeric](10, 0) NOT NULL,
		[concentracion] [decimal](10, 2) NOT NULL,
		[unidad] [varchar](20) NOT NULL,
		[id_saneamiento] [numeric](10, 0) NOT NULl
		)
	BEGIN TRY
	INSERT INTO @tCat_PadronSaneamiento (isRowNew 
		  ,isRowDeleted  
		  ,id_saneamiento
		  ,id_padron
		  ,registro
		  ,permiso_year
		  ,descarga
		  ,de
		  ,fecha_descarga
		  ,solicitud_nueva
		  ,solicitud_regularizacion
		  ,permiso_anterior_sarh
		  ,permiso_anterior_sedue
		  ,permiso_anterior_otro
		  ,num_reg_anterior
		  ,fecha_reg_anterior
		  ,num_expediente
		  ,fecha_recepcion
		  ,id_cuenta
		  ,tipo_persona
		  ,RFC
		  ,razon_social_solicitante
		  ,calle
		  ,entre_calle
		  ,y_calle
		  ,num_exterior
		  ,num_interior
		  ,colonia
		  ,codigo_postal
		  ,estado
		  ,municipio
		  ,localidad
		  ,telefono
		  ,e_mail
		  ,nombre_rep_legal
		  ,calle_rep
		  ,entre_calle_rep
		  ,y_calle_rep
		  ,num_exterior_rep
		  ,num_interior_rep
		  ,colonia_rep
		  ,codigo_postal_rep
		  ,telefono_rep
		  ,cargo_que_tiene
		  ,hrs_laborales_diarias
		  ,horario_diario
		  ,num_dias_semanales
		  ,meses_al_year
		  ,num_empleados
		  ,num_obreros
		  ,permiso_inst_opera_empresa
		  ,lic_sanitaria_municipal
		  ,fecha_lic_san
		  ,lic_funcion_municipal
		  ,fecha_lic_func_mun
		  ,lic_funcion_federal
		  ,fecha_lic_fencion_fed
		  ,otros
		  ,fecha_otros
		  ,giro
		  ,agua_potable
		  ,a_potable_m3Dia
		  ,a_potable_m3Mes
		  ,agua_cruda
		  ,a_cruda_m3Dia
		  ,a_cruda_m3Mes
		  ,agua_por_pipas
		  ,a_pipas_m3Dia
		  ,a_pipas_m3Mes
		  ,agua_residual
		  ,a_residual_m3Dia
		  ,a_residual_m3Mes
		  ,otra_fuente
		  ,otra_m3Dia
		  ,otra_m3Mes
		  ,proceso_indstrial
		  ,industrial_m3xDia
		  ,sanitario
		  ,sanitario_m3xDia
		  ,lavado_automotriz
		  ,lavado_m3xDia
		  ,calderas
		  ,calderas_m3xDia
		  ,enfriamiento
		  ,enfriamiento_m3xDia
		  ,riego_jardines
		  ,jardines_m3xDia
		  ,regaderas
		  ,regaderas_m3xDia
		  ,otros_usos
		  ,especifique
		  ,otros_m3xDia
		  ,total_gastos
		  ,ciclos_concentracion_en_enfriamiento
		  ,tiene_titulo_para_aprovechar_aguas_nac
		  ,num_titulo_asignacion
		  ,fecha_titulo_asignacion
		  ,num_titulo_concesion
		  ,fecha_titulo_concesion
		  ,num_permiso
		  ,fecha_permiso
		  ,num_comprobante_conexion_sma_agua_mun
		  ,fecha_comprobante_conexion
		  ,otro_comprobante
		  ,fecha_otro_comprobante
		  ,tiene_medidor_gasto
		  ,funciona
		  ,causa
		  ,tipo_medidor
		  ,num_medidor
		  ,tratamiento_agua_antes_usarse
		  ,descripcion
		  ,razon_del_tratamiento
		  ,tiene_sma_suavicion_agua
		  ,frecuencia_regeneracion_suavizador_dia
		  ,frecuencia_regeneracion_suavizador_sem
		  ,frecuencia_regeneracion_suavizador_mes
		  ,volumen_agua_utilizada_regeneracion
		  ,volumen_agua_utilizada_lavados
		  ,num_descargas_aguas_industriales
		  ,origen_descargas
		  ,num_descargas
		  ,num_total_descargas
		  ,alcantarillado_industrial
		  ,alcantarillado_pluvial
		  ,alcantarillado_sanitario
		  ,alcantarillado_combinacion_de_dos
		  ,alcantarillado_combinacion_de_tres
		  ,red_mun_drenaje
		  ,fosa_septica
		  ,colector_principal
		  ,otro_receptor
		  ,especificar_sitio
		  ,tiene_estructura_adecuada
		  ,razones_tecnicas
		  ,volumen_trimestral_descarga
		  ,gasto_minimo_descargado
		  ,gasto_medio_descargado
		  ,gasto_maximo_descargado
		  ,horas_descarga
		  ,dias_descarga
		  ,meses_descarga
		  ,descripcion_tratamiento_agua_antes_vertido_drenaje
		  ,medidor_para_aguas_residuales
		  ,funciona_medidor
		  ,otras_substancias_enel_agua_residual
		  ,nombre_establecimiento
		  ,nombre_testigo1
		  ,identificacion_testigo1
		  ,domicilio_testigo1
		  ,nombre_testigo2
		  ,identificacion_testigo2
		  ,domicilio_testigo2
		  ,observaciones_visitado
		  ,observaciones_visitante,
		   realizo_visita
		  ,num_oficio
		  ,fecha_oficio
		  ,identif_rep
		  ,observa_drenaje)

	SELECT isRowNew 
		  ,isRowDeleted  
		  ,id_saneamiento
		  ,id_padron
		  ,registro
          ,permiso_year
          ,descarga
          ,de
          ,fecha_descarga
          ,solicitud_nueva
          ,solicitud_regularizacion
          ,permiso_anterior_sarh
          ,permiso_anterior_sedue
          ,permiso_anterior_otro
		  ,num_reg_anterior
		  ,fecha_reg_anterior
		  ,num_expediente
		  ,fecha_recepcion
		  ,id_cuenta
		  ,tipo_persona
		  ,RFC
		  ,razon_social_solicitante
		  ,calle
		  ,entre_calle
		  ,y_calle
		  ,num_exterior
		  ,num_interior
		  ,colonia
		  ,codigo_postal
		  ,estado
		  ,municipio
		  ,localidad
		  ,telefono
		  ,e_mail
		  ,nombre_rep_legal
		  ,calle_rep
		  ,entre_calle_rep
		  ,y_calle_rep
		  ,num_exterior_rep
		  ,num_interior_rep
		  ,colonia_rep
		  ,codigo_postal_rep
		  ,telefono_rep
		  ,cargo_que_tiene
		  ,hrs_laborales_diarias
		  ,horario_diario
		  ,num_dias_semanales
		  ,meses_al_year
		  ,num_empleados
		  ,num_obreros
		  ,permiso_inst_opera_empresa
		  ,lic_sanitaria_municipal
		  ,fecha_lic_san
		  ,lic_funcion_municipal
		  ,fecha_lic_func_mun
		  ,lic_funcion_federal
		  ,fecha_lic_fencion_fed
		  ,otros
		  ,fecha_otros
		  ,giro
		  ,agua_potable
		  ,a_potable_m3Dia
		  ,a_potable_m3Mes
		  ,agua_cruda
		  ,a_cruda_m3Dia
		  ,a_cruda_m3Mes
		  ,agua_por_pipas
		  ,a_pipas_m3Dia
		  ,a_pipas_m3Mes
		  ,agua_residual
		  ,a_residual_m3Dia
		  ,a_residual_m3Mes
		  ,otra_fuente
		  ,otra_m3Dia
		  ,otra_m3Mes
		  ,proceso_indstrial
		  ,industrial_m3xDia
		  ,sanitario
		  ,sanitario_m3xDia
		  ,lavado_automotriz
		  ,lavado_m3xDia
		  ,calderas
		  ,calderas_m3xDia
		  ,enfriamiento
		  ,enfriamiento_m3xDia
		  ,riego_jardines
		  ,jardines_m3xDia
		  ,regaderas
		  ,regaderas_m3xDia
		  ,otros_usos
		  ,especifique
		  ,otros_m3xDia
		  ,total_gastos
		  ,ciclos_concentracion_en_enfriamiento
		  ,tiene_titulo_para_aprovechar_aguas_nac
		  ,num_titulo_asignacion
		  ,fecha_titulo_asignacion
		  ,num_titulo_concesion
		  ,fecha_titulo_concesion
		  ,num_permiso
		  ,fecha_permiso
		  ,num_comprobante_conexion_sma_agua_mun
		  ,fecha_comprobante_conexion
		  ,otro_comprobante
		  ,fecha_otro_comprobante
		  ,tiene_medidor_gasto
		  ,funciona
		  ,causa
		  ,tipo_medidor
		  ,num_medidor
		  ,tratamiento_agua_antes_usarse
		  ,descripcion
		  ,razon_del_tratamiento
		  ,tiene_sma_suavicion_agua
		  ,frecuencia_regeneracion_suavizador_dia
		  ,frecuencia_regeneracion_suavizador_sem
		  ,frecuencia_regeneracion_suavizador_mes
		  ,volumen_agua_utilizada_regeneracion
		  ,volumen_agua_utilizada_lavados
		  ,num_descargas_aguas_industriales
		  ,origen_descargas
		  ,num_descargas
		  ,num_total_descargas
		  ,alcantarillado_industrial
		  ,alcantarillado_pluvial
		  ,alcantarillado_sanitario
		  ,alcantarillado_combinacion_de_dos
		  ,alcantarillado_combinacion_de_tres
		  ,red_mun_drenaje
		  ,fosa_septica
		  ,colector_principal
		  ,otro_receptor
		  ,especificar_sitio
		  ,tiene_estructura_adecuada
		  ,razones_tecnicas
		  ,volumen_trimestral_descarga
		  ,gasto_minimo_descargado
		  ,gasto_medio_descargado
		  ,gasto_maximo_descargado
		  ,horas_descarga
		  ,dias_descarga
		  ,meses_descarga
		  ,descripcion_tratamiento_agua_antes_vertido_drenaje
		  ,medidor_para_aguas_residuales
		  ,funciona_medidor
		  ,otras_substancias_enel_agua_residual
		  ,nombre_establecimiento
		  ,nombre_testigo1
		  ,identificacion_testigo1
		  ,domicilio_testigo1
		  ,nombre_testigo2
		  ,identificacion_testigo2
		  ,domicilio_testigo2
		  ,observaciones_visitado
		  ,observaciones_visitante
		  ,realizo_visita
		  ,num_oficio
		  ,fecha_oficio
		  ,identif_rep
		  ,observa_drenaje
			
	FROM OPENXML (@nXmlDoc, 'SANEAMIENTO/CAT_PADRONSANEAMIENTO',2)
	WITH ( isRowNew BIT ,isRowDeleted BIT 
			,[id_saneamiento] [numeric](10, 0) 
			,[id_padron] [numeric](10, 0)  ,
			[registro] [numeric](10, 0) ,
			[permiso_year] [numeric](4, 0) ,
			[descarga] [numeric](2, 0) ,
			[de] [numeric](2, 0) ,
			[fecha_descarga] [datetime] ,
			[solicitud_nueva] [bit] ,
			[solicitud_regularizacion] [bit] ,
			[permiso_anterior_sarh] [bit] ,
			[permiso_anterior_sedue] [bit] ,
			[permiso_anterior_otro] [bit] ,
			[num_reg_anterior] [numeric](10, 0) ,
			[fecha_reg_anterior] [datetime] ,
			[num_expediente] [numeric](10, 0) ,
			[fecha_recepcion] [datetime] ,
			[id_cuenta] [numeric](10, 0) ,
			[tipo_persona] [varchar](20) ,
			[RFC] [varchar](20) ,
			[razon_social_solicitante] [varchar](100) ,
			[calle] [varchar](100) ,
			[entre_calle] [varchar](100) ,
			[y_calle] [varchar](100) ,
			[num_exterior]  [varchar](10) ,
			[num_interior]  [varchar](10) ,
			[colonia] [varchar](100) ,
			[codigo_postal] [numeric](10, 0) ,
			[estado] [numeric](10, 0) ,
			[municipio] [numeric](10, 0) ,
			[localidad] [varchar](100) ,
			[telefono] [varchar](30) ,
			[e_mail] [varchar](200) ,
			[nombre_rep_legal] [varchar](100) ,
			[calle_rep] [varchar](100) ,
			[entre_calle_rep] [varchar](100) ,
			[y_calle_rep] [varchar](100) ,
			[num_exterior_rep] [varchar](10) ,
			[num_interior_rep]  [varchar](10) ,
			[colonia_rep] [varchar](100) ,
			[codigo_postal_rep] [numeric](10, 0),
			[telefono_rep] [varchar](30) ,
			[cargo_que_tiene] [varchar](50) ,
			[hrs_laborales_diarias] [numeric](5, 0) ,
			[horario_diario] [varchar](50) ,
			[num_dias_semanales] [numeric](5, 0) ,
			[meses_al_year] [numeric](5, 0) ,
			[num_empleados] [numeric](5, 0) ,
			[num_obreros] [numeric](5, 0) ,
			[permiso_inst_opera_empresa] [varchar](30) ,
			[lic_sanitaria_municipal] [varchar](30) ,
			[fecha_lic_san] [datetime] ,
			[lic_funcion_municipal] [varchar](30) ,
			[fecha_lic_func_mun] [datetime] ,
			[lic_funcion_federal] [varchar](30) ,
			[fecha_lic_fencion_fed] [datetime] ,
			[otros] [varchar](30) ,
			[fecha_otros] [datetime] ,
			[giro] [varchar](30) ,
			[agua_potable] [bit] ,
			[a_potable_m3Dia] [decimal](10, 4) ,
			[a_potable_m3Mes] [decimal](10, 4) ,
			[agua_cruda] [bit] ,
			[a_cruda_m3Dia] [decimal](10, 4) ,
			[a_cruda_m3Mes] [decimal](10, 4) ,
			[agua_por_pipas] [bit] ,
			[a_pipas_m3Dia] [decimal](10, 4) ,
			[a_pipas_m3Mes] [decimal](10, 4) ,
			[agua_residual] [bit] ,
			[a_residual_m3Dia] [decimal](10, 4) ,
			[a_residual_m3Mes] [decimal](10, 4) ,
			[otra_fuente] [varchar](100) ,
			[otra_m3Dia] [decimal](10, 4) ,
			[otra_m3Mes] [decimal](10, 4) ,
			[proceso_indstrial] [bit] ,
			[industrial_m3xDia] [decimal](10, 4) ,
			[sanitario] [bit] ,
			[sanitario_m3xDia] [decimal](10, 4) ,
			[lavado_automotriz] [bit] ,
			[lavado_m3xDia] [decimal](10, 4) ,
			[calderas] [bit] ,
			[calderas_m3xDia] [decimal](10, 4) ,
			[enfriamiento] [bit] ,
			[enfriamiento_m3xDia] [decimal](10, 4) ,
			[riego_jardines] [bit] ,
			[jardines_m3xDia] [decimal](10, 4) ,
			[regaderas] [bit] ,
			[regaderas_m3xDia] [decimal](10, 4) ,
			[otros_usos] [bit] ,
			[especifique] [varchar](100) ,
			[otros_m3xDia] [decimal](10, 4) ,
			[total_gastos] [decimal](10, 4) ,
			[ciclos_concentracion_en_enfriamiento] [varchar](500) ,
			[tiene_titulo_para_aprovechar_aguas_nac] [bit] ,
			[num_titulo_asignacion] [numeric](10, 0) ,
			[fecha_titulo_asignacion] [datetime] ,
			[num_titulo_concesion] [numeric](10, 0) ,
			[fecha_titulo_concesion] [datetime] ,
			[num_permiso] [numeric](10, 0) ,
			[fecha_permiso] [datetime] ,
			[num_comprobante_conexion_sma_agua_mun] [numeric](10, 0) ,
			[fecha_comprobante_conexion] [datetime] ,
			[otro_comprobante] [numeric](10, 0) ,
			[fecha_otro_comprobante] [datetime] ,
			[tiene_medidor_gasto] [bit] ,
			[funciona] [bit] ,
			[causa] [varchar](100) ,
			[tipo_medidor] [varchar](100) ,
			[num_medidor] [numeric](10, 0) ,
			[tratamiento_agua_antes_usarse] [bit] ,
			[descripcion] [varchar](200) ,
			[razon_del_tratamiento] [varchar](200) ,
			[tiene_sma_suavicion_agua] [bit] ,
			[frecuencia_regeneracion_suavizador_dia] [decimal](10, 4) ,
			[frecuencia_regeneracion_suavizador_sem] [decimal](10, 4) ,
			[frecuencia_regeneracion_suavizador_mes] [decimal](10, 4) ,
			[volumen_agua_utilizada_regeneracion] [decimal](10, 4) ,
			[volumen_agua_utilizada_lavados] [decimal](10, 4) ,
			[num_descargas_aguas_industriales] [numeric](5, 0) ,
			[origen_descargas] [varchar](200) ,
			[num_descargas] [numeric](5, 0) ,
			[num_total_descargas] [numeric](5, 0) ,
			[alcantarillado_industrial] [bit] ,
			[alcantarillado_pluvial] [bit] ,
			[alcantarillado_sanitario] [bit] ,
			[alcantarillado_combinacion_de_dos] [bit] ,
			[alcantarillado_combinacion_de_tres] [bit] ,
			[red_mun_drenaje] [bit] ,
			[fosa_septica] [bit] ,
			[colector_principal] [bit] ,
			[otro_receptor] [bit] ,
			[especificar_sitio] [varchar](100) ,
			[tiene_estructura_adecuada] [bit] ,
			[razones_tecnicas] [varchar](200) ,
			[volumen_trimestral_descarga] [decimal](10, 4) ,
			[gasto_minimo_descargado] [decimal](10, 4) ,
			[gasto_medio_descargado] [decimal](10, 4) ,
			[gasto_maximo_descargado] [decimal](10, 4) ,
			[horas_descarga] [varchar](100) ,
			[dias_descarga] [varchar](100) ,
			[meses_descarga] [varchar](100) ,
			[descripcion_tratamiento_agua_antes_vertido_drenaje] [varchar](200) ,
			[medidor_para_aguas_residuales] [bit] ,
			[funciona_medidor] [bit] ,
			[otras_substancias_enel_agua_residual] [varchar](100) ,
			[nombre_establecimiento] [varchar](100) ,
			[nombre_testigo1] [varchar](100) ,
			[identificacion_testigo1] [varchar](100) ,
			[domicilio_testigo1] [varchar](100) ,
			[nombre_testigo2] [varchar](100) ,
			[identificacion_testigo2][varchar](100) ,
			[domicilio_testigo2] [varchar](100) ,
			[observaciones_visitado] [varchar](500) ,
			[observaciones_visitante] [varchar](500) ,
			[realizo_visita] [numeric](10, 0) ,
			[num_oficio] [numeric](20, 0) ,
			[fecha_oficio] [datetime] ,
			[identif_rep] [varchar](100) ,
			[observa_drenaje] [varchar](500) )
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO CARGAR EL xml' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
	
	BEGIN TRY
			INSERT INTO @tOpr_ActProductivas (isRowNew  
				,isRowDeleted  
				,id_saneamiento  
				,id_actividad 
				,nombre_comercial
				,nombre_quimico
				,produccion_mensual
				,proveedor
				,tipo_almacenamiento
				,clave_crebit
				,id_tipoAct)
				
			SELECT isRowNew  
				,isRowDeleted  
				,id_saneamiento  
				,id_actividad 
				,nombre_comercial
				,nombre_quimico
				,produccion_mensual
				,proveedor
				,tipo_almacenamiento
				,clave_crebit
				,id_tipoAct
				
			FROM OPENXML (@nXmlDoc, 'SANEAMIENTO/OPR_ACTPRODUCTIVAS',2)
			WITH ( isRowNew BIT ,isRowDeleted BIT 
				,[id_saneamiento] [numeric](10, 0) ,
				[id_actividad] [numeric](10, 0) ,
				[nombre_comercial] [varchar](100) ,
				[nombre_quimico] [varchar](100) ,
				[produccion_mensual] [decimal](12, 4) ,
				[proveedor] [varchar](100) ,
				[tipo_almacenamiento] [varchar](50) ,
				[clave_crebit] [numeric](10, 0) ,
				[id_tipoAct] [numeric](10, 0) 
				)
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO CARGAR EL xml' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		BEGIN TRY
			INSERT INTO @tOpr_DetParametros (isRowNew  
				,isRowDeleted  
				,id_detParametro
				,id_parametro
				,concentracion
				,unidad
				,id_saneamiento)				
			SELECT isRowNew  
				,isRowDeleted  
				,id_detParametro
				,id_parametro
				,concentracion
				,unidad
				,id_saneamiento			
			FROM OPENXML (@nXmlDoc, 'SANEAMIENTO/OPR_DETPARAMETROS',2)
			WITH ( isRowNew BIT ,isRowDeleted BIT ,
				[id_detParametro] [numeric](10, 0) ,
				[id_parametro] [numeric](10, 0) ,
				[concentracion] [decimal](10, 2) ,
				[unidad] [varchar](20),
				[id_saneamiento] [numeric](10, 0)
				)				
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO CARGAR EL xml' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH	
		BEGIN TRY
			INSERT INTO @tOpr_DetElementos (isRowNew  
				,isRowDeleted  
				,id_detElemento
				,id_elemento
				,concentracion
				,unidad
				,id_saneamiento)			
			SELECT isRowNew  
				,isRowDeleted  
				,id_detElemento
				,id_elemento
				,concentracion
				,unidad
				,id_saneamiento
				
			FROM OPENXML (@nXmlDoc, 'SANEAMIENTO/OPR_DETELEMENTOS',2)
			WITH ( isRowNew BIT ,isRowDeleted BIT, 
				[id_detElemento] [numeric](10, 0) ,
				[id_elemento] [numeric](10, 0) ,
				[concentracion] [decimal](10, 2) ,
				[unidad] [varchar](20),
				[id_saneamiento] [numeric](10, 0) 
				)
				
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO CARGAR EL xml' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		
		EXECUTE sp_xml_removedocument @nXmlDoc
		
		BEGIN TRANSACTION
		--!-- DELETE 
		BEGIN TRY
			DELETE FROM Saneamiento.Cat_PadronSaneamiento 
			FROM @tCat_PadronSaneamiento AS tCat_PadronSaneamiento
			INNER JOIN Saneamiento.Cat_PadronSaneamiento ON Cat_PadronSaneamiento.id_padron = tCat_PadronSaneamiento.id_padron
			WHERE tCat_PadronSaneamiento.id_padron>0 AND tCat_PadronSaneamiento.isRowDeleted=1 AND ISNULL(tCat_PadronSaneamiento.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER DELETE FROM Saneamiento.Cat_PadronSaneamiento ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		--!-- UPDATE					
		BEGIN TRY
			UPDATE Saneamiento.Cat_PadronSaneamiento SET
			   id_padron=tCat_PadronSaneamiento.id_padron 
			  ,registro=tCat_PadronSaneamiento.registro
			  ,permiso_year=tCat_PadronSaneamiento.permiso_year
			  ,descarga=tCat_PadronSaneamiento.descarga
			  ,de=tCat_PadronSaneamiento.de
			  ,fecha_descarga=tCat_PadronSaneamiento.fecha_descarga 
			  ,solicitud_nueva=tCat_PadronSaneamiento.solicitud_nueva
			  ,solicitud_regularizacion=tCat_PadronSaneamiento.solicitud_regularizacion
			  ,permiso_anterior_sarh=tCat_PadronSaneamiento.permiso_anterior_sarh
			  ,permiso_anterior_sedue=tCat_PadronSaneamiento.permiso_anterior_sedue
			  ,permiso_anterior_otro=tCat_PadronSaneamiento.permiso_anterior_otro
			  ,num_reg_anterior=tCat_PadronSaneamiento.num_reg_anterior
			  ,fecha_reg_anterior=tCat_PadronSaneamiento.fecha_reg_anterior
			  ,num_expediente=tCat_PadronSaneamiento.num_expediente
			  ,fecha_recepcion=tCat_PadronSaneamiento.fecha_recepcion
			  ,id_cuenta=tCat_PadronSaneamiento.id_cuenta
			  ,tipo_persona=tCat_PadronSaneamiento.tipo_persona
			  ,RFC=tCat_PadronSaneamiento.RFC
			  ,razon_social_solicitante=tCat_PadronSaneamiento.razon_social_solicitante
			  ,calle=tCat_PadronSaneamiento.calle
			  ,entre_calle=tCat_PadronSaneamiento.entre_calle
			  ,y_calle=tCat_PadronSaneamiento.y_calle
			  ,num_exterior=tCat_PadronSaneamiento.num_exterior
			  ,num_interior=tCat_PadronSaneamiento.num_interior
			  ,colonia=tCat_PadronSaneamiento.colonia
			  ,codigo_postal=tCat_PadronSaneamiento.codigo_postal
			  ,estado=tCat_PadronSaneamiento.estado
			  ,municipio=tCat_PadronSaneamiento.municipio
			  ,localidad=tCat_PadronSaneamiento.localidad
			  ,telefono=tCat_PadronSaneamiento.telefono
			  ,e_mail=tCat_PadronSaneamiento.e_mail
			  ,nombre_rep_legal=tCat_PadronSaneamiento.nombre_rep_legal
			  ,calle_rep=tCat_PadronSaneamiento.calle_rep
			  ,entre_calle_rep=tCat_PadronSaneamiento.entre_calle_rep
			  ,y_calle_rep=tCat_PadronSaneamiento.y_calle_rep
			  ,num_exterior_rep=tCat_PadronSaneamiento.num_exterior_rep
			  ,num_interior_rep=tCat_PadronSaneamiento.num_interior_rep
			  ,colonia_rep=tCat_PadronSaneamiento.colonia_rep
			  ,codigo_postal_rep=tCat_PadronSaneamiento.codigo_postal_rep
			  ,telefono_rep=tCat_PadronSaneamiento.telefono_rep
			  ,cargo_que_tiene=tCat_PadronSaneamiento.cargo_que_tiene
			  ,hrs_laborales_diarias=tCat_PadronSaneamiento.hrs_laborales_diarias
			  ,horario_diario=tCat_PadronSaneamiento.horario_diario
			  ,num_dias_semanales=tCat_PadronSaneamiento.num_dias_semanales
			  ,meses_al_year=tCat_PadronSaneamiento.meses_al_year
			  ,num_empleados=tCat_PadronSaneamiento.num_empleados
			  ,num_obreros=tCat_PadronSaneamiento.num_obreros
			  ,permiso_inst_opera_empresa=tCat_PadronSaneamiento.permiso_inst_opera_empresa
			  ,lic_sanitaria_municipal=tCat_PadronSaneamiento.lic_sanitaria_municipal
			  ,fecha_lic_san=tCat_PadronSaneamiento.fecha_lic_san
			  ,lic_funcion_municipal=tCat_PadronSaneamiento.lic_funcion_municipal
			  ,fecha_lic_func_mun=tCat_PadronSaneamiento.fecha_lic_func_mun
			  ,lic_funcion_federal=tCat_PadronSaneamiento.lic_funcion_federal
			  ,fecha_lic_fencion_fed=tCat_PadronSaneamiento.fecha_lic_fencion_fed
			  ,otros=tCat_PadronSaneamiento.otros
			  ,fecha_otros=tCat_PadronSaneamiento.fecha_otros
			  ,giro=tCat_PadronSaneamiento.giro
			  ,agua_potable=tCat_PadronSaneamiento.agua_potable
			  ,a_potable_m3Dia=tCat_PadronSaneamiento.a_potable_m3Dia
			  ,a_potable_m3Mes=tCat_PadronSaneamiento.a_potable_m3Mes
			  ,agua_cruda=tCat_PadronSaneamiento.agua_cruda
			  ,a_cruda_m3Dia=tCat_PadronSaneamiento.a_cruda_m3Dia
			  ,a_cruda_m3Mes=tCat_PadronSaneamiento.a_cruda_m3Mes
			  ,agua_por_pipas=tCat_PadronSaneamiento.agua_por_pipas
			  ,a_pipas_m3Dia=tCat_PadronSaneamiento.a_pipas_m3Dia
			  ,a_pipas_m3Mes=tCat_PadronSaneamiento.a_pipas_m3Mes
			  ,agua_residual=tCat_PadronSaneamiento.agua_residual
			  ,a_residual_m3Dia=tCat_PadronSaneamiento.a_residual_m3Dia
			  ,a_residual_m3Mes=tCat_PadronSaneamiento.a_residual_m3Mes
			  ,otra_fuente=tCat_PadronSaneamiento.otra_fuente
			  ,otra_m3Dia=tCat_PadronSaneamiento.otra_m3Dia
			  ,otra_m3Mes=tCat_PadronSaneamiento.otra_m3Mes
			  ,proceso_indstrial=tCat_PadronSaneamiento.proceso_indstrial
			  ,industrial_m3xDia=tCat_PadronSaneamiento.industrial_m3xDia
			  ,sanitario=tCat_PadronSaneamiento.sanitario
			  ,sanitario_m3xDia=tCat_PadronSaneamiento.sanitario_m3xDia
			  ,lavado_automotriz=tCat_PadronSaneamiento.lavado_automotriz
			  ,lavado_m3xDia=tCat_PadronSaneamiento.lavado_m3xDia
			  ,calderas=tCat_PadronSaneamiento.calderas
			  ,calderas_m3xDia=tCat_PadronSaneamiento.calderas_m3xDia
			  ,enfriamiento=tCat_PadronSaneamiento.enfriamiento
			  ,enfriamiento_m3xDia=tCat_PadronSaneamiento.enfriamiento_m3xDia
			  ,riego_jardines=tCat_PadronSaneamiento.riego_jardines
			  ,jardines_m3xDia=tCat_PadronSaneamiento.jardines_m3xDia
			  ,regaderas=tCat_PadronSaneamiento.regaderas
			  ,regaderas_m3xDia=tCat_PadronSaneamiento.regaderas_m3xDia
			  ,otros_usos=tCat_PadronSaneamiento.otros_usos
			  ,especifique=tCat_PadronSaneamiento.especifique
			  ,otros_m3xDia=tCat_PadronSaneamiento.otros_m3xDia
			  ,total_gastos=tCat_PadronSaneamiento.total_gastos
			  ,ciclos_concentracion_en_enfriamiento=tCat_PadronSaneamiento.ciclos_concentracion_en_enfriamiento
			  ,tiene_titulo_para_aprovechar_aguas_nac=tCat_PadronSaneamiento.tiene_titulo_para_aprovechar_aguas_nac
			  ,num_titulo_asignacion=tCat_PadronSaneamiento.num_titulo_asignacion
			  ,fecha_titulo_asignacion=tCat_PadronSaneamiento.fecha_titulo_asignacion
			  ,num_titulo_concesion=tCat_PadronSaneamiento.num_titulo_concesion
			  ,fecha_titulo_concesion=tCat_PadronSaneamiento.fecha_titulo_concesion
			  ,num_permiso=tCat_PadronSaneamiento.num_permiso
			  ,fecha_permiso=tCat_PadronSaneamiento.fecha_permiso
			  ,num_comprobante_conexion_sma_agua_mun=tCat_PadronSaneamiento.num_comprobante_conexion_sma_agua_mun
			  ,fecha_comprobante_conexion=tCat_PadronSaneamiento.fecha_comprobante_conexion
			  ,otro_comprobante=tCat_PadronSaneamiento.otro_comprobante
			  ,fecha_otro_comprobante=tCat_PadronSaneamiento.fecha_otro_comprobante
			  ,tiene_medidor_gasto=tCat_PadronSaneamiento.tiene_medidor_gasto
			  ,funciona=tCat_PadronSaneamiento.funciona
			  ,causa=tCat_PadronSaneamiento.causa
			  ,tipo_medidor=tCat_PadronSaneamiento.tipo_medidor
			  ,num_medidor=tCat_PadronSaneamiento.num_medidor
			  ,tratamiento_agua_antes_usarse=tCat_PadronSaneamiento.tratamiento_agua_antes_usarse
			  ,descripcion=tCat_PadronSaneamiento.descripcion
			  ,razon_del_tratamiento=tCat_PadronSaneamiento.razon_del_tratamiento
			  ,tiene_sma_suavicion_agua=tCat_PadronSaneamiento.tiene_sma_suavicion_agua
			  ,frecuencia_regeneracion_suavizador_dia=tCat_PadronSaneamiento.frecuencia_regeneracion_suavizador_dia
			  ,frecuencia_regeneracion_suavizador_sem=tCat_PadronSaneamiento.frecuencia_regeneracion_suavizador_sem
			  ,frecuencia_regeneracion_suavizador_mes=tCat_PadronSaneamiento.frecuencia_regeneracion_suavizador_mes
			  ,volumen_agua_utilizada_regeneracion=tCat_PadronSaneamiento.volumen_agua_utilizada_regeneracion
			  ,volumen_agua_utilizada_lavados=tCat_PadronSaneamiento.volumen_agua_utilizada_lavados
			  ,num_descargas_aguas_industriales=tCat_PadronSaneamiento.num_descargas_aguas_industriales
			  ,origen_descargas=tCat_PadronSaneamiento.origen_descargas
			  ,num_descargas=tCat_PadronSaneamiento.num_descargas
			  ,num_total_descargas=tCat_PadronSaneamiento.num_total_descargas
			  ,alcantarillado_industrial=tCat_PadronSaneamiento.alcantarillado_industrial
			  ,alcantarillado_pluvial=tCat_PadronSaneamiento.alcantarillado_pluvial
			  ,alcantarillado_sanitario=tCat_PadronSaneamiento.alcantarillado_sanitario
			  ,alcantarillado_combinacion_de_dos=tCat_PadronSaneamiento.alcantarillado_combinacion_de_dos
			  ,alcantarillado_combinacion_de_tres=tCat_PadronSaneamiento.alcantarillado_combinacion_de_tres
			  ,red_mun_drenaje=tCat_PadronSaneamiento.red_mun_drenaje
			  ,fosa_septica=tCat_PadronSaneamiento.fosa_septica
			  ,colector_principal=tCat_PadronSaneamiento.colector_principal
			  ,otro_receptor=tCat_PadronSaneamiento.otro_receptor
			  ,especificar_sitio=tCat_PadronSaneamiento.especificar_sitio
			  ,tiene_estructura_adecuada=tCat_PadronSaneamiento.tiene_estructura_adecuada
			  ,razones_tecnicas=tCat_PadronSaneamiento.razones_tecnicas
			  ,volumen_trimestral_descarga=tCat_PadronSaneamiento.volumen_trimestral_descarga
			  ,gasto_minimo_descargado=tCat_PadronSaneamiento.gasto_minimo_descargado
			  ,gasto_medio_descargado=tCat_PadronSaneamiento.gasto_medio_descargado
			  ,gasto_maximo_descargado=tCat_PadronSaneamiento.gasto_maximo_descargado
			  ,horas_descarga=tCat_PadronSaneamiento.horas_descarga
			  ,dias_descarga=tCat_PadronSaneamiento.dias_descarga
			  ,meses_descarga=tCat_PadronSaneamiento.meses_descarga
			  ,descripcion_tratamiento_agua_antes_vertido_drenaje=tCat_PadronSaneamiento.descripcion_tratamiento_agua_antes_vertido_drenaje
			  ,medidor_para_aguas_residuales=tCat_PadronSaneamiento.medidor_para_aguas_residuales
			  ,funciona_medidor=tCat_PadronSaneamiento.funciona_medidor
			  ,otras_substancias_enel_agua_residual=tCat_PadronSaneamiento.otras_substancias_enel_agua_residual
			  ,nombre_establecimiento=tCat_PadronSaneamiento.nombre_establecimiento
			  ,nombre_testigo1=tCat_PadronSaneamiento.nombre_testigo1
			  ,identificacion_testigo1=tCat_PadronSaneamiento.identificacion_testigo1
			  ,domicilio_testigo1=tCat_PadronSaneamiento.domicilio_testigo1
			  ,nombre_testigo2=tCat_PadronSaneamiento.nombre_testigo2
			  ,identificacion_testigo2=tCat_PadronSaneamiento.identificacion_testigo2
			  ,domicilio_testigo2=tCat_PadronSaneamiento.domicilio_testigo2
			  ,observaciones_visitado=tCat_PadronSaneamiento.observaciones_visitado
			  ,observaciones_visitante=tCat_PadronSaneamiento.observaciones_visitante
			  ,realizo_visita=tCat_PadronSaneamiento.realizo_visita 
			  ,num_oficio=tCat_PadronSaneamiento.num_oficio
			  ,fecha_oficio=tCat_PadronSaneamiento.fecha_oficio 
			  ,identif_rep=tCat_PadronSaneamiento.identif_rep
			  ,observa_drenaje=tCat_PadronSaneamiento.observa_drenaje
			
			FROM @tCat_PadronSaneamiento AS tCat_PadronSaneamiento
			INNER JOIN Saneamiento.Cat_PadronSaneamiento ON Cat_PadronSaneamiento.id_padron = tCat_PadronSaneamiento.id_padron
			WHERE tCat_PadronSaneamiento.id_padron>0 AND ISNULL(tCat_PadronSaneamiento.isRowDeleted,0)=0 AND ISNULL(tCat_PadronSaneamiento.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO UPDATE Saneamiento.Cat_PadronSaneamiento' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		--!-- INSERT INTO
		BEGIN TRY
			INSERT INTO Saneamiento.Cat_PadronSaneamiento (
			 --id_saneamiento ,
			   id_padron
			  ,registro
			  ,permiso_year
			  ,descarga
			  ,de
			  ,fecha_descarga
			  ,solicitud_nueva
			  ,solicitud_regularizacion
			  ,permiso_anterior_sarh
			  ,permiso_anterior_sedue
			  ,permiso_anterior_otro
			  ,num_reg_anterior
			  ,fecha_reg_anterior
			  ,num_expediente
			  ,fecha_recepcion
			  ,id_cuenta
			  ,tipo_persona
			  ,RFC
			  ,razon_social_solicitante
			  ,calle
			  ,entre_calle
			  ,y_calle
			  ,num_exterior
			  ,num_interior
			  ,colonia
			  ,codigo_postal
			  ,estado
			  ,municipio
			  ,localidad
			  ,telefono
			  ,e_mail
			  ,nombre_rep_legal
			  ,calle_rep
			  ,entre_calle_rep
			  ,y_calle_rep
			  ,num_exterior_rep
			  ,num_interior_rep
			  ,colonia_rep
			  ,codigo_postal_rep
			  ,telefono_rep
			  ,cargo_que_tiene
			  ,hrs_laborales_diarias
			  ,horario_diario
			  ,num_dias_semanales
			  ,meses_al_year
			  ,num_empleados
			  ,num_obreros
			  ,permiso_inst_opera_empresa
			  ,lic_sanitaria_municipal
			  ,fecha_lic_san
			  ,lic_funcion_municipal
			  ,fecha_lic_func_mun
			  ,lic_funcion_federal
			  ,fecha_lic_fencion_fed
			  ,otros
			  ,fecha_otros
			  ,giro
			  ,agua_potable
			  ,a_potable_m3Dia
			  ,a_potable_m3Mes
			  ,agua_cruda
			  ,a_cruda_m3Dia
			  ,a_cruda_m3Mes
			  ,agua_por_pipas
			  ,a_pipas_m3Dia
			  ,a_pipas_m3Mes
			  ,agua_residual
			  ,a_residual_m3Dia
			  ,a_residual_m3Mes
			  ,otra_fuente
			  ,otra_m3Dia
			  ,otra_m3Mes
			  ,proceso_indstrial
			  ,industrial_m3xDia
			  ,sanitario
			  ,sanitario_m3xDia
			  ,lavado_automotriz
			  ,lavado_m3xDia
			  ,calderas
			  ,calderas_m3xDia
			  ,enfriamiento
			  ,enfriamiento_m3xDia
			  ,riego_jardines
			  ,jardines_m3xDia
			  ,regaderas
			  ,regaderas_m3xDia
			  ,otros_usos
			  ,especifique
			  ,otros_m3xDia
			  ,total_gastos
			  ,ciclos_concentracion_en_enfriamiento
			  ,tiene_titulo_para_aprovechar_aguas_nac
			  ,num_titulo_asignacion
			  ,fecha_titulo_asignacion
			  ,num_titulo_concesion
			  ,fecha_titulo_concesion
			  ,num_permiso
			  ,fecha_permiso
			  ,num_comprobante_conexion_sma_agua_mun
			  ,fecha_comprobante_conexion
			  ,otro_comprobante
			  ,fecha_otro_comprobante
			  ,tiene_medidor_gasto
			  ,funciona
			  ,causa
			  ,tipo_medidor
			  ,num_medidor
			  ,tratamiento_agua_antes_usarse
			  ,descripcion
			  ,razon_del_tratamiento
			  ,tiene_sma_suavicion_agua
			  ,frecuencia_regeneracion_suavizador_dia
			  ,frecuencia_regeneracion_suavizador_sem
			  ,frecuencia_regeneracion_suavizador_mes
			  ,volumen_agua_utilizada_regeneracion
			  ,volumen_agua_utilizada_lavados
			  ,num_descargas_aguas_industriales
			  ,origen_descargas
			  ,num_descargas
			  ,num_total_descargas
			  ,alcantarillado_industrial
			  ,alcantarillado_pluvial
			  ,alcantarillado_sanitario
			  ,alcantarillado_combinacion_de_dos
			  ,alcantarillado_combinacion_de_tres
			  ,red_mun_drenaje
			  ,fosa_septica
			  ,colector_principal
			  ,otro_receptor
			  ,especificar_sitio
			  ,tiene_estructura_adecuada
			  ,razones_tecnicas
			  ,volumen_trimestral_descarga
			  ,gasto_minimo_descargado
			  ,gasto_medio_descargado
			  ,gasto_maximo_descargado
			  ,horas_descarga
			  ,dias_descarga
			  ,meses_descarga
			  ,descripcion_tratamiento_agua_antes_vertido_drenaje
			  ,medidor_para_aguas_residuales
			  ,funciona_medidor
			  ,otras_substancias_enel_agua_residual
			  ,nombre_establecimiento
			  ,nombre_testigo1
			  ,identificacion_testigo1
			  ,domicilio_testigo1
			  ,nombre_testigo2
			  ,identificacion_testigo2
			  ,domicilio_testigo2
			  ,observaciones_visitado
			  ,observaciones_visitante
			  ,realizo_visita
			  ,num_oficio
			  ,fecha_oficio
			  ,identif_rep
			  ,observa_drenaje)
	
			SELECT 
			 --id_saneamiento = @Siguiente_ID,
			   id_padron
			  ,registro
			  ,permiso_year
			  ,descarga
			  ,de
			  ,fecha_descarga
			  ,solicitud_nueva
			  ,solicitud_regularizacion
			  ,permiso_anterior_sarh
			  ,permiso_anterior_sedue
			  ,permiso_anterior_otro
			  ,num_reg_anterior
			  ,fecha_reg_anterior
			  ,num_expediente
			  ,fecha_recepcion
			  ,id_cuenta
			  ,tipo_persona
			  ,RFC
			  ,razon_social_solicitante
			  ,calle
			  ,entre_calle
			  ,y_calle
			  ,num_exterior
			  ,num_interior
			  ,colonia
			  ,codigo_postal
			  ,estado
			  ,municipio
			  ,localidad
			  ,telefono
			  ,e_mail
			  ,nombre_rep_legal
			  ,calle_rep
			  ,entre_calle_rep
			  ,y_calle_rep
			  ,num_exterior_rep
			  ,num_interior_rep
			  ,colonia_rep
			  ,codigo_postal_rep
			  ,telefono_rep
			  ,cargo_que_tiene
			  ,hrs_laborales_diarias
			  ,horario_diario
			  ,num_dias_semanales
			  ,meses_al_year
			  ,num_empleados
			  ,num_obreros
			  ,permiso_inst_opera_empresa
			  ,lic_sanitaria_municipal
			  ,fecha_lic_san
			  ,lic_funcion_municipal
			  ,fecha_lic_func_mun
			  ,lic_funcion_federal
			  ,fecha_lic_fencion_fed
			  ,otros
			  ,fecha_otros
			  ,giro
			  ,agua_potable
			  ,a_potable_m3Dia
			  ,a_potable_m3Mes
			  ,agua_cruda
			  ,a_cruda_m3Dia
			  ,a_cruda_m3Mes
			  ,agua_por_pipas
			  ,a_pipas_m3Dia
			  ,a_pipas_m3Mes
			  ,agua_residual
			  ,a_residual_m3Dia
			  ,a_residual_m3Mes
			  ,otra_fuente
			  ,otra_m3Dia
			  ,otra_m3Mes
			  ,proceso_indstrial
			  ,industrial_m3xDia
			  ,sanitario
			  ,sanitario_m3xDia
			  ,lavado_automotriz
			  ,lavado_m3xDia
			  ,calderas
			  ,calderas_m3xDia
			  ,enfriamiento
			  ,enfriamiento_m3xDia
			  ,riego_jardines
			  ,jardines_m3xDia
			  ,regaderas
			  ,regaderas_m3xDia
			  ,otros_usos
			  ,especifique
			  ,otros_m3xDia
			  ,total_gastos
			  ,ciclos_concentracion_en_enfriamiento
			  ,tiene_titulo_para_aprovechar_aguas_nac
			  ,num_titulo_asignacion
			  ,fecha_titulo_asignacion
			  ,num_titulo_concesion
			  ,fecha_titulo_concesion
			  ,num_permiso
			  ,fecha_permiso
			  ,num_comprobante_conexion_sma_agua_mun
			  ,fecha_comprobante_conexion
			  ,otro_comprobante
			  ,fecha_otro_comprobante
			  ,tiene_medidor_gasto
			  ,funciona
			  ,causa
			  ,tipo_medidor
			  ,num_medidor
			  ,tratamiento_agua_antes_usarse
			  ,descripcion
			  ,razon_del_tratamiento
			  ,tiene_sma_suavicion_agua
			  ,frecuencia_regeneracion_suavizador_dia
			  ,frecuencia_regeneracion_suavizador_sem
			  ,frecuencia_regeneracion_suavizador_mes
			  ,volumen_agua_utilizada_regeneracion
			  ,volumen_agua_utilizada_lavados
			  ,num_descargas_aguas_industriales
			  ,origen_descargas
			  ,num_descargas
			  ,num_total_descargas
			  ,alcantarillado_industrial
			  ,alcantarillado_pluvial
			  ,alcantarillado_sanitario
			  ,alcantarillado_combinacion_de_dos
			  ,alcantarillado_combinacion_de_tres
			  ,red_mun_drenaje
			  ,fosa_septica
			  ,colector_principal
			  ,otro_receptor
			  ,especificar_sitio
			  ,tiene_estructura_adecuada
			  ,razones_tecnicas
			  ,volumen_trimestral_descarga
			  ,gasto_minimo_descargado
			  ,gasto_medio_descargado
			  ,gasto_maximo_descargado
			  ,horas_descarga
			  ,dias_descarga
			  ,meses_descarga
			  ,descripcion_tratamiento_agua_antes_vertido_drenaje
			  ,medidor_para_aguas_residuales
			  ,funciona_medidor
			  ,otras_substancias_enel_agua_residual
			  ,nombre_establecimiento
			  ,nombre_testigo1
			  ,identificacion_testigo1
			  ,domicilio_testigo1
			  ,nombre_testigo2
			  ,identificacion_testigo2
			  ,domicilio_testigo2
			  ,observaciones_visitado
			  ,observaciones_visitante
			  ,realizo_visita
			  ,num_oficio
			  ,fecha_oficio
			  ,identif_rep
			  ,observa_drenaje
      
			FROM @tCat_PadronSaneamiento AS tCat_PadronSaneamiento
			WHERE tCat_PadronSaneamiento.isRowNew=1 AND ISNULL(tCat_PadronSaneamiento.isRowDeleted,0)=0
			SET @Siguiente_ID = IDENT_CURRENT('SANEAMIENTO.Cat_PadronSaneamiento')
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO INSERT INTO Saneamiento.Cat_PadronSaneamiento ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		
		--!-- DELETE 
		BEGIN TRY
			DELETE FROM Saneamiento.Opr_ActProductivas 
			FROM @tOpr_ActProductivas AS tOpr_ActProductivas
			INNER JOIN Saneamiento.Opr_ActProductivas ON Opr_ActProductivas.id_actividad = tOpr_ActProductivas.id_actividad
			WHERE tOpr_ActProductivas.id_actividad>0 AND tOpr_ActProductivas.isRowDeleted=1 AND ISNULL(tOpr_ActProductivas.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER DELETE FROM Saneamiento.Opr_ActProductivas ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		BEGIN TRY
			DELETE FROM Saneamiento.Opr_DetElementos
			FROM @tOpr_DetElementos AS tOpr_DetElementos
			INNER JOIN Saneamiento.Opr_DetElementos ON Opr_DetElementos.id_detElemento = tOpr_DetElementos.id_detElemento
			WHERE tOpr_DetElementos.id_detElemento >0 AND tOpr_DetElementos.isRowDeleted=1 AND ISNULL(tOpr_DetElementos.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER DELETE FROM Saneamiento.Opr_DetElementos ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH

		BEGIN TRY
			DELETE FROM Saneamiento.Opr_DetParametros 
			FROM @tOpr_DetParametros AS tOpr_DetParametros
			INNER JOIN Saneamiento.Opr_DetParametros ON Opr_DetParametros.id_detParametro = tOpr_DetParametros.id_detParametro
			WHERE tOpr_DetParametros.id_detParametro>0 AND tOpr_DetParametros.isRowDeleted=1 AND ISNULL(tOpr_DetParametros.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER DELETE FROM Saneamiento.Opr_DetParametros ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH

		--!-- UPDATE 
		BEGIN TRY
			UPDATE Saneamiento.Opr_ActProductivas SET
				 id_saneamiento  = tOpr_ActProductivas.id_saneamiento
			   --id_actividad 
				,nombre_comercial=tOpr_ActProductivas.nombre_comercial
				,nombre_quimico=tOpr_ActProductivas.nombre_quimico
				,produccion_mensual=tOpr_ActProductivas.produccion_mensual
				,proveedor=tOpr_ActProductivas.proveedor
				,tipo_almacenamiento=tOpr_ActProductivas.tipo_almacenamiento
				,clave_crebit=tOpr_ActProductivas.clave_crebit
				,id_tipoAct=tOpr_ActProductivas.id_tipoAct
			FROM @tOpr_ActProductivas AS tOpr_ActProductivas
			INNER JOIN Saneamiento.Opr_ActProductivas ON Opr_ActProductivas.id_actividad = tOpr_ActProductivas.id_actividad
			WHERE tOpr_ActProductivas.id_actividad>0 AND isnull(tOpr_ActProductivas.isRowDeleted,0)=0 AND ISNULL(tOpr_ActProductivas.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER UPDATE Saneamiento.Opr_ActProductivas ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH

		BEGIN TRY
			UPDATE Saneamiento.Opr_DetElementos SET
				 id_saneamiento  = tOpr_DetElementos.id_saneamiento,
			   --id_detElemento=tOPr_DetElementos.id_detElemento
				 id_elemento=tOpr_DetElementos.id_elemento
				,concentracion=tOpr_DetElementos.concentracion
				,unidad=tOpr_DetElementos.unidad
			FROM @tOpr_DetElementos AS tOpr_DetElementos
			INNER JOIN Saneamiento.Opr_DetElementos ON Opr_DetElementos.id_detElemento = tOpr_DetElementos.id_detElemento
			WHERE tOpr_DetElementos.id_detElemento>0 AND isnull(tOpr_DetElementos.isRowDeleted,0)=0 AND ISNULL(tOpr_DetElementos.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER UPDATE Saneamiento.Opr_DetElementos ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH

		BEGIN TRY
			UPDATE Saneamiento.Opr_DetParametros SET
				 id_saneamiento  = tOpr_DetParametros.id_saneamiento,
			   --id_detParametro =Opr_DetParametros.id_detParametro
				 id_parametro =tOpr_DetParametros.id_parametro
				,concentracion=tOpr_DetParametros.concentracion
				,unidad=tOpr_DetParametros.unidad
			FROM @tOpr_DetParametros AS tOpr_DetParametros
			INNER JOIN Saneamiento.Opr_DetParametros ON Opr_DetParametros.id_detParametro = tOpr_DetParametros.id_detParametro
			WHERE tOpr_DetParametros.id_detParametro>0 AND isnull(tOpr_DetParametros.isRowDeleted,0)=0 AND ISNULL(tOpr_DetParametros.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER UPDATE Saneamiento.Opr_DetParametros ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH

		--!-- INSERT INTO 
		BEGIN TRY
			INSERT INTO Saneamiento.Opr_ActProductivas (
				 id_saneamiento 
			  --,id_actividad 
				,nombre_comercial
				,nombre_quimico
				,produccion_mensual
				,proveedor
				,tipo_almacenamiento
				,clave_crebit
				,id_tipoAct)
			SELECT  case when id_saneamiento=0 then 
				@Siguiente_ID
				else
				id_saneamiento end
				,nombre_comercial
				,nombre_quimico
				,produccion_mensual
				,proveedor
				,tipo_almacenamiento
				,clave_crebit
				,id_tipoAct
				
			FROM @tOpr_ActProductivas AS tOpr_ActProductivas
			WHERE isnull(tOpr_ActProductivas.isRowNew,0)=1 AND ISNULL(tOpr_ActProductivas.isRowDeleted,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER INSERT INTO Saneamiento.Opr_ActProductivas ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		
			BEGIN TRY
			INSERT INTO Saneamiento.Opr_DetElementos(
				 id_saneamiento 
			  --,id_actividad
				,id_elemento
				,concentracion
				,unidad
				)
			SELECT  case when id_saneamiento=0 then 
				@Siguiente_ID
				else
				 id_saneamiento end
				,id_elemento
				,concentracion
				,unidad
				
			FROM @tOpr_DetElementos AS tOpr_DetElementos
			WHERE isnull(tOpr_DetElementos.isRowNew,0)=1 AND ISNULL(tOpr_DetElementos.isRowDeleted,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER INSERT INTO Saneamiento.Opr_DetElementos ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
				BEGIN TRY
			INSERT INTO Saneamiento.Opr_DetParametros (
				 id_saneamiento 
				,id_parametro 
				,concentracion
				,unidad
				)
			SELECT case when id_saneamiento =0 then 
				@Siguiente_ID
				else
				 id_saneamiento end
				,id_parametro
				,concentracion
				,unidad
				
			FROM @tOpr_DetParametros AS tOpr_DetParametros
			WHERE isnull(tOpr_DetParametros.isRowNew,0)=1 AND ISNULL(tOpr_DetParametros.isRowDeleted,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER INSERT INTO Saneamiento.Opr_DetParametros ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		
		INSERT INTO @tTransactLog SELECT @cAlias, @cAccion + ' CON EXITO' ,ERROR_NUMBER(), ERROR_MESSAGE()
		SELECT *, @Siguiente_ID AS idValue FROM @tTransactLog AS TransactLog
		--select * from Saneamiento.Cat_PadronSaneamiento
		--select * from Saneamiento.Opr_ActProductivas
		--select * from @tCat_PadronSaneamiento
		--select * from @tOpr_ActProductivas
	END --Fin de global.sys_detperfiles
		
	IF (@cAlias = 'Opr_Analisis') BEGIN		-- Agregar
		EXEC sp_xml_preparedocument @nXmlDoc OUTPUT, @xmlTables
		DECLARE @tOpr_Analisis TABLE( ID_RECNO NUMERIC(10) IDENTITY(1,1)
		,isRowNew BIT NULL,isRowDeleted BIT NULL,
		[id_orden] [varchar](20) NOT NULL,
		[id_saneamiento] [numeric](10, 0) NULL,
		[id_padron] [int] NOT NULL,
		[id_cuenta] [int] NOT NULL,
		[id_analisis] [int] NOT NULL,
		[fecha_genero] [datetime] NULL,
		[id_genero] [varchar](50) NOT NULL,
		[id_imprimio] [varchar](50) NULL,
		[fecha_imprimio] [datetime] NULL,
		[id_captura] [varchar](50) NULL,
		[fecha_captura] [datetime] NULL,
		[observacion_a] [varchar](300) NULL,
		[observacion_b] [varchar](300) NULL,
		[observacion_c] [varchar](300) NULL,
		[ejecutada] [varchar](300) NULL,
		[id_estatus] [numeric](10, 0) NULL,
		[id_realizo] [varchar](5) NULL,
		[fecha_inicio] [datetime] NULL,
		[fecha_fin] [datetime] NULL,
		[id_cancelo] [varchar](5) NULL,
		[fecha_cancelo] [datetime] NULL,
		[es_paraFacturar] [bit] NULL,
		[descarga_mes] [decimal](10, 4) NULL,
		[id_laboratorio] [numeric](10, 0) NULL,
		[fecha_muestra] [datetime] NULL,
		[num_muestra] [varchar](20) NULL,
		[fecha_analisis] [datetime] NULL,
		[subtotal] [decimal](10, 4) NULL,
		[iva] [decimal](10, 4) NULL,
		[id_descarga] [numeric](10, 0) NULL
		)
		
	DECLARE @tOpr_DetAnalisis TABLE( ID_RECNO NUMERIC(10) IDENTITY(1,1)
		,isRowNew BIT NULL,isRowDeleted BIT NULL,
		[id_detAnalisis] [numeric](10, 0)  NULL,
		[id_orden] [varchar](20)  NULL,
		[id_parametro] [numeric](10, 0)  NULL,
		[valor_analisis] [decimal](12, 4)  NULL,
		[valor_norma] [decimal](12, 4) NULL,
		[excedentes] [decimal](12, 4) NULL,
		[indice_incumplimiento] [decimal](12, 4) NULL,
		[conver_kgM3] [decimal](12, 4) NULL,
		[tarifa_por_kg] [decimal](12, 2)  NULL,
		[subtotal] [decimal](12, 2) NULL
		)
		
		BEGIN TRY
		INSERT INTO @tOpr_Analisis (isRowNew 
		  ,isRowDeleted  
		  ,id_orden
		  ,id_saneamiento
		  ,id_padron
		  ,id_cuenta
		  ,id_analisis
		  ,fecha_genero
		  ,id_genero
		  ,id_imprimio
		  ,fecha_imprimio
		  ,id_captura
		  ,fecha_captura
		  ,observacion_a
		  ,observacion_b
		  ,observacion_c
		  ,ejecutada
		  ,id_estatus
		  ,id_realizo
		  ,fecha_inicio
		  ,fecha_fin
		  ,id_cancelo
		  ,fecha_cancelo
		  ,es_paraFacturar
		  ,descarga_mes
		  ,id_laboratorio
		  ,fecha_muestra
		  ,num_muestra
		  ,fecha_analisis,
		  subtotal,
		  iva,
		  id_descarga)
		  
		 SELECT isRowNew 
		  ,isRowDeleted  
		  ,id_orden
		  ,id_saneamiento
		  ,id_padron
		  ,id_cuenta
		  ,id_analisis
		  ,fecha_genero
		  ,id_genero
		  ,id_imprimio
		  ,fecha_imprimio
		  ,id_captura
		  ,fecha_captura
		  ,observacion_a
		  ,observacion_b
		  ,observacion_c
		  ,ejecutada
		  ,id_estatus
		  ,id_realizo
		  ,fecha_inicio
		  ,fecha_fin
		  ,id_cancelo
		  ,fecha_cancelo
		  ,es_paraFacturar
		  ,descarga_mes
		  ,id_laboratorio
		  ,fecha_muestra
		  ,num_muestra
		  ,fecha_analisis
		  ,subtotal,iva
		  , id_descarga
		  
			FROM OPENXML (@nXmlDoc, 'SANEAMIENTO/OPR_ANALISIS',2)
			WITH ( isRowNew BIT ,isRowDeleted BIT 
			   ,[id_orden] [varchar](20)  ,
				[id_saneamiento] [numeric](10, 0) ,
				[id_padron] [int]  ,
				[id_cuenta] [int]  ,
				[id_analisis] [int]  ,
				[fecha_genero] [datetime] ,
				[id_genero] [varchar](50)  ,
				[id_imprimio] [varchar](50) ,
				[fecha_imprimio] [datetime] ,
				[id_captura] [varchar](50) ,
				[fecha_captura] [datetime] ,
				[observacion_a] [varchar](300) ,
				[observacion_b] [varchar](300) ,
				[observacion_c] [varchar](300) ,
				[ejecutada] [varchar](300) ,
				[id_estatus] [numeric](10, 0) ,
				[id_realizo] [varchar](5) ,
				[fecha_inicio] [datetime] ,
				[fecha_fin] [datetime] ,
				[id_cancelo] [varchar](5) ,
				[fecha_cancelo] [datetime] ,
				[es_paraFacturar] [bit] ,
				[descarga_mes] [decimal](10, 4) ,
				[id_laboratorio] [numeric](10, 0) ,
				[fecha_muestra] [datetime] ,
				[num_muestra] [varchar](20) ,
				[fecha_analisis] [datetime] ,
				[subtotal] [decimal](10, 4) ,
				[iva] [decimal](10, 4),
				[id_descarga] [numeric](10, 0) 
						)
				END TRY
		
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO CARGAR EL xml' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		BEGIN TRY
			INSERT INTO @tOpr_DetAnalisis (isRowNew  
				  ,isRowDeleted 
				  ,id_detAnalisis
				  ,id_orden
				  ,id_parametro
				  ,valor_analisis
				  ,valor_norma
				  ,excedentes
				  ,indice_incumplimiento
				  ,conver_kgM3
				  ,tarifa_por_kg
				  ,subtotal
				  )	
				  	
			SELECT isRowNew  
				  ,isRowDeleted 
				  ,id_detAnalisis
				  ,id_orden
				  ,id_parametro
				  ,valor_analisis
				  ,valor_norma
				  ,excedentes
				  ,indice_incumplimiento
				  ,conver_kgM3
				  ,tarifa_por_kg
				  ,subtotal  
				  
			FROM OPENXML (@nXmlDoc, 'SANEAMIENTO/OPR_DETANALISIS',2)
			WITH ( isRowNew BIT ,isRowDeleted BIT ,
					[id_detAnalisis] [numeric](10, 0) ,
					[id_orden] [varchar](20),
					[id_parametro] [numeric](10, 0) ,
					[valor_analisis] [decimal](12, 4),
					[valor_norma] [decimal](12, 4) ,
					[excedentes] [decimal](12, 4) ,
					[indice_incumplimiento] [decimal](12, 4) ,
					[conver_kgM3] [decimal](12, 4) ,
					[tarifa_por_kg] [decimal](12, 2) ,
					[subtotal] [decimal](12, 2) 
					)
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO CARGAR EL xml' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		EXECUTE sp_xml_removedocument @nXmlDoc
	
		BEGIN TRANSACTION
		----------!-- DELETE 
		BEGIN TRY
			DELETE FROM SANEAMIENTO.Opr_Analisis
			FROM @tOpr_Analisis AS tOpr_Analisis
			INNER JOIN Saneamiento.Opr_Analisis ON Opr_Analisis.id_orden = tOpr_Analisis.id_orden  
			WHERE tOpr_Analisis.id_orden != '' AND tOpr_Analisis.isRowDeleted=1 AND ISNULL(tOpr_Analisis.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER DELETE FROM Saneamiento.Opr_Analisis ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		
		--!-- UPDATE					
		BEGIN TRY
			UPDATE Saneamiento.Opr_Analisis SET
			   id_orden=tOpr_Analisis.id_orden
			  ,id_saneamiento=tOpr_Analisis.id_saneamiento
	   		  ,id_padron=tOpr_Analisis.id_padron
			  ,id_cuenta=tOpr_Analisis.id_cuenta
			  ,id_analisis=tOpr_Analisis.id_analisis
			  ,fecha_genero=tOpr_Analisis.fecha_genero
			  ,id_genero=tOpr_Analisis.id_genero
			  ,id_imprimio=tOpr_Analisis.id_imprimio
			  ,fecha_imprimio=tOpr_Analisis.fecha_imprimio
			  ,id_captura=tOpr_Analisis.id_captura
			  --,fecha_captura=tOpr_Analisis.fecha_captura
			  ,observacion_a=tOpr_Analisis.observacion_a
			  ,observacion_b=tOpr_Analisis.observacion_b
			  ,observacion_c=tOpr_Analisis.observacion_c
			  ,ejecutada=tOpr_Analisis.ejecutada
			  ,id_estatus=tOpr_Analisis.id_estatus
			  ,id_realizo=tOpr_Analisis.id_realizo
			  ,fecha_inicio=tOpr_Analisis.fecha_inicio
			  ,fecha_fin=tOpr_Analisis.fecha_fin
			  ,id_cancelo=tOpr_Analisis.id_cancelo
			  ,fecha_cancelo=tOpr_Analisis.fecha_cancelo
			  ,es_paraFacturar=tOpr_Analisis.es_paraFacturar
			  ,descarga_mes=tOpr_Analisis.descarga_mes
			  ,fecha_muestra=tOpr_Analisis.fecha_muestra 
			  ,fecha_analisis=tOpr_Analisis.fecha_analisis
			  ,id_laboratorio =tOpr_Analisis.id_laboratorio 
			  ,num_muestra =tOpr_Analisis.num_muestra 
			  ,subtotal=tOpr_Analisis.subtotal
			  ,iva= tOpr_Analisis.iva
			  ,id_descarga = tOpr_Analisis.id_descarga
			  
			FROM @tOpr_Analisis AS tOpr_Analisis
			INNER JOIN Saneamiento.Opr_Analisis ON Opr_Analisis.id_orden = tOpr_Analisis.id_orden 
			WHERE tOpr_Analisis.id_orden !='' AND ISNULL(tOpr_Analisis.isRowDeleted,0)=0 AND ISNULL(tOpr_Analisis.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO UPDATE Saneamiento.Opr_Analisis' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		
		
		--!-- INSERT INTO
		BEGIN TRY
			INSERT INTO Saneamiento.Opr_Analisis ( 
			   id_orden
			  ,id_saneamiento
			  ,id_padron
			  ,id_cuenta
			  ,id_analisis
			  ,fecha_genero
			  ,id_genero
			  ,id_imprimio
			  ,fecha_imprimio
			  ,id_captura
			  ,fecha_captura
			  ,observacion_a
			  ,observacion_b
			  ,observacion_c
			  ,ejecutada
			  ,id_estatus
			  ,id_realizo
			  ,fecha_inicio
			  ,fecha_fin
			  ,id_cancelo
			  ,fecha_cancelo
			  ,es_paraFacturar
			  ,descarga_mes
			  ,id_laboratorio
			  ,fecha_muestra
			  ,num_muestra
			  ,fecha_analisis
			  ,subtotal
			  ,iva
			  ,id_descarga)
				
			SELECT 
			  	   id_orden
				  ,id_saneamiento
				  ,id_padron
				  ,id_cuenta
				  ,id_analisis
				  ,fecha_genero
				  ,id_genero
				  ,id_imprimio
				  ,fecha_imprimio
				  ,id_captura
				  ,GETDATE()
				  ,observacion_a
				  ,observacion_b
				  ,observacion_c
				  ,ejecutada
				  ,id_estatus
				  ,id_realizo
				  ,fecha_inicio
				  ,fecha_fin
				  ,id_cancelo
				  ,fecha_cancelo
				  ,es_paraFacturar
				  ,descarga_mes
				  ,id_laboratorio
				  ,fecha_muestra
				  ,num_muestra
				  ,fecha_analisis
				  ,subtotal
				  ,iva
				  ,id_descarga
				  
			FROM @tOpr_Analisis AS tOpr_Analisis
			WHERE tOpr_Analisis.isRowNew=1 AND ISNULL(tOpr_Analisis.isRowDeleted,0)=0
			SET @Siguiente_ID = IDENT_CURRENT('SANEAMIENTO.Opr_Analisis')
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO INSERT INTO Saneamiento.Opr_Analisis ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH

		--!-- DELETE 
		BEGIN TRY
			DELETE FROM Saneamiento.Opr_DetAnalisis 
			FROM @tOpr_DetAnalisis AS tOpr_DetAnalisis
			INNER JOIN Saneamiento.Opr_DetAnalisis ON Opr_DetAnalisis.id_detAnalisis = tOpr_DetAnalisis.id_detAnalisis
			WHERE tOpr_DetAnalisis.id_detAnalisis>0 AND tOpr_DetAnalisis.isRowDeleted=1 AND ISNULL(tOpr_DetAnalisis.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER DELETE FROM Saneamiento.Opr_DetAnalisis ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH

		--!-- UPDATE 
		BEGIN TRY
			UPDATE Saneamiento.Opr_DetAnalisis SET
				 --id_detAnalisis=tOpr_DetAnalisis.id_detAnalisis,
				   id_orden=tOpr_DetAnalisis.id_orden
				  ,id_parametro=tOpr_DetAnalisis.id_parametro
				  ,valor_analisis=tOpr_DetAnalisis.valor_analisis
				  ,valor_norma=tOpr_DetAnalisis.valor_norma
				  ,excedentes=tOpr_DetAnalisis.excedentes
				  ,indice_incumplimiento=tOpr_DetAnalisis.indice_incumplimiento
				  ,conver_kgM3=tOpr_DetAnalisis.conver_kgM3
				  ,tarifa_por_kg=tOpr_DetAnalisis.tarifa_por_kg
				  ,subtotal=tOpr_DetAnalisis.subtotal	
			FROM @tOpr_DetAnalisis AS tOpr_DetAnalisis
			INNER JOIN Saneamiento.Opr_DetAnalisis ON Opr_DetAnalisis.id_detAnalisis = tOpr_DetAnalisis.id_detAnalisis
			WHERE tOpr_DetAnalisis.id_detAnalisis>0 AND isnull(tOpr_DetAnalisis.isRowDeleted,0)=0 AND ISNULL(tOpr_DetAnalisis.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER UPDATE Saneamiento.Opr_DetAnalisis ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH

		--!-- INSERT INTO 
		BEGIN TRY
			INSERT INTO Saneamiento.Opr_DetAnalisis (--id_detAnalisis,
					   id_orden ,	
					   id_parametro
					  ,valor_analisis
					  ,valor_norma
					  ,excedentes
					  ,indice_incumplimiento
					  ,conver_kgM3
					  ,tarifa_por_kg
					  ,subtotal
					  )		  
			SELECT --	id_detAnalisis =@Siguiente_ID,
					  id_orden,
					  id_parametro
					  ,valor_analisis
					  ,valor_norma
					  ,excedentes
					  ,indice_incumplimiento
					  ,conver_kgM3
					  ,tarifa_por_kg
					  ,subtotal
					 
		FROM @tOpr_DetAnalisis AS tOpr_DetAnalisis
		WHERE isnull(tOpr_DetAnalisis.isRowNew,0)=1 AND ISNULL(tOpr_DetAnalisis.isRowDeleted,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER INSERT INTO Saneamiento.Opr_DetAnalisis ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		INSERT INTO @tTransactLog SELECT @cAlias, @cAccion + ' CON EXITO' ,ERROR_NUMBER(), ERROR_MESSAGE()
		SELECT *, @Siguiente_ID AS idValue FROM @tTransactLog AS TransactLog
		--select * from Saneamiento.Opr_Analisis
		--select * from Saneamiento.Opr_DetAnalisis
		--select * from @tOpr_Analisis
		--select * from @tOpr_DetAnalisis
	END --Fin de global.sys_detperfiles
	
	
	
	IF (@cAlias = 'Cat_conceptos') BEGIN		-- Agregar
		EXEC sp_xml_preparedocument @nXmlDoc OUTPUT, @xmlTables
		DECLARE @tCat_Conceptos TABLE( ID_RECNO NUMERIC(10) IDENTITY(1,1)
		,isRowNew BIT NULL,isRowDeleted BIT NULL,
		[id_concepto] [numeric](10, 0),
		[descripcion] [varchar](50) NOT NULL,
		[importe] [decimal](14, 2) NOT NULL,
		[tasa_iva] [decimal](6, 2)  NULL,
		[id_tipoconcepto] [numeric](10, 0) NOT NULL,
		[clave_fija] [bit]  NULL,
		[credito] [bit]  NULL,
		[mostrar] [bit]  NULL,
		[id_systema] [numeric](3, 0) NOT NULL,
		[id_estatus] [numeric](10, 0) NOT NULL,
		[inactivo] [bit]  NULL,
		[clave] [varchar](5) NULL,
		[clave_rezago] [varchar](5) NULL,
		[tipo_iva] [varchar](10) NULL,
		[ordinal] [numeric](10, 0) NULL,
		[rez_ordinal] [numeric](10, 0) NULL,
		[incluir] [bit] NULL,
		[id_categoria] [numeric](10, 0) NULL,
		[id_concepto_new] [numeric](10, 0) NULL
		)
		
	DECLARE @tCfg_Conceptos TABLE( ID_RECNO NUMERIC(10) IDENTITY(1,1)
		,isRowNew BIT NULL,isRowDeleted BIT NULL,
		[id_cfgconcepto] [numeric](10, 0) NULL,
		[id_concepto] [numeric](10, 0) NULL,
		[id_tarifa] [numeric](10, 0) NULL,
		[importe] [decimal](14, 2) NOT NULL
		)
		
		BEGIN TRY
		INSERT INTO @tCat_Conceptos(isRowNew 
		  ,isRowDeleted  
		  ,id_concepto
		  ,descripcion
		  ,importe
		  ,tasa_iva
		  ,id_tipoconcepto
		  ,clave_fija
		  ,credito
		  ,mostrar
		  ,id_systema
		  ,id_estatus
		  ,inactivo
		  ,clave
		  ,clave_rezago
		  ,tipo_iva
		  ,ordinal
		  ,rez_ordinal
		  ,incluir
		  ,id_categoria
		  ,id_concepto_new)
		  
		 SELECT isRowNew 
		  ,isRowDeleted  
		  ,id_concepto
		  ,descripcion
		  ,importe
		  ,tasa_iva
		  ,id_tipoconcepto
		  ,clave_fija
		  ,credito
		  ,mostrar
		  ,id_systema
		  ,id_estatus
		  ,inactivo
		  ,clave
		  ,clave_rezago
		  ,tipo_iva
		  ,ordinal
		  ,rez_ordinal
		  ,incluir
		  ,id_categoria
		  ,id_concepto_new
		  
			FROM OPENXML (@nXmlDoc, 'PADRON/CAT_CONCEPTOS',2)
			WITH ( isRowNew BIT ,isRowDeleted BIT 
					,[id_concepto] [numeric](10, 0) ,
					[descripcion] [varchar](50)  ,
					[importe] [decimal](14, 2)  ,
					[tasa_iva] [decimal](6, 2)  ,
					[id_tipoconcepto] [numeric](10, 0)  ,
					[clave_fija] [bit]  ,
					[credito] [bit]  ,
					[mostrar] [bit]  ,
					[id_systema] [numeric](3, 0)  ,
					[id_estatus] [numeric](10, 0)  ,
					[inactivo] [bit]  ,
					[clave] [varchar](5) ,
					[clave_rezago] [varchar](5) ,
					[tipo_iva] [varchar](10) ,
					[ordinal] [numeric](10, 0) ,
					[rez_ordinal] [numeric](10, 0) ,
					[incluir] [bit] ,
					[id_categoria] [numeric](10, 0) ,
					[id_concepto_new] [numeric](10, 0) 
					)		
		END TRY
		
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO CARGAR EL xml' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		BEGIN TRY
			INSERT INTO @tCfg_Conceptos (isRowNew  
				  ,isRowDeleted 
				  ,id_cfgconcepto
				  ,id_concepto
				  ,id_tarifa
				  ,importe
				  )		
			SELECT isRowNew  
				  ,isRowDeleted 
				  ,id_cfgconcepto
				  ,id_concepto
				  ,id_tarifa
				  ,importe
				  
			FROM OPENXML (@nXmlDoc, 'PADRON/CFG_CONCEPTOS',2)
			WITH ( isRowNew BIT ,isRowDeleted BIT ,
					[id_cfgconcepto] [numeric](10, 0) ,
					[id_concepto] [numeric](10, 0) ,
					[id_tarifa] [numeric](10, 0) ,
					[importe] [decimal](14, 2)   
					)
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO CARGAR EL xml' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		EXECUTE sp_xml_removedocument @nXmlDoc
	
		BEGIN TRANSACTION
		----------!-- DELETE 
			BEGIN TRY
			DELETE FROM Padron .Cat_Conceptos 
			FROM @tCat_Conceptos AS tCat_Conceptos
			INNER JOIN  Padron .Cat_Conceptos  ON Cat_Conceptos.id_concepto  = tCat_Conceptos.id_concepto  
			WHERE tCat_Conceptos.id_concepto != 0 AND tCat_Conceptos.isRowDeleted=1 AND ISNULL(tCat_Conceptos.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER DELETE FROM Padron.Cat_Conceptos ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		
		--!-- UPDATE					
		BEGIN TRY
			UPDATE Padron .Cat_Conceptos SET
		    --id_concepto=Cat_Conceptos.id_concepto,
		   	   descripcion=tCat_Conceptos.descripcion
			  ,importe=tCat_Conceptos.importe
			  ,tasa_iva=tCat_Conceptos.tasa_iva
			  ,id_tipoconcepto=tCat_Conceptos.id_tipoconcepto
			  ,clave_fija=tCat_Conceptos.clave_fija
			  ,credito=tCat_Conceptos.credito
			  ,mostrar=tCat_Conceptos.mostrar
			  ,id_systema=tCat_Conceptos.id_systema
			  ,id_estatus=tCat_Conceptos.id_estatus
			
			  ,clave=tCat_Conceptos.clave
			  ,clave_rezago=tCat_Conceptos.clave_rezago
			  ,tipo_iva=tCat_Conceptos.tipo_iva
			  ,ordinal=tCat_Conceptos.ordinal
			  ,rez_ordinal=tCat_Conceptos.rez_ordinal
			  ,incluir=tCat_Conceptos.incluir
			  ,id_categoria=tCat_Conceptos.id_categoria
			  ,id_concepto_new=tCat_Conceptos.id_concepto_new
			  
			FROM @tCat_Conceptos AS tCat_Conceptos
			INNER JOIN Padron .Cat_Conceptos ON Cat_Conceptos.id_concepto  = tCat_Conceptos.id_concepto 
			WHERE  tCat_Conceptos.id_concepto !=0 AND ISNULL(tCat_Conceptos.isRowDeleted,0)=0 AND ISNULL(tCat_Conceptos.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO UPDATE Padron .Cat_Conceptos' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		
		
		--!-- INSERT INTO
		BEGIN TRY
			INSERT INTO padron.Cat_Conceptos( 
		 --id_concepto
		   descripcion
		  ,importe
		  ,tasa_iva
		  ,id_tipoconcepto
		  ,clave_fija
		  ,credito
		  ,mostrar
		  ,id_systema
		  ,id_estatus
		  ,clave
		  ,clave_rezago
		  ,tipo_iva
		  ,ordinal
		  ,rez_ordinal
		  ,incluir
		  ,id_categoria
		  ,id_concepto_new)
				
			SELECT 
			--id_concepto
		   descripcion
		  ,importe
		  ,tasa_iva
		  ,id_tipoconcepto
		  ,clave_fija
		  ,credito
		  ,mostrar
		  ,id_systema
		  ,id_estatus
		  ,clave
		  ,clave_rezago
		  ,tipo_iva
		  ,ordinal
		  ,rez_ordinal
		  ,incluir
		  ,id_categoria
		  ,id_concepto_new
		  
			FROM @tCat_Conceptos AS tCat_Conceptos
			WHERE tCat_Conceptos.isRowNew=1 AND ISNULL(tCat_Conceptos.isRowDeleted,0)=0
			SET @Siguiente_ID = IDENT_CURRENT('padron.Cat_Conceptos')
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO INSERT INTO Padron .Cat_Conceptos ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH

		--!-- DELETE 
		BEGIN TRY
			DELETE FROM Padron .Cfg_Conceptos  
			FROM @tCfg_Conceptos  AS tCfg_Conceptos 
			INNER JOIN Padron .Cfg_Conceptos ON Cfg_Conceptos.id_concepto = tCfg_Conceptos.id_concepto
			WHERE tCfg_Conceptos.id_concepto>0 AND tCfg_Conceptos.isRowDeleted=1 AND ISNULL(tCfg_Conceptos.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER DELETE FROM Padron .Cfg_Conceptos ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH

		--!-- UPDATE 
		BEGIN TRY
			UPDATE Padron .Cfg_Conceptos   SET
				   id_concepto=tCfg_Conceptos.id_concepto
				  ,id_tarifa=tCfg_Conceptos.id_tarifa
				  ,importe=tCfg_Conceptos.importe
				  
			FROM @tCfg_Conceptos  AS tCfg_Conceptos 
			INNER JOIN Padron .Cfg_Conceptos  ON Cfg_Conceptos.id_concepto  = tCfg_Conceptos .id_concepto
			WHERE tCfg_Conceptos .id_concepto>0 AND isnull(tCfg_Conceptos.isRowDeleted,0)=0 AND ISNULL(tCfg_Conceptos.isRowNew,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER UPDATE Padron .Cfg_Conceptos ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH

		--!-- INSERT INTO 
		BEGIN TRY
			INSERT INTO Padron.Cfg_Conceptos(
					  id_concepto
					  ,id_tarifa 
					  ,importe
					  )	
				  	  
			SELECT 
					 case when id_concepto=0 then 
					 @Siguiente_ID
					 else
					 id_concepto end
					 ,id_tarifa 
					 ,importe
					 
		FROM @tCfg_Conceptos AS tCfg_Conceptos
		WHERE isnull(tCfg_Conceptos.isRowNew,0)=1 AND ISNULL(tCfg_Conceptos.isRowDeleted,0)=0
		END TRY
		BEGIN CATCH
			INSERT INTO @tTransactLog SELECT @cAlias, 'NO PUDO HACER INSERT INTO Padron.Cfg_Conceptos ' ,ERROR_NUMBER(), ERROR_MESSAGE()
			GOTO OnError
		END CATCH
		INSERT INTO @tTransactLog SELECT @cAlias, @cAccion + ' CON EXITO' ,ERROR_NUMBER(), ERROR_MESSAGE()
		SELECT *, @Siguiente_ID AS idValue FROM @tTransactLog AS TransactLog
		--select * from Saneamiento.Opr_Analisis
		--select * from Saneamiento.Opr_DetAnalisis
		--select * from @tOpr_Analisis
		--select * from @tOpr_DetAnalisis
	END --Fin de global.sys_detperfiles
		
		
	