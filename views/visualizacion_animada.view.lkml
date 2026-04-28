view: visualizacion_animada {
  sql_table_name: `bigquery-public-data.world_bank_wdi.indicators_data` ;;

  dimension: anio {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: bandera {
    type: string
    sql: ${TABLE}.country_code ;;
    # Aquí desarrollamos el contenedor de la bandera para la animación
    html:
      <div style="
        position: relative;
        width: 100px;
        height: 100px;
        transition: all 1s ease-in-out;
        transform: translate({{ eje_x_poblacion._render_value }}px, -{{ eje_y_gdp._render_value }}px);
      ">
        <img src="https://flagcdn.com/w80/{{ value | downcase }}.png" style="width: 100%; border-radius: 5px; shadow: 2px 2px 5px rgba(0,0,0,0.3);"/>
        <p style="font-size: 10px; text-align: center; color: #333;">{{ pais._value }}</p>
      </div> ;;
  }

  dimension: pais {
    hidden: yes
    type: string
    sql: ${TABLE}.country_name ;;
  }

  measure: eje_x_poblacion {
    type: sum
    # Normalizamos el valor para que quepa en tu pantalla (puedes ajustar el divisor)
    sql: (CASE WHEN ${TABLE}.indicator_code = 'SP.POP.TOTL' THEN ${TABLE}.value ELSE NULL END) / 1000000 ;;
  }

  measure: eje_y_gdp {
    type: sum
    sql: (CASE WHEN ${TABLE}.indicator_code = 'NY.GDP.PCAP.CD' THEN ${TABLE}.value ELSE NULL END) / 100 ;;
  }
}
