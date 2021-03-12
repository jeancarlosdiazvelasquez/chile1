<?php
//header("Content-type: application/vnd.ms-word");
//header("Content-Disposition: attachment;Filename=Invoice-asd.doc");
$numLiquidacion = $_REQUEST['Serial'];

?>

<?php require_once('conex.php');

$sql = "SELECT * FROM liquidacion_rvarios where id='".$numLiquidacion."'";

// Consultas de tablas de la BD

//    TABLA LIQUIDACION
 if ($resultado = $mysqli->query("SELECT * from liquidacion_rvarios where id='".$numLiquidacion."'")){

//$row = mysqli_fetch_row($resultado);
  $row = $resultado->fetch_assoc();

  $usuario = $row["usuario"];
  $asignado = $row["1_asignado"];
  $dias_en_la_oficina = $row["2_dias_en_la_oficina"];
  $factura_n = $row["3_factura_n"];
  $valor = $row["4_valor"];
  $pagado = $row["5_pagado"];
  $fecha = $row["6_fecha"];
  $ingreso_cia = $row["7_ingreso_cia"];
  $informe_liquidacion = $row["8_informe_liquidacion"];
  $ademdium = $row["9_ademdium"];
  $n_liquidacion = $row["10_n_liquidacion"];
  $ramo = $row["ramo"];
  $otro = $row["otro"];
  $vehiculos_motorizados = $row["11_vehiculos_motorizados"];
  $fecha_informe_estado_3_parcial = $row["12_fecha_informe_estado_3_parcial"];
  $fecha_informe_estado_4_final = $row["13_fecha_informe_estado_4_final"];
  $cobertura_afectada = $row["14_cobertura_afectada"];

  $detalle_cobertura = $row["detalle_cobertura"];

  $deducible = $row["15_deducible"];

  $perdida_bajo_deducible = $row["perdida_bajo_deducible"];

  $ejecutivo_asignado = $row["16_ejecutivo_asignado"];
  $email_ejecutivo = $row["17_email_ejecutivo"];
  $provision_estimada = $row["18_provision_estimada"];
  $uf = $row["19_uf"];
  $nombre_asegurador = $row["20_nombre_asegurador"];

  $sucursal = $row["21_sucursal"];
  $corredora = $row["22_corredora"];
  $fono2 = $row["23_fono2"];
  $email2 = $row["24_email2"];
  $n_siniestro = $row["25_n_siniestro"];
  $poliza = $row["26_poliza"];
  $endoso = $row["27_endoso"];
  $vigencia = $row["28_vigencia"];
  $fecha_desde = $row["29_fecha_desde"];
  $fecha_hasta = $row["30_fecha_hasta"];
  $nombre_asegurado = $row["31_nombre_asegurado"];
  $rut_asegurado = $row["32_rut_asegurado"];
  $direccion_asegurado = $row["33_direccion_asegurado"];
  $fono_asegurado = $row["34_fono_asegurado"];
  $email_asegurado = $row["35_email_asegurado"];
  $contratante_usuario = $row["36_contratante_usuario"];
  $rut_contratante = $row["37_rut_contratante"];
  $direccion_contratante = $row["38_direccion_contratante"];
  $fono_contratante = $row["39_fono_contratante"];
  $email_contratante = $row["40_email_contratante"];
  $materia_asegurada = $row["41_materia_asegurada"];
  $marca_materia_asegurada = $row["42_marca_materia_asegurada"];
  $modelo_materia_asegurada = $row["43_modelo_materia_asegurada"];
  $patente_materia_asegurada = $row["44_patente_materia_asegurada"];
  $ano_materia_asegurada = $row["45_ano_materia_asegurada"];
  $serie_motor_materia_asegurada = $row["46_serie_motor_materia_asegurada"];
  $chais_materia_asegurada = $row["47_chais_materia_asegurada"];
  $monto_uf_asegurado_materia_asegurada = $row["48_monto_uf_asegurado_materia_asegurada"];
  $valor_comercialuf_materia_asegurada = $row["49_valor_comercialuf_materia_asegurada"];
  $prorateo = $row["50_prorateo"];
  $cia_porcentaje = $row["51_cia_porcentaje"];
  $aseg_porcentaje = $row["52_aseg_porcentaje"];
  $lugar_del_siniestro = $row["53_lugar_del_siniestro"];
  $fecha_del_siniestro = $row["54_fecha_del_siniestro"];
  $fecha_de_denuncia_cia = $row["55_fecha_de_denuncia_cia"];
  $fecha_asignacion_liquidador = $row["56_fecha_asignacion_liquidador"];
  $conductor_consignado = $row["57_conductor_consignado"];
  $direccion_conductor = $row["58_direccion_conductor"];
  $licencia_n_antecedentes_general = $row["59_licencia_n_antecedentes_general"];
  $clase_antecedentes_general = $row["60_clase_antecedentes_general"];
  $vigencia_de_control = $row["61_vigencia_de_control"];
  $fecha_contacto_antecedentes_general = $row["62_fecha_contacto_antecedentes_general"];
  //$perona_contacto = $row["perona_contacto"];
  $hora_de_contacto = $row["63_hora_de_contacto"];
  $fecha_inspeccion = $row["64_fecha_inspeccion"];
  $fecha_recepcion_repuestos = $row["65_fecha_recepcion_repuestos"];
  $emisor_presupuestos = $row["66_emisor_presupuestos"];
  $fecha_cotizacion_repuesto = $row["67_fecha_cotizacion_repuesto"];
  $fecha_recepcion_cot_repuestos = $row["68_fecha_recepcion_cot_repuestos"];
  $fecha_orden_de_compra_repuestos = $row["69_fecha_orden_de_compra_repuestos"];
  $fecha_orden_de_trabajo_a_taller = $row["70_fecha_orden_de_trabajo_a_taller"];
  $tercer_afectado = $row["71_tercer_afectado"];
  $patente_tercer_afectado = $row["72_patente_tercer_afectado"];
  $email_terceros = $row["73_email_terceros"];
  $fono_terceros = $row["74_fono_terceros"];
  $fecha_inspeccion_terceros = $row["75_fecha_inspeccion_terceros"];
  $documentos_pendientes_para_definir = $row["76_documentos_pendientes_para_definir"];
  $select_documentos_pendiente_para_definir = $row["77_select_documentos_pendiente_para_definir"];
  $imagenes1 = $row["78_imagenes1"];
  $imagenes2 = $row["79_imagenes2"];
  $imagenes3 = $row["80_imagenes3"];
  $imagenes4 = $row["81_imagenes4"];
  $imagenes5 = $row["82_imagenes5"];
  //$imagen6 = $row["imagen6"];
  //$imagen7 = $row["imagen7"];
  //$imagen8 = $row["imagen8"];
  //$imagen9 = $row["imagen9"];
  //$imagen10 = $row["imagen10"];
  //$imagen11 = $row["imagen11"];
  //$imagen12 = $row["imagen12"];
  //$imagen13 = $row["imagen13"];
  //$imagen14 = $row["imagen14"];
  //$imagen15 = $row["imagen15"];
  //$texto1 = $row["texto1"];
  //$texto2 = $row["texto2"];
  //$texto3 = $row["texto3"];
  //$texto4 = $row["texto4"];
  //$texto5 = $row["texto5"];
  //$texto6 = $row["texto6"];
  //$texto7 = $row["texto7"];
  //$texto8 = $row["texto8"];
  //$texto9 = $row["texto9"];
  //$texto10 = $row["texto10"];
  //$texto11 = $row["texto11"];
  //$texto12 = $row["texto12"];
  //$texto13 = $row["texto13"];
  //$texto14 = $row["texto14"];
  //$texto15 = $row["texto15"];
  $descripcion_del_siniestro = $row["83_descripcion_del_siniestro"];
  $tipificacion_del_siniestro = $row["84_tipificacion_del_siniestro"];
  $select_constancia_parte = $row["85_select_constancia_parte"];
  $alcoholemia = $row["86_alcoholemia"];
  $garantia = $row["87_garantia"];
  $inspeccion_y_antecedentes = $row["88_inspeccion_y_antecedentes"];
  $la_materia_inspeccionada = $row["89_la_materia_inspeccionada"];
  $causa_determinada_siniestro = $row["90_causa_determinada_siniestro"];
  $recomendacion = $row["recomendacion"];
  $sin_cobertura = $row["sin_cobertura"];
  $tipo_perdida = $row["91_tipo_perdida"];
  $cotizaciones_neto = $row["92_cotizaciones_neto"];
  $detalle1 = $row["93_detalle1"];
  $detalle2 = $row["94_detalle2"];
  $detalle3 = $row["95_detalle3"];
  $detalle4 = $row["96_detalle4"];
  $detalle5 = $row["97_detalle5"];
  $m_o_directa_taller1 = $row["98_m_o_directa_taller1"];
  $m_o_directa_taller2 = $row["99_m_o_directa_taller2"];
  $m_o_directa_taller3 = $row["100_m_o_directa_taller3"];
  $m_o_directa_taller4 = $row["101_m_o_directa_taller4"];
  $m_o_directa_taller5 = $row["102_m_o_directa_taller5"];
  $m_o_trabajos_externos1 = $row["103_m_o_trabajos_externos1"];
  $m_o_trabajos_externos2 = $row["104_m_o_trabajos_externos2"];
  $m_o_trabajos_externos3 = $row["105_m_o_trabajos_externos3"];
  $m_o_trabajos_externos4 = $row["106_m_o_trabajos_externos4"];
  $m_o_trabajos_externos5 = $row["107_m_o_trabajos_externos5"];
  $materiales_estimados1 = $row["108_materiales_estimados1"];
  $materiales_estimados2 = $row["109materiales_estimados2"];
  $materiales_estimados3 = $row["110_materiales_estimados3"];
  $materiales_estimados4 = $row["111_materiales_estimados4"];
  $materiales_estimados5 = $row["112_materiales_estimados5"];
  $repuestos1 = $row["113_repuestos1"];
  $repuestos2 = $row["114_repuestos2"];
  $repuestos3 = $row["115_repuestos3"];
  $repuestos4 = $row["116_repuestos4"];
  $repuestos5 = $row["117_repuestos5"];
  $blanco1_1 = $row["118_blanco1_1"];
  $blanco1_2 = $row["119_blanco1_2"];
  $blanco1_3 = $row["120_blanco1_3"];
  $blanco1_4 = $row["121_blanco1_4"];
  $blanco1_5 = $row["122_blanco1_5"];
  $blanco2_1 = $row["123_blanco2_1"];
  $blanco2_2 = $row["124_blanco2_2"];
  $blanco2_3 = $row["125_blanco2_3"];
  $blanco2_4 = $row["126_blanco2_4"];
  $blanco2_5 = $row["127_blanco2_5"];
  $total_neto1 = $row["128_total_neto1"];
  $total_neto2 = $row["129_total_neto2"];
  $total_neto3 = $row["130_total_neto3"];
  $total_neto4 = $row["131_total_neto4"];
  $total_neto5 = $row["132_total_neto5"];
  $determinacion_perdidas = $row["133_determinacion_perdidas"];
  $valorizacion_inicial = $row["134_valorizacion_inicial"];
  $adicional = $row["135_adicional"];
  $determinacion = $row["136_determinacion"];
  $ajustado = $row["137_ajustado"];
  $subtotal = $row["subtotal"];
  $observaciones = $row["138_observaciones"];
  $indemnizacion = $row["139_indemnizacion"];
  $docuemntos_de_la_carpeta = $row["140_docuemntos_de_la_carpeta"];

  $resultado->close();
 }
 else
 {
	 echo "Error al Ejecutar Query :".$mysqli->error;
 }

		  if($resultado = $mysqli->query("SELECT ejecutivo.ejecutivo from ejecutivo where ejecutivo.id=$ejecutivo_asignado")){
		 $row = mysqli_fetch_row($resultado);

		 //var_dump($row);
		$nombre_ejecutivo= $row[0];


		  }
		  else
		  {
			echo "ERROR: ";
		   }
		   if($resultado = $mysqli->query("SELECT asegurador.nombre_asegurador from asegurador where asegurador.id=$nombre_asegurador")){
		 $row = mysqli_fetch_row($resultado);

		 //var_dump($row);
		$nombre_asegurador2= $row[0];


		  }
		  else
		  {
			echo "ERROR: ";
		   }

 $mysqli->close();
