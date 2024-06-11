view: casos_geo {
  sql_table_name: `covid_canada.CASOS_GEO`
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

  dimension: cfsauid {
    type: string
    sql: ${TABLE}.CFSAUID ;;
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
    type: string
    sql: ${TABLE}.FSA ;;
  }

  dimension: geometry {
    type: string
    sql: ${TABLE}.geometry ;;
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

  dimension: prname {
    type: string
    sql: ${TABLE}.PRNAME ;;
  }

  dimension: pruid {
    type: string
    sql: ${TABLE}.PRUID ;;
  }

  dimension: reported_date {
    type: string
    sql: ${TABLE}.ReportedDate ;;
  }

  dimension: sourceof_infection {
    type: string
    sql: ${TABLE}.SourceofInfection ;;
  }

  measure: count {
    type: count
    drill_fields: [prname, neighbourhood_name]
  }
}
