include: "date_comparison.view.lkml"

view: ventasjunio {
  sql_table_name: `DATOS.VENTASJUNIO`
    ;;
  extends: [date_comparison]

  dimension: _semana {
    hidden: yes
    type: string
    sql: ${TABLE}._Semana ;;
  }

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: FARM_FINGERPRINT(${TABLE}.factura || "-" || UNIX_DATE(${TABLE}.FECHA) || "-" || ${TABLE}.IDMESERA) ;;
  }

  measure: total_bruto {
    group_label: "Bruto"
    group_item_label: "Total"
    type: sum
    sql: ${TABLE}.BRUTO ;;
  }

  measure: total {
    hidden: yes
    label: "Total Ventas"
    type: sum
    sql: ${TABLE}.BRUTO ;;
    value_format_name: usd_0
  }

  measure: avg_bruto {
    group_label: "Bruto"
    group_item_label: "Promedio"
    type: average
    sql: ${TABLE}.BRUTO ;;
  }

  measure: total_cantidad {
    group_label: "Cantidad"
    group_item_label: "Total"
    type: sum
    sql: ${TABLE}.CANTIDAD ;;
  }

  measure: avg_cantidad {
    group_label: "Cantidad"
    group_item_label: "Promedio"
    type: average
    sql: ${TABLE}.CANTIDAD ;;
  }

  dimension: check1 {
    type: string
    sql: ${TABLE}.CHECK1 ;;
  }

  dimension: clientes {
    type: number
    sql: ${TABLE}.CLIENTES ;;
  }

  dimension: closetime {
    type: string
    sql: ${TABLE}.CLOSETIME ;;
  }

  dimension: co {
    label: "Punto de venta"
    type: string
    sql: ${TABLE}.CO ;;
    # link: {
    #   label: "Dashboard Tienda"
    #   icon_url: "https://servinformacion.cloud.looker.com/favicon.ico"
    #   url: "/dashboards-next/18?Punto%20de%20venta={{ value }}&Año={{ _filters['fulldata.anio'] | url_encode }}"
    # }
  }

  dimension: dia {
    type: string
    sql: ${TABLE}.DIA ;;
  }

  dimension: factura {
    # primary_key: yes
    label: "ID Factura"
    type: string
    sql: ${TABLE}.FACTURA ;;
  }

  measure: cnd_factura {
    label: "Conteo Facturas"
    type: count_distinct
    sql: ${TABLE}.FACTURA ;;
  }

  dimension_group: fecha {
    # hidden: yes
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FECHA ;;
  }

  dimension: anio {
    type: string
    sql: CAST(${fecha_year} as STRING) ;;
  }

  dimension: diames {
    type: string
    sql: CAST(${fecha_date} as STRING) ;;
  }

  dimension_group: fechahora {
    type: time
    timeframes: [
      raw,
      time,
      hour_of_day,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.FECHAHORA ;;
  }

  dimension: hora1 {
    type: string
    sql: ${TABLE}.HORA1 ;;
  }

  dimension: idmesera {
    group_label: "Mesera"
    type: string
    sql: ${TABLE}.IDMESERA ;;
  }

  measure: impuesto {
    type: sum
    sql: ${TABLE}.IMPUESTO ;;
  }

  dimension: item {
    type: string
    sql: ${TABLE}.ITEM ;;
  }

  dimension: linea {
    type: string
    sql: ${TABLE}.LINEA ;;
    link: {
      label: "🥞 Explore Top 10"
      url: "{{drill_fields_productos._link}}&sorts=fulldata.total_cantidad+desc&limit=10"
    }
  }

  dimension: longname {
    type: string
    sql: ${TABLE}.LONGNAME ;;
  }

  dimension: menuid {
    type: string
    sql: ${TABLE}.MENUID ;;
  }

  dimension: menuno {
    type: string
    sql: ${TABLE}.MENUNO ;;
  }

  dimension: mesa {
    type: string
    sql: ${TABLE}.MESA ;;
  }

  dimension: minut1 {
    type: string
    sql: ${TABLE}.MINUT1 ;;
  }

  dimension: momento_del_dia {
    type: string
    sql: ${TABLE}.MOMENTO_DEL_DIA ;;
  }

  measure: total_neto {
    group_label: "Neto"
    group_item_label: "Total"
    type: sum
    sql: ${TABLE}.NETO ;;
  }

  measure: avg_neto {
    group_label: "Neto"
    group_item_label: "Promedio"
    type: average
    sql: ${TABLE}.NETO ;;
  }

  dimension: nomesera {
    group_label: "Mesera"
    label: "Nombre Mesera"
    type: string
    sql: UPPER(${TABLE}.NOMESERA) ;;
  }

  dimension: opentime {
    type: string
    sql: ${TABLE}.OPENTIME ;;
  }

  dimension: pdv {
    hidden: yes
    type: string
    sql: ${TABLE}.PDV ;;
  }

  dimension: plataforma {
    type: string
    sql: ${TABLE}.PLATAFORMA ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.PRODUCTO ;;
  }

  dimension: propina {
    group_label: "Mesera"
    type: number
    sql: ${TABLE}.PROPINA ;;
  }

  measure: total_propina {
    group_label: "Propina"
    group_item_label: "Total"
    type: sum
    sql: ${TABLE}.PROPINA ;;
    value_format_name: usd_0
  }

  measure: avg_propina {
    group_label: "Propina"
    group_item_label: "Promedio"
    type: average
    sql: ${TABLE}.PROPINA ;;
  }


  dimension: psegundos {
    type: number
    sql: ${TABLE}.PSEGUNDOS ;;
  }

  dimension: segundos {
    type: string
    sql: ${TABLE}.SEGUNDOS ;;
  }

  dimension: semana {
    type: string
    sql: ${TABLE}.SEMANA ;;
  }

  dimension: sub_menu {
    type: string
    sql: ${TABLE}.SUB_MENU ;;
  }

  dimension: subid {
    type: string
    sql: ${TABLE}.SUBID ;;
  }

  dimension: subno {
    type: string
    sql: ${TABLE}.SUBNO ;;
  }

  dimension: tipo_venta {
    type: string
    sql: ${TABLE}.TIPO_VENTA ;;
  }

  dimension: transacc {
    type: number
    sql: ${TABLE}.TRANSACC ;;
  }

  dimension: zona_ORIGINAL {
    type: string
    sql: ${TABLE}.ZONA
      END;;
  }

  dimension: zona {
    type: string
    sql:
    CASE
    WHEN (${TABLE}.ZONA LIKE 'H%' OR ${TABLE}.ZONA = 'BH1') THEN 'Otras'
    ELSE ${TABLE}.ZONA
    END;;
  }

  measure: drill_fields_productos {
    hidden: yes
    type: sum
    sql: 0 ;;
    drill_fields: [productos*]
  }

  measure: total_2 {
    type: number
    sql: ${count}/${propina} ;;
  }

  set: productos {
    fields: [producto, total_cantidad, total]
  }

  measure: count {
    type: count
    drill_fields: [longname]
  }
}
