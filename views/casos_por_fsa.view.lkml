view: casos_por_fsa {
  derived_table: {
    sql: SELECT CASOS.CASOS, CASOS.FSA, FSA.geometry FROM (
      SELECT FSA, COUNT(*) AS CASOS FROM `proyecto-brayan-quiroga.covid_canada.casos`
      GROUP BY 1) AS CASOS
      INNER JOIN `proyecto-brayan-quiroga.covid_canada.fsa_boundaries` AS FSA
      ON CASOS.FSA = FSA.CFSAUID
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: casos {
    type: sum
    sql: ${TABLE}.CASOS ;;
  }

  dimension: fsa {
    sql: ${TABLE}.FSA ;;
    map_layer_name: fsa_layer
  }

  dimension: zone_fsa {
    type: string
    tags: ["geojson"]
    sql: ST_ASGEOJSON(${TABLE}.geometry) ;;
  }

  dimension: zone_wkt {
    type: string
    tags: ["wkt"]
    sql: ST_ASTEXT(${TABLE}.geometry) ;;
  }

  set: detail {
    fields: [casos, fsa, zone_fsa]
  }
}