//----------------

 ?>

<!DOCTYPE html>

<html  xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o='urn:schemas-microsoft-com:office:office' xmlns:w='urn:schemas-microsoft-com:office:word' xmlns='http://www.w3.org/TR/REC-html40'>
<head>
<title></title>

</head>

<body>
<form name="form1" method="post" action="">
  <table width="91%" border="0">
    <tr>
      <td width="18%" rowspan="2"><img src="softartigues.png" width="200" height="96" alt="logo"></td>
      <td width="82%" height="36" align="center"><h2><strong><em>MARIO ARTIGUES LIQUIDADORES DE SEGUROS LIMITADA</em></strong></h2></td>
    </tr>
    <tr>
      <td align="center"></td>
    </tr>
  </table>
  <table width="91%">
    <tbody>
      <tr>
        <td align="center"><h3 style="color:#A0A0FF;">Informe Ramos Varios
          <?=date("d/m/Y"); ?>
        </h3></td>
      </tr>
    </tbody>
  </table>
  <table width="91%">
    <tbody>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="12%"><strong>1 Asignado:</strong></td>
                <td width="20%"><?php echo $asignado;?></td>
                <td width="16%"><strong>3 Factura N:</strong></td>
                <td width="21%"><?php echo $factura_n;?></td>
                <td width="13%"><strong>6 Fecha:</strong></td>
                <td width="18%"><?php echo $fecha;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="14%"><strong>2 Dias en la Oficina:</strong></td>
                <td width="20%"><?php echo $dias_en_la_oficina;?></td>
                <td width="14%"><strong>4 Valor:</strong></td>
                <td width="21%"><?php echo $valor;?></td>
                <td width="13%"><strong>7 Ingreso Cia:</strong></td>
                <td width="18%"><?php echo $ingreso_cia;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="10%"><strong>5 Pagado:</strong></td>
                <td width="22%"><?php echo $pagado;?></td>
                <td width="16%">&nbsp;</td>
                <td width="21%">&nbsp;</td>
                <td width="13%">&nbsp;</td>
                <td width="18%">&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="33" bgcolor="#B9C8DF"><strong>INFORME DE LIQUIDACI&Oacute;N</strong></td>
      </tr>
      <tr>
        <td><table width="100%" border="0">
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><table width="100%" border="1">
              <tr>
                <td><table width="100%" border="0">
                  <tr>
                    <td width="19%"><strong>8 Informe de Liquidaci&oacute;n:</strong></td>
                    <td width="29%"><?php  if($informe_liquidacion ==1 ) echo "Informe de Liquidacion";
		  if($ademdium==1) echo "Ademdium";?></td>
                    <td width="21%"><strong>10 N Liquidaci&oacute;n:</strong></td>
                    <td><?php echo $n_liquidacion;?></td>
                  </tr>
                  <tr>
                    <td><strong>Ramo:</strong></td>
                    <td><?php echo $ramo;?></td>
                    <td><strong>Otro:</strong></td>
                    <td><?php echo $n_liquidacion;?></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>VEHICULOS MOTORIZADOS</strong></td>
      </tr>
      <tr>
        <td><table width="100%" border="0">
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><table width="100%" border="1">
              <tr>
                <td><table width="100%" border="0">
                  <tr>
                    <td width="22%"><strong>11 Vehiculos Motorizados:</strong></td>
                    <td width="78%"><?php echo $vehiculos_motorizados;?></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><strong>12 Fecha Informe Estado Parcial:</strong></td>
                    <td><?php echo $fecha_informe_estado_3_parcial;?></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><strong>13 Fecha Informe Estado Final:</strong></td>
                    <td><?php echo $fecha_informe_estado_4_final;?></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td><strong>14 Cobertura Afectada:</strong></td>
                    <td><?php echo $cobertura_afectada;?></td>
                  </tr>
                  <tr>
                    <td><strong>Detalle Cobertura:</strong></td>
                    <td><?php echo $detalle_cobertura;?></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><table width="100%" border="1">
              <tr>
                <td><table width="100%" border="0">
                  <tr>
                    <td width="19%"><strong>15 Deducible:</strong></td>
                    <td width="29%">&nbsp;</td>
                    <td width="21%">&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td colspan="4"><?php echo $deducible;?></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td><table width="100%" border="1">
              <tr>
                <td><table width="100%" border="0">
                  <tr>
                    <td width="19%"><strong>Perdida Bajo Deducible:</strong></td>
                    <td><?php if($perdida_bajo_deducible==1)echo "Perdida Bajo Deducible";?></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>DATOS DEL EJECUTIVO</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="19%"><strong>16 Ejecutivo Asignado:</strong></td>
                <td width="29%"><?php
		  echo $nombre_ejecutivo;

		  ?></td>
                <td width="21%"><strong>17 Email Ejecutivo:</strong></td>
                <td><?php echo $email_ejecutivo;?></td>
              </tr>
              <tr>
                <td colspan="4">&nbsp;</td>
              </tr>
              <tr>
                <td><strong>18 Provisi&oacute;n Estimada:</strong></td>
                <td><?php echo $provision_estimada;?></td>
                <td><strong>19 Uf:</strong></td>
                <td><?php echo $uf;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>ASEGURADOR</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="19%"><strong>20 Nombre Asegurador:</strong></td>
                <td width="31%"><?php echo $nombre_asegurador2;?></td>
                <td width="25%"><strong>25 N Siniestro:</strong></td>
                <td width="25%"><?php echo $n_siniestro;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>21 Sucursal:</strong></td>
                <td colspan="3"><?php echo $sucursal;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>POLIZA</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="13%"><strong>26 Poliza:</strong></td>
                <td width="37%"><?php echo $poliza;?></td>
                <td width="13%"><strong>27 Endoso:</strong></td>
                <td width="37%"><?php echo $endoso;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>28 Vigencia:</strong></td>
                <td colspan="3"><strong><?php echo $vigencia;?></strong></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td><strong>29 Fecha Desde:</strong></td>
                <td><?php echo $fecha_desde;?></td>
                <td><strong>30 Fecha Hasta:</strong></td>
                <td><?php echo $fecha_hasta;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>CORREDOR</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="11%"><strong>22 Corredora:</strong></td>
                <td width="47%"><?php echo $corredora;?></td>
                <td width="11%"><strong>23 Fono 2:</strong></td>
                <td width="31%"><?php echo $fono2;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>24 Email 2:</strong></td>
                <td><?php echo $email2;?></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>ASEGURADO</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="19%"><strong>31 Nombre Asegurado:</strong></td>
                <td width="81%"><?php echo $nombre_asegurado;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>32 Rut Asegurado:</strong></td>
                <td><?php echo $rut_asegurado;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>33 Direcci&oacute;n Asegurado:</strong></td>
                <td><?php echo $direccion_asegurado;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>34 Fono Asegurado:</strong></td>
                <td><?php echo $fono_asegurado;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>35 Email Asegurado:</strong></td>
                <td><?php echo $email_asegurado;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>CONTRATANTE</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="20%"><strong>36 Contratante Usuario:</strong></td>
                <td width="80%"><?php echo $contratante_usuario;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>37 Rut Contratante:</strong></td>
                <td><?php echo $rut_contratante;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>38 Direcci&oacute;n Contratante:</strong></td>
                <td><?php echo $direccion_contratante;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>39 Fono Contratante:</strong></td>
                <td><?php echo $fono_contratante;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>40 Email Contratante:</strong></td>
                <td><?php echo $email_contratante;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>MATERIA ASEGURADORA</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="23%"><strong>41 Materia Asegurada:</strong></td>
                <td width="77%"><?php echo $materia_asegurada;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>45 Anno Materia Asegurada:</strong></td>
                <td><?php echo $ano_materia_asegurada;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>42 Marca Materia Asegurada:</strong></td>
                <td><?php echo $marca_materia_asegurada;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>46 Serie Motor Materia Asegurada:</strong></td>
                <td><?php echo $serie_motor_materia_asegurada;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>43 Model Materia Asegurada:</strong></td>
                <td><?php echo $modelo_materia_asegurada;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>47 Chasis Materia Asegurada:</strong></td>
                <td><?php echo $chais_materia_asegurada;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>44 Patente Materia Asegurada:</strong></td>
                <td><?php echo $patente_materia_asegurada;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>PRORRATEO</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="24%"><strong>48 Monto Uf Materia Asegurada:</strong></td>
                <td width="26%"><?php echo $monto_uf_asegurado_materia_asegurada;?></td>
                <td width="28%"><strong>49 Valor Comercial Uf Materia Asegurada:</strong></td>
                <td width="22%"><?php echo $valor_comercialuf_materia_asegurada;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td><strong>51 Cia Procentaje:</strong></td>
                <td colspan="3"><?php echo $cia_porcentaje;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td colspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td><strong>52 Aseg Porcentaje:</strong></td>
                <td colspan="3"><?php echo $aseg_porcentaje;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>ANTECEDENTES GENERALES SINIESTRO</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="28%"><strong>55 Lugar Siniestro:</strong></td>
                <td width="72%"><?php echo $lugar_del_siniestro;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>54 Fecha Siniestro:</strong></td>
                <td><?php echo $fecha_del_siniestro;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>55 Fecha de Denuncia Cia:</strong></td>
                <td><?php echo $fecha_de_denuncia_cia;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>56 Fecha Asignaci&oacute;n Liquidador:</strong></td>
                <td><?php echo $fecha_asignacion_liquidador;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>57 Conductor Consignado:</strong></td>
                <td><?php echo $conductor_consignado;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>59 Licencia N Antecedentes General:</strong></td>
                <td><?php echo $licencia_n_antecedentes_general;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>60 Clase Antecedentes General:</strong></td>
                <td><?php echo $clase_antecedentes_general;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>61 Vigencia De Control:</strong></td>
                <td><?php echo $vigencia_de_control;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>Persona Contacto:</strong></td>
                <td><?php echo $perona_contacto;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>62 Fecha Contacto Antecedentes General:</strong></td>
                <td><?php echo $fecha_contacto_antecedentes_general;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>63 Hora De Contacto:</strong></td>
                <td><?php echo $hora_de_contacto;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>64 Fecha  Inspecci&oacute;n:</strong></td>
                <td><?php echo $fecha_inspeccion;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>65 Fecha Recepcion Repuestos:</strong></td>
                <td><?php echo $fecha_recepcion_repuestos;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>66 Emisor Presupuestos:</strong></td>
                <td><?php echo $emisor_presupuestos;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>67 Fecha Cotizacion Repuesto:</strong></td>
                <td><?php echo $fecha_cotizacion_repuesto;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>68 Fecha Recepcion Cot Repuestos:</strong></td>
                <td><?php echo $fecha_recepcion_cot_repuestos;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>69 Fecha Orden De Compra Repuestos:</strong></td>
                <td><?php echo $fecha_orden_de_compra_repuestos;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>70 Fecha Orden De Trabajo A Taller:</strong></td>
                <td><?php echo $fecha_orden_de_trabajo_a_taller;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>TERCEROS</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="20%"><strong>71 Tercer Afectado:</strong></td>
                <td width="80%"><?php echo $tercer_afectado;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>72 Patente Tercer Afectado:</strong></td>
                <td><?php echo $patente_tercer_afectado;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>73 Email Terceros:</strong></td>
                <td><?php echo $email_terceros;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>74 Fono Terceros:</strong></td>
                <td><?php echo $fono_terceros;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>75 Fecha Inspecion Terceros:</strong></td>
                <td><?php echo $fecha_inspeccion_terceros;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>77 Obsercaciones:</strong></td>
                <td><?php echo $observaciones;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>IMAGENES DE DA&Ntilde;OS</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="10%"><strong>78 Imagen 1:</strong></td>
                <td width="90%">
                  <img src="http://artiguesliquidadores.cl/soft/_lib/file/imgfotos/<?php echo $imagenes1 ?>" width="427" height="283" alt="1"></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>79 Imagen 2:</strong></td>
                <td><img src="http://artiguesliquidadores.cl/soft/_lib/file/imgfotos/<?php echo $imagenes2 ?>" width="427" height="283" alt="1"></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>80 Imagen 3:</strong></td>
                <td><img src="http://artiguesliquidadores.cl/soft/_lib/file/imgfotos/<?php echo $imagenes3 ?>" width="427" height="283" alt="1"></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>81 Imagen 4:</strong></td>
                <td><img src="http://artiguesliquidadores.cl/soft/_lib/file/imgfotos/<?php echo $imagenes4 ?>" width="427" height="283" alt="1"></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>82 Imagen 5:</strong></td>
                <td><img src="http://artiguesliquidadores.cl/soft/_lib/file/imgfotos/<?php echo $imagenes5 ?>" width="427" height="283" alt="1"></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>DESCRIPCI&Oacute;N DEL SINIESTRO</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td><strong>83 Descripci&oacute;n del Siniestro:</strong></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><?php echo $descripcion_del_siniestro;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>TIPIFICACI&Oacute;N DEL SINIESTRO</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td><strong>84 Tipificaci&oacute;n del Siniestro:</strong></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><?php echo $tipificacion_del_siniestro;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>85 Parte Policial:</strong></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><?php echo $select_constancia_parte;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>86 Alcoholemia:</strong></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><?php echo $alcoholemia;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>87 Garantia:</strong></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><?php echo $garantia;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>INSPECCI&Oacute;N Y ANTECEDENTES</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td><strong>84 Inspecci&oacute;n y Antecedentes:</strong></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><?php echo $inspeccion_y_antecedentes;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>DEFINICI&Oacute;N DE COBERTURA:</strong></td>
      </tr>
      <tr>
        <td><label for="Def_Cobertura"></label>
        <label for="definicion_cobertura"></label>
        <label for="definicion_cobertura"></label>
        <p><em>CONSIDERANDO TODOS  LOS ANTECEDENTES RECOPILADOS RELACIONADOS CON LA CAUSA, ORIGEN, CIRCUNSTANCIAS,  MATERIA AFECTADA, Y ANALISIS DEL EVENTO, SE CONCLUYE LO SIGUIENTE:</em><br>
        </p></td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="22%"><strong>89 La Materia Inspeccionada:</strong></td>
                <td width="78%"><?php echo"Corresponde a la consignada en el Contrato de Seguros". $la_materia_inspeccionada;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>90 Causa Determinada Siniestro:</strong></td>
                <td>
                  <label for="Causa_Determinada_Siniestro"></label>
                  <textarea name="Causa_Determinada_Siniestro" cols="140" rows="4" id="Causa_Determinada_Siniestro"><?php  echo "- La causa determinada del siniestro encuentra amparo de acuerdo a lo establecido por las Condiciones Generales de la POLIZA. ". $causa_determinada_siniestro;?>
                  </textarea></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>PERDIDAS</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="15%"><strong>Recomendacion:</strong></td>
                <td width="85%"><?php echo $recomendacion;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>Sin Cobertura:</strong></td>
                <td><?php echo $sin_cobertura;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>91 Tipo Perdida:</strong></td>
                <td><?php echo $tipo_perdida;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="12%" align="center" bgcolor="#B9C8DF"><strong>Taller</strong></td>
                <td width="16%" align="center" bgcolor="#B9C8DF"><strong>Artihues</strong></td>
                <td width="17%" align="center" bgcolor="#B9C8DF"><strong>Taller 2</strong></td>
                <td width="16%" align="center" bgcolor="#B9C8DF"><strong>Taller 3</strong></td>
                <td width="18%" align="center" bgcolor="#B9C8DF"><strong>Taller 4</strong></td>
                <td width="21%" align="center" bgcolor="#B9C8DF"><strong>Taller 5</strong></td>
              </tr>
              <tr>
                <td bgcolor="#B9C8DF">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td bgcolor="#B9C8DF"><strong>M O Directa Taller</strong></td>
                <td><?php echo $m_o_directa_taller1;?></td>
                <td><?php echo $m_o_directa_taller2;?></td>
                <td><?php echo $m_o_directa_taller3;?></td>
                <td><?php echo $m_o_directa_taller4;?></td>
                <td><?php echo $m_o_directa_taller5;?></td>
              </tr>
              <tr>
                <td bgcolor="#B9C8DF">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td bgcolor="#B9C8DF"><strong>M O Trabajos Externos</strong></td>
                <td><?php echo $m_o_trabajos_externos1;?></td>
                <td><?php echo $m_o_trabajos_externos2;?></td>
                <td><?php echo $m_o_trabajos_externos3;?></td>
                <td><?php echo $m_o_trabajos_externos4;?></td>
                <td><?php echo $m_o_trabajos_externos5;?></td>
              </tr>
              <tr>
                <td bgcolor="#B9C8DF">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td bgcolor="#B9C8DF"><strong>Materiales Estimados</strong></td>
                <td><?php echo $materiales_estimados1;?></td>
                <td><?php echo $materiales_estimados2;?></td>
                <td><?php echo $materiales_estimados3;?></td>
                <td><?php echo $materiales_estimados4;?></td>
                <td><?php echo $materiales_estimados5;?></td>
              </tr>
              <tr>
                <td bgcolor="#B9C8DF">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td bgcolor="#B9C8DF"><strong>Repuestos</strong></td>
                <td><?php echo $repuestos1;?></td>
                <td><?php echo $repuestos2;?></td>
                <td><?php echo $repuestos3;?></td>
                <td><?php echo $repuestos4;?></td>
                <td><?php echo $repuestos5;?></td>
              </tr>
              <tr>
                <td bgcolor="#B9C8DF">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td bgcolor="#B9C8DF"><strong>Otros</strong></td>
                <td><?php echo $blanco1_1;?></td>
                <td><?php echo $blanco1_2;?></td>
                <td><?php echo $blanco1_3;?></td>
                <td><?php echo $blanco1_4;?></td>
                <td><?php echo $blanco1_5;?></td>
              </tr>
              <tr>
                <td bgcolor="#B9C8DF">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td bgcolor="#B9C8DF"><strong>Otros</strong></td>
                <td><?php echo $blanco2_1;?></td>
                <td><?php echo $blanco2_2;?></td>
                <td><?php echo $blanco2_3;?></td>
                <td><?php echo $blanco2_4;?></td>
                <td><?php echo $blanco2_5;?></td>
              </tr>
              <tr>
                <td bgcolor="#B9C8DF">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td bgcolor="#B9C8DF"><strong>Total Neto</strong></td>
                <td><?php echo $total_neto1;?></td>
                <td><?php echo $total_neto2;?></td>
                <td><?php echo $total_neto3;?></td>
                <td><?php echo $total_neto4;?></td>
                <td><?php echo $total_neto5;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>DETERMINACI&Oacute;N  PERDIDAS</strong></td>
      </tr>
      <tr>
        <td><table width="975" border="1" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="202" valign="top"><p><em><strong>Taller </strong>:</em></p></td>
            <td width="552" valign="top"><p><em><strong>Valor Neto </strong></em></p></td>
          </tr>
          <tr>
            <td width="202" valign="top"><p><em><strong>DM. O. Reparaciones</strong></em></p></td>
            <td width="552" valign="top"><p>&nbsp;</p></td>
          </tr>
          <tr>
            <td width="202" valign="top"><p><em><strong>Trabajos de Terceros</strong></em></p></td>
            <td width="552" valign="top"><p>&nbsp;</p></td>
          </tr>
          <tr>
            <td width="202" valign="top"><p><em><strong>Pintura </strong></em></p></td>
            <td width="552" valign="top"><p>&nbsp;</p></td>
          </tr>
          <tr>
            <td width="202" valign="top"><p><em><strong>Repuestos</strong></em></p></td>
            <td width="552" valign="top"><p>&nbsp;</p></td>
          </tr>
          <tr>
            <td width="202" valign="top"><p><em><strong>Total Neto </strong></em></p></td>
            <td width="552" valign="top"><p>&nbsp;</p></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td><strong>113 Determinaci&oacute;n de P&eacute;rdidas:</strong></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><?php echo $determinacion_perdidas;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>RESULTADO DEL AJUSTE</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td width="19%"><strong>134 Presupuesto Inicial</strong></td>
                <td width="81%"><?php echo $valorizacion_inicial;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>135 Adicional</strong></td>
                <td><?php echo $adicional;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>Subtotal</strong></td>
                <td><?php echo $subtotal;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>136 Determinado</strong></td>
                <td><?php echo $determinacion;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><strong>137 Valor Ajustado</strong></td>
                <td><?php echo $ajustado;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>OBSERVACIONES</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td><strong>138 Observaciones:</strong></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><?php echo $observaciones;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>INDEMNIZACI&Oacute;N</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td><strong>139 Indemnizaci&oacute;n:</strong></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><?php echo $indemnizacion;?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="#B9C8DF"><strong>DOCUMENTOS DE LA CARPETA</strong></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><table width="100%" border="1">
          <tr>
            <td><table width="100%" border="0">
              <tr>
                <td><strong>140 Documentos de la Carpeta:</strong></td>
              </tr>
              <tr>
                <td><?php echo $docuemntos_de_la_carpeta;?></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td align="center">&nbsp;</td>
      </tr>
      <tr>
        <td align="center" bgcolor="#B9C8DF"><p><strong>FIRMAS</strong></p></td>
      </tr>
      <tr>
        <td><table width="100%" border="0">
          <tr>
            <td colspan="3" align="center"><p><img src="firma.jpg" alt="" width="198" height="152"></p></td>
          </tr>
        </table></td>
      </tr>
    </tbody>
  </table>
<p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>
