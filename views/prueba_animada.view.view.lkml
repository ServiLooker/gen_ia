view: prueba_animada {
  # Usamos la base de datos pública de Google que tiene años y números
  sql_table_name: `bigquery-public-data.world_bank_wdi.indicators_data` ;;

  dimension: nombre_pais {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: anio {
    type: number
    label: "Año"
    sql: ${TABLE}.year ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  # Esto pone la bandera usando el código del país
  dimension: bandera {
    type: string
    sql: ${codigo} ;;
    html: <img src="https://flagcdn.com/w80/{{ value | downcase }}.png" width="50"/> ;;
  }

  # Esta medida es el "número" que moverá la burbuja
  measure: valor_estadistico {
    type: sum
    sql: ${TABLE}.value ;;
  }
}
