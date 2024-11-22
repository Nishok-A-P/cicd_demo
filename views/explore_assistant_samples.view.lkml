# The name of this view in Looker is "Explore Assistant Samples"
view: explore_assistant_samples {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `explore_assistant.explore_assistant_samples` ;;
  drill_fields: [explore_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: explore_id {
    primary_key: yes
    type: string
    description: "Explore id of the explore to pull examples for in a format of -\u003e lookml_model:lookml_explore"
    sql: ${TABLE}.explore_id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Samples" in Explore.

  dimension: samples {
    type: string
    description: "Samples for Explore Assistant Samples displayed in UI. JSON document with listed samples with category, prompt and color keys."
    sql: ${TABLE}.samples ;;
  }
  measure: count {
    type: count
    drill_fields: [explore_id]
  }
}
