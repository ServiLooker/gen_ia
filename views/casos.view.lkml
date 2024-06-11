view: casos {
  sql_table_name: `covid_canada.casos`
    ;;

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension: age_group {
    type: string
    sql: ${TABLE}.AgeGroup ;;
  }

  dimension: assigned_id {
    type: number
    sql: ${TABLE}.Assigned_ID ;;
  }

  dimension: classification {
    type: string
    sql: ${TABLE}.Classification ;;
  }

  dimension: client_gender {
    type: string
    sql: ${TABLE}.ClientGender ;;
  }

  dimension: currently_hospitalized {
    type: string
    sql: ${TABLE}.CurrentlyHospitalized ;;
  }

  dimension: currently_intubated {
    type: string
    sql: ${TABLE}.CurrentlyIntubated ;;
  }

  dimension: currentlyin_icu {
    type: string
    sql: ${TABLE}.CurrentlyinICU ;;
  }

  dimension: episode_date {
    type: string
    sql: ${TABLE}.EpisodeDate ;;
  }

  dimension: ever_hospitalized {
    type: string
    sql: ${TABLE}.EverHospitalized ;;
  }

  dimension: ever_intubated {
    type: string
    sql: ${TABLE}.EverIntubated ;;
  }

  dimension: everin_icu {
    type: string
    sql: ${TABLE}.EverinICU ;;
  }

  dimension: fsa {
    description: "Fsa Layer"
    sql: ${TABLE}.FSA ;;
    map_layer_name: fsa_layer
  }

  dimension: neighbourhood_name {
    type: string
    sql: ${TABLE}.NeighbourhoodName ;;
  }

  dimension: outbreak_associated {
    type: string
    sql: ${TABLE}.OutbreakAssociated ;;
  }

  dimension: outcome {
    type: string
    sql: ${TABLE}.Outcome ;;
  }

  dimension_group: reported_date {
    type: time
    timeframes: [
      raw,
      date,
      month,
      year
    ]
    datatype: date
    sql: DATE(${TABLE}.ReportedDate) ;;
  }

  dimension: sourceof_infection {
    type: string
    sql: ${TABLE}.SourceofInfection ;;
  }

  measure: count {
    type: count
    drill_fields: [neighbourhood_name, count]
  }

  dimension: busqueda_genero {
    sql: ${client_gender} ;;
    link: {
      label: "Búsqueda dato"
      url: "https://www.google.com/search?q={{value}}"
    }
  }
}
