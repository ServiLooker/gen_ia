# Define the database connection to be used for this model.
connection: "connectiontac"

# include all the views
include: "/views/**/*.view.lkml"
include: "/dashboards/*.dashboard"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: demo_looker_genia_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demo_looker_genia_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Demo Looker Genia"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: demo_tac {
  persist_with: demo_looker_genia_default_datagroup
  access_filter: {
    field: pais
    user_attribute: pais
  }
  join: paises {
    sql_on: ${demo_tac.pais}=${paises.pais} ;;
    relationship: many_to_one
    type: left_outer
  }
}

access_grant: acceso_comision {
  user_attribute: id
  allowed_values: ["102","15","23","104","13"]
}

explore: municipios_2 {}

explore: secop_pruebas {}

explore: paises {}
