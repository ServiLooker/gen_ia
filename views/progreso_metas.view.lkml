# The name of this view in Looker is "Progreso Metas"
view: progreso_metas {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `tickets-1161.ODOO.progreso_metas` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Avances" in Explore.

  dimension: id {
    primary_key: yes
    type: string
    sql: GENERATE_UUID() ;;
  }

  dimension: avances {
    type: number
    sql: ${TABLE}.Avances ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_avances {
    type: sum
    sql: ${avances} ;;
    value_format: "0.00\%"}

  measure: average_avances {
    type: average
    sql: ${avances} ;;
    value_format: "0.00\%"}

  dimension: categoria {
    type: string
    sql: ${TABLE}.Categoria ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha ;;
  }

  dimension: metas {
    type: string
    sql: ${TABLE}.Metas ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: observaciones {
    type: string
    sql: ${TABLE}.Observaciones ;;
  }
}
