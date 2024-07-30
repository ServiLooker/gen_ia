# Define the database connection to be used for this model.
connection: "odoodatasetbigquery"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: sp_odoo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "36 hour"
}

persist_with: sp_odoo_default_datagroup

explore: tbl_tiempos {
  join: progreso_metas {
    type: left_outer
    relationship: one_to_many
    sql_on: TRIM(${tbl_tiempos.asignado})=${progreso_metas.nombre} ;;
  }
}
