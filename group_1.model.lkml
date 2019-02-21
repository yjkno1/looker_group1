connection: "looker_db"

# include all the views
include: "*.view"

datagroup: group_1_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: group_1_default_datagroup

explore: ss_customers {
  join: ss_order {
    type: left_outer
    sql_on: ${ss_customers.cid}=${ss_order.cid};;
    relationship: one_to_many
  }
}

explore: ss_items {
  join: ss_order {
    type: left_outer
    sql_on: ${ss_items.pid}=${ss_order.pid};;
    relationship: one_to_many
  }
}

explore: ss_order {}

explore: ss_poi {
  join: ss_order {
    type: left_outer
    sql_on: ${ss_poi.postal_code}=${ss_order.postal_code};;
    relationship: one_to_many
  }
}
