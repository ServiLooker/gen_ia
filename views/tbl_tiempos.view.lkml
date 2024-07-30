
view: tbl_tiempos {
  derived_table: {
    sql: SELECT
        pp.country_name Pais,
        pp.name nombre_proyecto,
        pp.date_from fecha_inicio,
        pp.date_to fecha_estimada_cierre,
        pp.date_close_real fecha_cierre,
        pp.employee_name Lider,
        pp.status_name Estado,
        pp.billable,
        pp.commercial_contacts Comercial,
        pp.is_internal_order orden_interna,
        pp.es_retrasada orden_retrasada,
        p.horas_planeadas,
        p.horas_ejecutadas,
        p.diasderetraso,
        p.diasprogramados,
        t.id,
        t.user_name Asignado,
        t.PM,
        t.date Fecha_llenado_horas,
        t.unit_amount total_horas,
        CASE
        WHEN pp.name LIKE 'OT%' AND pp.is_internal_order is true THEN 'ORDENES DE TRABAJO INTERNAS'
        WHEN pp.name LIKE 'OT%' THEN 'ORDENES DE TRABAJO'
        WHEN pp.name LIKE 'REPORTE DE HORAS' THEN 'ADMINISTRATIVO Y GESTIÓN'
        ELSE   pp.name END   agrupacion_ot
      FROM   `tickets-1161.ODOO.Tiempos` AS t
      LEFT JOIN   `tickets-1161.ODOO.projects_products` AS pp ON   t.project_id = pp.id
      LEFT JOIN   `tickets-1161.ODOO.proyectos` AS p ON   pp.id = p.id
      WHERE
      user_name  IN ('ANA YAZMIN ROZO', 'ATEHORTUA JARAMILLO JHON HENRY ', 'CRISTHIAN FRANCCESCO ARGAEZ MURCIA',
      'CRISTIAN CAMILO SOCHA RAMIREZ','DIEGO PARRA FLOREZ','QUINA PULIDO LEIDY TATIANA','EVELYN VIVIANA CAÑAS LEON','GONZALEZ LOPEZ HECTOR EDUARDO',
      'JAIRO ALEXANDER TORRES ALVAREZ','TAFUR ZAPATA LUIS FABIO')
      GROUP BY t.id,  t.project_name,  t.user_name,  t.PM,  t.date,  t.unit_amount, t.id, pp.country_name,  pp.name,  pp.date_from,  pp.date_to,  pp.date_close_real,  pp.employee_name,  pp.status_name,  pp.billable,  pp.commercial_contacts,  pp.is_internal_order,  pp.es_retrasada,  p.horas_planeadas,  p.horas_ejecutadas,  p.diasderetraso,  p.diasprogramados ;;
  }

  dimension: agrupacion_ot {
    type: string
    sql: ${TABLE}.agrupacion_ot ;;
  }

  dimension: asignado {
    type: string
    sql: TRIM(${TABLE}.Asignado) ;;
  }

  dimension: asignado2 {
    type: string
    sql: REPLACE(${TABLE}.Asignado," ","") ;;
    html:
    <img src="https://storage.cloud.google.com/datos_y_analitica/{{value}}.png" width="70">;;
  }

  dimension: asignado3 {
    type: string
    sql: REPLACE(${TABLE}.Asignado," ","") ;;
    html:
    <img src="https://storage.cloud.google.com/datos_y_analitica/{{value}}.png" width="190">;;
  }

  dimension: billable {
    type: yesno
    sql: ${TABLE}.billable ;;
  }

  dimension: comercial {
    type: string
    sql: ${TABLE}.Comercial ;;
  }

  dimension: diasderetraso {
    type: number
    sql: ${TABLE}.diasderetraso ;;
  }

  dimension: diasprogramados {
    type: number
    sql: ${TABLE}.diasprogramados ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension_group: fecha_cierre {
    type: time
    timeframes: [date,day_of_week,month,month_name,quarter,year]
    sql: TIMESTAMP(${TABLE}.fecha_cierre) ;;
  }

  dimension_group: fecha_estimada_cierre {
    type: time
    timeframes: [date,month,quarter,year]
    sql: TIMESTAMP(${TABLE}.fecha_estimada_cierre) ;;
  }

  dimension_group: fecha_inicio {
    type: time
    timeframes: [date,month,month_name,quarter,year]
    sql: TIMESTAMP(${TABLE}.fecha_inicio) ;;
  }

  dimension_group: fecha_llenado_horas {
    type: time
    timeframes: [date,day_of_week,month,month_name,quarter,year]
    sql: TIMESTAMP(${TABLE}.Fecha_llenado_horas) ;;
  }

  measure: horas_planeadas {
    type: average
    sql: if(${TABLE}.horas_planeadas=1,0,${TABLE}.horas_planeadas) ;;
    value_format_name: decimal_2
  }

  measure: horas_ejecutadas {
    type: average
    sql: ${TABLE}.horas_ejecutadas ;;
    value_format_name: decimal_2
  }


  dimension: lider {
    type: string
    sql: ${TABLE}.Lider ;;
  }

  dimension: nombre_proyecto {
    type: string
    sql: ${TABLE}.nombre_proyecto ;;
  }

  dimension: orden_interna {
    type: yesno
    sql: ${TABLE}.orden_interna ;;
  }

  dimension: orden_retrasada {
    type: string
    sql: ${TABLE}.orden_retrasada ;;
  }

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.Pais ;;
  }

  dimension: pm {
    type: string
    sql: ${TABLE}.PM ;;
  }

  measure: total_horas {
    type: sum
    sql: ${TABLE}.total_horas ;;
    value_format_name: decimal_2
  }
  measure: total_horas_OT {
    filters: [agrupacion_ot: "ORDENES DE TRABAJO"]
    type: sum
    sql: ${TABLE}.total_horas ;;
    value_format_name: decimal_2
  }

  measure: promedio_horas_por_proyecto {
    type: number
    sql: ${total_horas}/${dias_trabajados} ;;
    value_format_name: decimal_2
  }

  measure: dias_trabajados {
    type: count_distinct
    sql: ${fecha_llenado_horas_date}  ;;
  }

  measure: porcentaje_horas{
    type: percent_of_total
    sql: ${total_horas} ;;
    value_format: "0.00\%"
  }

  measure: total_horas_por_proyecto {
    type: sum
    sql: ${TABLE}.total_horas ;;
    value_format_name: decimal_2
    drill_fields: [asignado2,fecha_llenado_horas_month,total_horas]
    html: <p style="color: blue; font-weight: bold;">{{ rendered_value }}</p> ;;
    link: {
      label: "Esfuerzos del equipo"
      url: "
      {% assign vis_config = '{
      \"type\": \"table\",
      \"show_view_names\": false,
      \"show_row_numbers\": false,
      \"truncate_column_names\": false,
      \"table_theme\": \"gray\",
      \"enable_conditional_formatting\": true,
      \"conditional_formatting\": [
      {
      \"type\": \"low to high\",
      \"value\": null,
      \"background_color\": null,
      \"font_color\": null,
      \"palette\": {
      \"name\": \"Custom\",
      \"colors\": [
      \"#FFFFFF\",
      \"#6e00ff\"
      ]},
      \"bold\": false,
      \"italic\": false,
      \"strikethrough\": false,
      \"fields\": [
      \"growth_rate\"
      ]},{
      \"type\": \"low to high\",
      \"value\": null,
      \"background_color\": null,
      \"font_color\": null,
      \"palette\": {
      \"name\": \"Custom\",
      \"colors\": [
      \"#FFFFFF\",
      \"#88ff78\"
      ]},
      \"bold\": false,
      \"italic\": false,
      \"strikethrough\": false,
      \"fields\": [
      \"percent_of_total\"
      ]}]}' %}
      {{link}}&total=on&pivots=tbl_tiempos.fecha_llenado_horas_month&vis_config={{ vis_config | encode_uri }}"
    }
  }

  measure: total_proyectos {
    type: count_distinct
    sql: ${nombre_proyecto} ;;
    drill_fields: [nombre_proyecto, total_horas, porcentaje_horas]
  }

  set: detail {
    fields: [
      pais,
      nombre_proyecto,
      lider,
      estado,
      billable,
      comercial,
      orden_interna,
      orden_retrasada,
      horas_planeadas,
      horas_ejecutadas,
      diasderetraso,
      diasprogramados,
      id,
      asignado,
      pm,
      total_horas,
      agrupacion_ot
    ]
  }
}
