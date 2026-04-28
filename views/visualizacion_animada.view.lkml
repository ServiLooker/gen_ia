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
    # DESARROLLO: Incrustamos la lógica de movimiento X e Y aquí
    html:
      <div style="
        position: fixed;
        width: 60px;
        height: 40px;
        /* El movimiento horizontal (X) se calcula con el Valor Estadístico */
        left: {{ valor_estadistico._value | times: 0.000002 }}px;
        /* El movimiento vertical (Y) se calcula con el Valor Estadístico */
        bottom: {{ valor_estadistico._value | times: 0.02 }}px;
        transition: all 1.5s ease-in-out;
        z-index: 100;">
        <img src="https://flagcdn.com/w80/{{ value | downcase }}.png" style="width: 100%; box-shadow: 3px 3px 10px rgba(0,0,0,0.2); border-radius: 4px;"/>
        <div style="font-size: 11px; text-align: center; color: #111; font-weight: bold;">
          {{ nombre_pais._value }}
        </div>
      </div> ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: nombre_pais {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  measure: valor_estadistico {
    type: sum
    sql: ${TABLE}.value ;;
  }
}
