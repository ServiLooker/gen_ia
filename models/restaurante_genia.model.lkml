connection: "restaurante"

# include all the views
include: "/views/**/*.view"

datagroup: restaurante_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "720 hour"
}

persist_with: restaurante_default_datagroup

# explore: ventasjunio {
#   fields: [-porcentaje_propina]
# }

explore: fulldata {
  hidden: yes
  from: ventasjunio
  join: facturas {
    type: inner
    relationship: many_to_one
    sql_on: ${facturas.pk} = ${fulldata.pk} ;;
  }

  # sql_always_where: {% if fulldata.date_comparison_filter._is_filtered %}
  # {% if fulldata.comparison_type._parameter_value == 'year' %}
  # {% condition fulldata.date_comparison_filter %} ${fechahora_raw} {% endcondition %} OR (${fechahora_raw} >= TIMESTAMP(DATE_ADD(CAST({% date_start fulldata.date_comparison_filter %} AS DATE),INTERVAL -1 YEAR)) AND ${fechahora_raw} <= TIMESTAMP(DATE_ADD(CAST({% date_end fulldata.date_comparison_filter %} AS DATE),INTERVAL -364 DAY)))
  # {% elsif fulldata.comparison_type._parameter_value == 'week' %}
  # {% condition fulldata.date_comparison_filter %} ${fechahora_raw} {% endcondition %} OR (${fechahora_raw} >= TIMESTAMP(DATE_ADD(CAST({% date_start fulldata.date_comparison_filter %} AS DATE),INTERVAL -1 YEAR)) AND ${fechahora_raw} <= TIMESTAMP(DATE_ADD(CAST({% date_end fulldata.date_comparison_filter %} AS DATE),INTERVAL -6 DAY)))
  # {% else %}
  # 1=1
  # {% endif %}
  # {% else %}
  # 1=1
  # {% endif %};;
}

explore: facturas_REPETIDAS {
  hidden: yes
}
