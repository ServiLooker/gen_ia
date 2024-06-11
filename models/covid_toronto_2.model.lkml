connection: "covid_toronto"

# include all the views
include: "/views/**/*.view"


datagroup: covid_toronto_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "720 hour"
}

persist_with: covid_toronto_default_datagroup

explore: casos {}

explore: casos_geo {
  access_filter: {
    field: classification
    user_attribute: usuarios_bi
  }
}

explore: fsa_boundaries {}

# explore: fsa_geo {}

explore: casos_por_fsa {}

map_layer: fsa_layer {
  file: "/toronto.json"
}
