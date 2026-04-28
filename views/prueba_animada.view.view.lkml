view: prueba_animada {
  sql_table_name: `bigquery-public-data.ncaa_basketball.mbb_teams_games_sr` ;;

  dimension: anio {
    label: "Año"
    type: number
    sql: ${TABLE}.season ;;
  }

  dimension: nombre_equipo {
    label: "Nombre Equipo"
    type: string
    sql: ${TABLE}.market ;;
  }

  dimension: bandera {
    type: string
    sql: ${nombre_equipo} ;;
    html:
      {% if value == 'Kentucky' %}<img src="https://flagcdn.com/w80/us.png" width="50"/>
      {% elsif value == 'Kansas' %}<img src="https://flagcdn.com/w80/ar.png" width="50"/>
      {% elsif value == 'Duke' %}<img src="https://flagcdn.com/w80/br.png" width="50"/>
      {% else %}<img src="https://flagcdn.com/w80/un.png" width="50"/>
      {% endif %} ;;
  }

  measure: puntos_anotados {
    label: "Puntos (Eje X)"
    type: average
    sql: ${TABLE}.points ;;
  }

  measure: asistencias {
    label: "Asistencias (Eje Y)"
    type: average
    # CAMBIO AQUÍ: assists en lugar de ast
    sql: ${TABLE}.assists ;;
  }
}
