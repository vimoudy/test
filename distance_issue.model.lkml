connection: "faa_redshift"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: accidents {
  join: airports {
    type: left_outer
    sql_on: ${airports.code} = ${accidents.airport_code};;
    relationship: many_to_one
  }
}

explore: aircraft {}

explore: aircraft_models {}

explore: airports {
  join: accidents {
    type: left_outer
    sql_on: ${airports.code} ${accidents.airport_code} ;;
    relationship: many_to_one
  }
}

explore: cal454 {}

explore: carriers {}

explore: flights {}

explore: flights_by_day {}

explore: ontime {}

explore: temp2 {}
