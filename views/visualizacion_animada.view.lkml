view: visualizacion_animada {
  sql_table_name: `bigquery-public-data.world_bank_wdi.indicators_data` ;;

  dimension: anio {
    label: "Año"
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: bandera {
    type: string
    sql: ${TABLE}.country_code ;;
    html: <img src="https://flagcdn.com/w80/{{ value | downcase }}.png" width="50"/> ;;
  }

  dimension: nombre_pais {
    label: "Nombre País"
    type: string
    sql: ${TABLE}.country_name ;;
  }

  # EJE X: Población
  measure: eje_x_poblacion {
    label: "Población (Eje X)"
    type: sum
    sql: CASE WHEN ${TABLE}.indicator_code = 'SP.POP.TOTL' THEN ${TABLE}.value ELSE NULL END ;;
  }

  # EJE Y: PIB / GDP
  measure: eje_y_gdp {
    label: "GDP (Eje Y)"
    type: sum
    sql: CASE WHEN ${TABLE}.indicator_code = 'NY.GDP.PCAP.CD' THEN ${TABLE}.value ELSE NULL END ;;
  }
}
