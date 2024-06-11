view: fsa_boundaries {
  sql_table_name: `covid_canada.fsa_boundaries`
    ;;

  dimension: cfsauid {
    type: string
    sql: ${TABLE}.CFSAUID ;;
  }

  dimension: geometry {
    type: string
    sql: ${TABLE}.geometry ;;
  }

  dimension: prname {
    type: string
    sql: ${TABLE}.PRNAME ;;
  }

  dimension: pruid {
    type: string
    sql: ${TABLE}.PRUID ;;
  }

  measure: count {
    type: count
    drill_fields: [prname]
  }
}
