# The name of this view in Looker is "Explore Assistant Examples"
view: explore_assistant_examples {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `explore_assistant.explore_assistant_examples` ;;
  drill_fields: [explore_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: explore_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.explore_id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Examples" in Explore.

  dimension: examples {
    type: string
    sql: ${TABLE}.examples ;;
  }
  measure: count {
    type: count
    drill_fields: [explore_id]
  }
}
