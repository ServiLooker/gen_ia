# The name of this view in Looker is "Demo Tac"
view: demo_tac {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `proyecto-fabio-tafur-datos.demo_looker.demo_TAC` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Agrupacion" in Explore.

  dimension: agrupacion {
    type: string
    sql: ${TABLE}.AGRUPACION ;;
  }

  dimension: ano {
    type: number
    sql: ${TABLE}.ANO ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ano {
    type: sum
    sql: ${ano} ;;  }
  measure: average_ano {
    type: average
    sql: ${ano} ;;  }

  dimension: cadena {
    type: string
    sql: ${TABLE}.CADENA ;;
  }

  dimension: centro {
    type: number
    sql: ${TABLE}.CENTRO ;;
  }

  dimension: cuenta_descripcion {
    type: string
    sql: ${TABLE}.CUENTA_DESCRIPCION ;;
  }

  dimension: cuenta_texto {
    type: number
    sql: ${TABLE}.CUENTA_TEXTO ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}.MES ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.PAIS ;;
  }

  dimension: ppto_moneda_local {
    type: number
    sql: ${TABLE}.PPTO_MONEDA_LOCAL ;;
  }

  dimension: ppto_usd {
    type: number
    sql: ${TABLE}.PPTO_USD ;;
  }

  dimension: subagrupacion {
    type: string
    sql: ${TABLE}.SUBAGRUPACION ;;
  }

  dimension: tienda {
    type: string
    sql: ${TABLE}.TIENDA ;;
  }

  dimension: tipo_de_sociedad {
    type: string
    sql: ${TABLE}.TIPO_DE_SOCIEDAD ;;
  }

  dimension: valor_real_moneda_local {
    type: number
    sql: ${TABLE}.VALOR_REAL_MONEDA_LOCAL ;;
  }

  dimension: valor_real_usd {
    type: number
    sql: ${TABLE}.VALOR_REAL_USD ;;
  }
  measure: count {
    type: count
  }
}
