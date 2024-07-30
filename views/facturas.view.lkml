view: facturas {
  derived_table: {
    sql: SELECT FARM_FINGERPRINT(FACTURA || "-" || UNIX_DATE(FECHA) || "-" || IDMESERA) AS facturas_pk, FACTURA, FECHA, SUM(BRUTO) AS total_bruto, AVG(BRUTO) AS promedio_bruto, count(*) as conteo_trx  FROM `crepes-looker-dev.DATOS.VENTASJUNIO`
      GROUP BY 1, 2, 3
       ;;
  }

  dimension: pk {
    primary_key: yes
    hidden: no
    sql: ${TABLE}.facturas_pk ;;
  }

  measure: count {
    type: count
    # drill_fields: [detail*]
  }

  dimension: factura {
    group_label: "Factura"
    # primary_key: yes
    type: string
    sql: ${TABLE}.FACTURA ;;
  }

  dimension: fecha {
    group_label: "Factura"
    type: date
    datatype: date
    sql: ${TABLE}.FECHA ;;
  }

  # measure: total {
  #   label: "Total Valor del Ticket"
  #   type: sum
  #   sql: ${TABLE}.total_bruto ;;
  #   value_format_name: usd_0
  #   link: {
  #     label: "Explore Top 10"
  #     url: "{{drill_fields_productos._link}}&sorts=fulldata.total_cantidad+desc&limit=10"
  #   }
  # }

  measure: total {
    label: "Total Valor del Ticket"
    type: sum
    sql: ${TABLE}.total_bruto ;;
    value_format_name: usd_0
  }

  measure: promedio {
    label: "Promedio Valor Transaccion en el ticket"
    type: average
    sql: ${TABLE}.promedio_bruto ;;
  }

  dimension: conteo_trx {
    type: number
    sql: ${TABLE}.conteo_trx ;;
  }

  measure: numero_de_transacciones {
    label: "Numero de Tickets"
    type: count_distinct
    sql: ${facturas.pk} ;;
    value_format_name: decimal_0
  }

  measure: prom_ticket {
    label: "Valor promedio del Ticket"
    type: number
    sql: ${total} / ${numero_de_transacciones} ;;
    value_format_name: usd_0
  }



  set: detail {
    fields: [factura, fecha, total, promedio, conteo_trx, pk]
  }
}



view: facturas_REPETIDAS {
  derived_table: {
    sql: SELECT FARM_FINGERPRINT(FACTURA || "-" || UNIX_DATE(FECHA)) AS facturas_pk, FACTURA, FECHA, SUM(BRUTO) AS total_bruto, AVG(BRUTO) AS promedio_bruto, count(*) as conteo_trx  FROM `crepes-looker-dev.DATOS.VENTASJUNIO`
      GROUP BY 1, 2, 3
       ;;
  }

  dimension: pk {
    # primary_key: yes
    sql: ${TABLE}.facturas_pk ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: factura {
    # primary_key: yes
    type: string
    sql: ${TABLE}.FACTURA ;;
  }

  dimension: fecha {
    type: date
    datatype: date
    sql: ${TABLE}.FECHA ;;
  }

  measure: total_bruto {
    type: sum
    sql: ${TABLE}.total_bruto ;;
  }

  measure: promedio_bruto {
    type: average
    sql: ${TABLE}.promedio_bruto ;;
  }

  dimension: conteo_trx {
    type: number
    sql: ${TABLE}.conteo_trx ;;
  }

  set: detail {
    fields: [factura, fecha, total_bruto, promedio_bruto, conteo_trx, pk]
  }
}
